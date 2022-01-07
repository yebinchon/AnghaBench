; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_volatile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 (i32, i32)*, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_volatile(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmap*, %struct.regmap** %4, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @regmap_readable(%struct.regmap* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %11, %2
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32, i32)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.regmap*, %struct.regmap** %4, align 8
  %27 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %25(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %17
  %32 = load %struct.regmap*, %struct.regmap** %4, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.regmap*, %struct.regmap** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.regmap*, %struct.regmap** %4, align 8
  %40 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regmap_check_range_table(%struct.regmap* %37, i32 %38, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.regmap*, %struct.regmap** %4, align 8
  %45 = getelementptr inbounds %struct.regmap, %struct.regmap* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %36, %22, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_readable(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_check_range_table(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
