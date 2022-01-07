; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c_sifive_fu540_prci_wrpll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c_sifive_fu540_prci_wrpll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.__prci_clock = type { %struct.__prci_data*, %struct.__prci_wrpll_data* }
%struct.__prci_data = type { i32 }
%struct.__prci_wrpll_data = type { i32 (%struct.__prci_data.0*)*, i32, i32 (%struct.__prci_data.1*)* }
%struct.__prci_data.0 = type opaque
%struct.__prci_data.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @sifive_fu540_prci_wrpll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_fu540_prci_wrpll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.__prci_clock*, align 8
  %9 = alloca %struct.__prci_wrpll_data*, align 8
  %10 = alloca %struct.__prci_data*, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.__prci_clock* @clk_hw_to_prci_clock(%struct.clk_hw* %12)
  store %struct.__prci_clock* %13, %struct.__prci_clock** %8, align 8
  %14 = load %struct.__prci_clock*, %struct.__prci_clock** %8, align 8
  %15 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %14, i32 0, i32 1
  %16 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %15, align 8
  store %struct.__prci_wrpll_data* %16, %struct.__prci_wrpll_data** %9, align 8
  %17 = load %struct.__prci_clock*, %struct.__prci_clock** %8, align 8
  %18 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %17, i32 0, i32 0
  %19 = load %struct.__prci_data*, %struct.__prci_data** %18, align 8
  store %struct.__prci_data* %19, %struct.__prci_data** %10, align 8
  %20 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %21 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @wrpll_configure_for_rate(i32* %21, i64 %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %31 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %30, i32 0, i32 2
  %32 = load i32 (%struct.__prci_data.1*)*, i32 (%struct.__prci_data.1*)** %31, align 8
  %33 = icmp ne i32 (%struct.__prci_data.1*)* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %36 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %35, i32 0, i32 2
  %37 = load i32 (%struct.__prci_data.1*)*, i32 (%struct.__prci_data.1*)** %36, align 8
  %38 = load %struct.__prci_data*, %struct.__prci_data** %10, align 8
  %39 = bitcast %struct.__prci_data* %38 to %struct.__prci_data.1*
  %40 = call i32 %37(%struct.__prci_data.1* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.__prci_data*, %struct.__prci_data** %10, align 8
  %43 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %44 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %45 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %44, i32 0, i32 1
  %46 = call i32 @__prci_wrpll_write_cfg(%struct.__prci_data* %42, %struct.__prci_wrpll_data* %43, i32* %45)
  %47 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %48 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %47, i32 0, i32 1
  %49 = call i32 @wrpll_calc_max_lock_us(i32* %48)
  %50 = call i32 @udelay(i32 %49)
  %51 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %52 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %51, i32 0, i32 0
  %53 = load i32 (%struct.__prci_data.0*)*, i32 (%struct.__prci_data.0*)** %52, align 8
  %54 = icmp ne i32 (%struct.__prci_data.0*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %9, align 8
  %57 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %56, i32 0, i32 0
  %58 = load i32 (%struct.__prci_data.0*)*, i32 (%struct.__prci_data.0*)** %57, align 8
  %59 = load %struct.__prci_data*, %struct.__prci_data** %10, align 8
  %60 = bitcast %struct.__prci_data* %59 to %struct.__prci_data.0*
  %61 = call i32 %58(%struct.__prci_data.0* %60)
  br label %62

62:                                               ; preds = %55, %41
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.__prci_clock* @clk_hw_to_prci_clock(%struct.clk_hw*) #1

declare dso_local i32 @wrpll_configure_for_rate(i32*, i64, i64) #1

declare dso_local i32 @__prci_wrpll_write_cfg(%struct.__prci_data*, %struct.__prci_wrpll_data*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wrpll_calc_max_lock_us(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
