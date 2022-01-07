; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@REGCACHE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regcache_write(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.regmap*, %struct.regmap** %5, align 8
  %9 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REGCACHE_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @regmap_volatile(%struct.regmap* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %14
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.regmap*, i32, i32)**
  %32 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %31, align 8
  %33 = load %struct.regmap*, %struct.regmap** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.regmap* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %26, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @regmap_volatile(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
