; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_read_cr.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_read_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATA_PHY_ASIC_STAT = common dso_local global i32 0, align 4
@CR_READ_ENABLE = common dso_local global i16 0, align 2
@SATA_PHY_ASIC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16)* @read_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @read_cr(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = load i32, i32* @SATA_PHY_ASIC_STAT, align 4
  %5 = call i32 @writel(i16 zeroext %3, i32 %4)
  %6 = call i32 (...) @wait_cr_ack()
  %7 = load i16, i16* @CR_READ_ENABLE, align 2
  %8 = load i32, i32* @SATA_PHY_ASIC_DATA, align 4
  %9 = call i32 @writel(i16 zeroext %7, i32 %8)
  %10 = call i32 (...) @wait_cr_ack()
  %11 = load i32, i32* @SATA_PHY_ASIC_STAT, align 4
  %12 = call zeroext i16 @readl(i32 %11)
  ret i16 %12
}

declare dso_local i32 @writel(i16 zeroext, i32) #1

declare dso_local i32 @wait_cr_ack(...) #1

declare dso_local zeroext i16 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
