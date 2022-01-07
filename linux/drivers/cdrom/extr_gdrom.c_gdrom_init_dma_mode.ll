; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_init_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_init_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDROM_ERROR_REG = common dso_local global i32 0, align 4
@GDROM_INTSEC_REG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@GDROM_DMA_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@GDROM_DMA_WAIT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gdrom_init_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_init_dma_mode() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GDROM_ERROR_REG, align 4
  %3 = call i32 @__raw_writeb(i32 19, i32 %2)
  %4 = load i32, i32* @GDROM_INTSEC_REG, align 4
  %5 = call i32 @__raw_writeb(i32 34, i32 %4)
  %6 = call i32 (...) @gdrom_wait_clrbusy()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %24

11:                                               ; preds = %0
  %12 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %13 = call i32 @__raw_writeb(i32 239, i32 %12)
  %14 = call i32 (...) @gdrom_wait_busy_sleeps()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @GDROM_DMA_ACCESS_CTRL_REG, align 4
  %21 = call i32 @__raw_writel(i32 -2008858497, i32 %20)
  %22 = load i32, i32* @GDROM_DMA_WAIT_REG, align 4
  %23 = call i32 @__raw_writel(i32 9, i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %19, %16, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @gdrom_wait_clrbusy(...) #1

declare dso_local i32 @gdrom_wait_busy_sleeps(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
