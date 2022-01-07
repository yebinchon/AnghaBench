; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_txcsum_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_txcsum_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT7620A_CDMA_CSG_CFG = common dso_local global i32 0, align 4
@CDMA_ICS_EN = common dso_local global i32 0, align 4
@CDMA_UCS_EN = common dso_local global i32 0, align 4
@CDMA_TCS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mt7620_txcsum_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7620_txcsum_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* @MT7620A_CDMA_CSG_CFG, align 4
  %7 = call i32 @fe_r32(i32 %6)
  %8 = load i32, i32* @CDMA_ICS_EN, align 4
  %9 = load i32, i32* @CDMA_UCS_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CDMA_TCS_EN, align 4
  %12 = or i32 %10, %11
  %13 = or i32 %7, %12
  %14 = load i32, i32* @MT7620A_CDMA_CSG_CFG, align 4
  %15 = call i32 @fe_w32(i32 %13, i32 %14)
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @MT7620A_CDMA_CSG_CFG, align 4
  %18 = call i32 @fe_r32(i32 %17)
  %19 = load i32, i32* @CDMA_ICS_EN, align 4
  %20 = load i32, i32* @CDMA_UCS_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CDMA_TCS_EN, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %18, %24
  %26 = load i32, i32* @MT7620A_CDMA_CSG_CFG, align 4
  %27 = call i32 @fe_w32(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @fe_w32(i32, i32) #1

declare dso_local i32 @fe_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
