; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c__mt7620_mii_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c__mt7620_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7620_gsw = type { i32 }

@GSW_MDIO_ACCESS = common dso_local global i32 0, align 4
@GSW_MDIO_START = common dso_local global i32 0, align 4
@GSW_MDIO_WRITE = common dso_local global i32 0, align 4
@GSW_MDIO_REG_SHIFT = common dso_local global i32 0, align 4
@GSW_MDIO_ADDR_SHIFT = common dso_local global i32 0, align 4
@MT7620A_GSW_REG_PIAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mt7620_mii_write(%struct.mt7620_gsw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7620_gsw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7620_gsw* %0, %struct.mt7620_gsw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %11 = call i64 @mt7620_mii_busy_wait(%struct.mt7620_gsw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %40

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 65535
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %18 = load i32, i32* @GSW_MDIO_ACCESS, align 4
  %19 = load i32, i32* @GSW_MDIO_START, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GSW_MDIO_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GSW_MDIO_REG_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GSW_MDIO_ADDR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MT7620A_GSW_REG_PIAC, align 4
  %34 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %17, i32 %32, i32 %33)
  %35 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %36 = call i64 @mt7620_mii_busy_wait(%struct.mt7620_gsw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %40

39:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %38, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @mt7620_mii_busy_wait(%struct.mt7620_gsw*) #1

declare dso_local i32 @mtk_switch_w32(%struct.mt7620_gsw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
