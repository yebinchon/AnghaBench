; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_cphy_override_tx_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_cphy_override_tx_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@port_data = common dso_local global %struct.TYPE_2__* null, align 8
@CPHY_TX_INPUT_STS = common dso_local global i64 0, align 8
@SPHY_LANE = common dso_local global i64 0, align 8
@CPHY_SATA_TX_OVERRIDE = common dso_local global i32 0, align 4
@CPHY_TX_OVERRIDE = common dso_local global i64 0, align 8
@CPHY_SATA_TX_ATTEN_SHIFT = common dso_local global i32 0, align 4
@CPHY_SATA_TX_ATTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @cphy_override_tx_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cphy_override_tx_attenuation(i64 %0, i32 %1) #0 {
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
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @CPHY_TX_INPUT_STS, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @SPHY_LANE, align 8
  %21 = mul i64 %19, %20
  %22 = add i64 %18, %21
  %23 = call i32 @combo_phy_read(i64 %17, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CPHY_SATA_TX_OVERRIDE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @CPHY_TX_OVERRIDE, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SPHY_LANE, align 8
  %32 = mul i64 %30, %31
  %33 = add i64 %29, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @combo_phy_write(i64 %28, i64 %33, i32 %34)
  %36 = load i32, i32* @CPHY_SATA_TX_OVERRIDE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @CPHY_TX_OVERRIDE, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @SPHY_LANE, align 8
  %43 = mul i64 %41, %42
  %44 = add i64 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @combo_phy_write(i64 %39, i64 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CPHY_SATA_TX_ATTEN_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @CPHY_SATA_TX_ATTEN, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @CPHY_TX_OVERRIDE, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @SPHY_LANE, align 8
  %58 = mul i64 %56, %57
  %59 = add i64 %55, %58
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @combo_phy_write(i64 %54, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @combo_phy_read(i64, i64) #1

declare dso_local i32 @combo_phy_write(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
