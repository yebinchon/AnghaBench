; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/board/zyxel/nbg460n/extr_nbg460n.c__machine_restart.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/board/zyxel/nbg460n/extr_nbg460n.c__machine_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESET_MODULE_FULL_CHIP = common dso_local global i32 0, align 4
@RESET_MODULE_DDR = common dso_local global i32 0, align 4
@AR71XX_RESET_BASE = common dso_local global i64 0, align 8
@AR91XX_RESET_REG_RESET_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_machine_restart() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load i32, i32* @RESET_MODULE_FULL_CHIP, align 4
  %3 = load i32, i32* @RESET_MODULE_DDR, align 4
  %4 = or i32 %2, %3
  %5 = load i64, i64* @AR71XX_RESET_BASE, align 8
  %6 = load i64, i64* @AR91XX_RESET_REG_RESET_MODULE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @KSEG1ADDR(i64 %7)
  %9 = call i32 @writel(i32 %4, i32 %8)
  %10 = load i64, i64* @AR71XX_RESET_BASE, align 8
  %11 = load i64, i64* @AR91XX_RESET_REG_RESET_MODULE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @KSEG1ADDR(i64 %12)
  %14 = call i32 @readl(i32 %13)
  br label %1
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @KSEG1ADDR(i64) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
