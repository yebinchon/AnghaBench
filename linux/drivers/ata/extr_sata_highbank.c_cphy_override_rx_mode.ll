; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_cphy_override_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_cphy_override_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@port_data = common dso_local global %struct.TYPE_2__* null, align 8
@CPHY_RX_INPUT_STS = common dso_local global i64 0, align 8
@SPHY_LANE = common dso_local global i64 0, align 8
@CPHY_SATA_RX_OVERRIDE = common dso_local global i32 0, align 4
@CPHY_RX_OVERRIDE = common dso_local global i64 0, align 8
@CPHY_SATA_DPLL_MODE = common dso_local global i32 0, align 4
@CPHY_SATA_DPLL_SHIFT = common dso_local global i32 0, align 4
@CPHY_SATA_DPLL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @cphy_override_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cphy_override_rx_mode(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @CPHY_RX_INPUT_STS, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SPHY_LANE, align 8
  %16 = mul i64 %14, %15
  %17 = add i64 %13, %16
  %18 = call i32 @combo_phy_read(i64 %12, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @CPHY_SATA_RX_OVERRIDE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SPHY_LANE, align 8
  %27 = mul i64 %25, %26
  %28 = add i64 %24, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @combo_phy_write(i64 %23, i64 %28, i32 %29)
  %31 = load i32, i32* @CPHY_SATA_RX_OVERRIDE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @SPHY_LANE, align 8
  %38 = mul i64 %36, %37
  %39 = add i64 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @combo_phy_write(i64 %34, i64 %39, i32 %40)
  %42 = load i32, i32* @CPHY_SATA_DPLL_MODE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CPHY_SATA_DPLL_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @SPHY_LANE, align 8
  %55 = mul i64 %53, %54
  %56 = add i64 %52, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @combo_phy_write(i64 %51, i64 %56, i32 %57)
  %59 = load i32, i32* @CPHY_SATA_DPLL_RESET, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @SPHY_LANE, align 8
  %66 = mul i64 %64, %65
  %67 = add i64 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @combo_phy_write(i64 %62, i64 %67, i32 %68)
  %70 = load i32, i32* @CPHY_SATA_DPLL_RESET, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @SPHY_LANE, align 8
  %78 = mul i64 %76, %77
  %79 = add i64 %75, %78
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @combo_phy_write(i64 %74, i64 %79, i32 %80)
  %82 = call i32 @msleep(i32 15)
  ret void
}

declare dso_local i32 @combo_phy_read(i64, i64) #1

declare dso_local i32 @combo_phy_write(i64, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
