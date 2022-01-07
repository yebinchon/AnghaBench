; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_programmable = type { i32, i32, %struct.clk_programmable_layout* }
%struct.clk_programmable_layout = type { i32, i64 }

@AT91_PMC_CSSMCK_MCK = common dso_local global i32 0, align 4
@PROG_MAX_RM9200_CSS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_programmable_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_programmable_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_programmable*, align 8
  %7 = alloca %struct.clk_programmable_layout*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw* %10)
  store %struct.clk_programmable* %11, %struct.clk_programmable** %6, align 8
  %12 = load %struct.clk_programmable*, %struct.clk_programmable** %6, align 8
  %13 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %12, i32 0, i32 2
  %14 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %13, align 8
  store %struct.clk_programmable_layout* %14, %struct.clk_programmable_layout** %7, align 8
  %15 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %16 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %20 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @AT91_PMC_CSSMCK_MCK, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %30 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PROG_MAX_RM9200_CSS, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %39 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %37, %33
  %46 = load i32, i32* @AT91_PMC_CSSMCK_MCK, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %27
  %50 = load %struct.clk_programmable*, %struct.clk_programmable** %6, align 8
  %51 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.clk_programmable*, %struct.clk_programmable** %6, align 8
  %54 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @AT91_PMC_PCKR(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @regmap_update_bits(i32 %52, i32 %56, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %42
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AT91_PMC_PCKR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
