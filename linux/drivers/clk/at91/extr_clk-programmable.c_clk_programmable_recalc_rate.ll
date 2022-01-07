; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_programmable = type { i32, i32, %struct.clk_programmable_layout* }
%struct.clk_programmable_layout = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_programmable_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_programmable_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_programmable*, align 8
  %6 = alloca %struct.clk_programmable_layout*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw* %9)
  store %struct.clk_programmable* %10, %struct.clk_programmable** %5, align 8
  %11 = load %struct.clk_programmable*, %struct.clk_programmable** %5, align 8
  %12 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %11, i32 0, i32 2
  %13 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %12, align 8
  store %struct.clk_programmable_layout* %13, %struct.clk_programmable_layout** %6, align 8
  %14 = load %struct.clk_programmable*, %struct.clk_programmable** %5, align 8
  %15 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_programmable*, %struct.clk_programmable** %5, align 8
  %18 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @AT91_PMC_PCKR(i32 %19)
  %21 = call i32 @regmap_read(i32 %16, i32 %20, i32* %7)
  %22 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %6, align 8
  %23 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @PROG_PRES(%struct.clk_programmable_layout* %28, i32 %29)
  %31 = add i64 %30, 1
  %32 = udiv i64 %27, %31
  store i64 %32, i64* %8, align 8
  br label %39

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @PROG_PRES(%struct.clk_programmable_layout* %35, i32 %36)
  %38 = lshr i64 %34, %37
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i64, i64* %8, align 8
  ret i64 %40
}

declare dso_local %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @AT91_PMC_PCKR(i32) #1

declare dso_local i64 @PROG_PRES(%struct.clk_programmable_layout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
