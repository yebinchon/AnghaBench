; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_programmable = type { i32, i32, %struct.clk_programmable_layout* }
%struct.clk_programmable_layout = type { i32, i64 }

@AT91_PMC_CSSMCK_MCK = common dso_local global i32 0, align 4
@PROG_MAX_RM9200_CSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_programmable_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_programmable_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_programmable*, align 8
  %4 = alloca %struct.clk_programmable_layout*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw* %7)
  store %struct.clk_programmable* %8, %struct.clk_programmable** %3, align 8
  %9 = load %struct.clk_programmable*, %struct.clk_programmable** %3, align 8
  %10 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %9, i32 0, i32 2
  %11 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %10, align 8
  store %struct.clk_programmable_layout* %11, %struct.clk_programmable_layout** %4, align 8
  %12 = load %struct.clk_programmable*, %struct.clk_programmable** %3, align 8
  %13 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_programmable*, %struct.clk_programmable** %3, align 8
  %16 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @AT91_PMC_PCKR(i32 %17)
  %19 = call i32 @regmap_read(i32 %14, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %4, align 8
  %22 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %4, align 8
  %26 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @AT91_PMC_CSSMCK_MCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @PROG_MAX_RM9200_CSS, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %34, %29, %1
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @AT91_PMC_PCKR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
