; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_drop_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_drop_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32 (i32)*, %struct.TYPE_2__*, i32 (i32)* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regcache_drop_region(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = getelementptr inbounds %struct.regmap, %struct.regmap* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = getelementptr inbounds %struct.regmap, %struct.regmap* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.regmap*, i32, i32)**
  %19 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.regmap*, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %13
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 3
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = getelementptr inbounds %struct.regmap, %struct.regmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @trace_regcache_drop_region(%struct.regmap* %32, i32 %33, i32 %34)
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.regmap*, i32, i32)**
  %41 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %40, align 8
  %42 = load %struct.regmap*, %struct.regmap** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %41(%struct.regmap* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.regmap*, %struct.regmap** %5, align 8
  %47 = getelementptr inbounds %struct.regmap, %struct.regmap* %46, i32 0, i32 1
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.regmap*, %struct.regmap** %5, align 8
  %50 = getelementptr inbounds %struct.regmap, %struct.regmap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @trace_regcache_drop_region(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
