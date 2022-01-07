; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_cache_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_cache_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32 (i32)*, i64, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_cache_only(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.regmap*, %struct.regmap** %3, align 8
  %6 = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 4
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.regmap*, %struct.regmap** %3, align 8
  %9 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 %7(i32 %10)
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ false, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.regmap*, %struct.regmap** %3, align 8
  %25 = getelementptr inbounds %struct.regmap, %struct.regmap* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.regmap*, %struct.regmap** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @trace_regmap_cache_only(%struct.regmap* %26, i32 %27)
  %29 = load %struct.regmap*, %struct.regmap** %3, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 2
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %31(i32 %34)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_regmap_cache_only(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
