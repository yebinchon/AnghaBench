; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_readable_noinc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_readable_noinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 (i32, i32)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_readable_noinc(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmap*, %struct.regmap** %4, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.regmap*, %struct.regmap** %4, align 8
  %15 = getelementptr inbounds %struct.regmap, %struct.regmap* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %13(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.regmap*, %struct.regmap** %4, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @regmap_check_range_table(%struct.regmap* %25, i32 %26, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %24, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_check_range_table(%struct.regmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
