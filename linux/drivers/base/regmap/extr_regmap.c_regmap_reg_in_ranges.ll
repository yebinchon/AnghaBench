; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_reg_in_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_reg_in_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_range = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_reg_in_ranges(i32 %0, %struct.regmap_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap_range*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.regmap_range* %1, %struct.regmap_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.regmap_range*, %struct.regmap_range** %6, align 8
  store %struct.regmap_range* %10, %struct.regmap_range** %8, align 8
  br label %11

11:                                               ; preds = %22, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.regmap_range*, %struct.regmap_range** %8, align 8
  %18 = call i64 @regmap_reg_in_range(i32 %16, %struct.regmap_range* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %28

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load %struct.regmap_range*, %struct.regmap_range** %8, align 8
  %26 = getelementptr inbounds %struct.regmap_range, %struct.regmap_range* %25, i32 1
  store %struct.regmap_range* %26, %struct.regmap_range** %8, align 8
  br label %11

27:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @regmap_reg_in_range(i32, %struct.regmap_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
