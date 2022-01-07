; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_readable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32 (i32, i32)*, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_readable(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmap*, %struct.regmap** %4, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %16, %11
  %24 = load %struct.regmap*, %struct.regmap** %4, align 8
  %25 = getelementptr inbounds %struct.regmap, %struct.regmap* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %57

30:                                               ; preds = %23
  %31 = load %struct.regmap*, %struct.regmap** %4, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 1
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = icmp ne i32 (i32, i32)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.regmap*, %struct.regmap** %4, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 1
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load %struct.regmap*, %struct.regmap** %4, align 8
  %40 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 %38(i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %30
  %45 = load %struct.regmap*, %struct.regmap** %4, align 8
  %46 = getelementptr inbounds %struct.regmap, %struct.regmap* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.regmap*, %struct.regmap** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = getelementptr inbounds %struct.regmap, %struct.regmap* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @regmap_check_range_table(%struct.regmap* %50, i32 %51, i64 %54)
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49, %35, %29, %22, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_check_range_table(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
