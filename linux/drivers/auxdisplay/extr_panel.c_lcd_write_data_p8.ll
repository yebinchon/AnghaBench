; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_write_data_p8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_write_data_p8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32 }

@pprt_lock = common dso_local global i32 0, align 4
@pprt = common dso_local global i32 0, align 4
@LCD_BIT_E = common dso_local global i32 0, align 4
@bits = common dso_local global i32 0, align 4
@LCD_BIT_RS = common dso_local global i32 0, align 4
@LCD_BIT_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i32)* @lcd_write_data_p8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_write_data_p8(%struct.charlcd* %0, i32 %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @spin_lock_irq(i32* @pprt_lock)
  %6 = load i32, i32* @pprt, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @w_dtr(i32 %6, i32 %7)
  %9 = call i32 @udelay(i32 20)
  %10 = load i32, i32* @LCD_BIT_E, align 4
  %11 = load i32, i32* @bits, align 4
  %12 = call i32 @set_bit(i32 %10, i32 %11)
  %13 = load i32, i32* @LCD_BIT_RS, align 4
  %14 = load i32, i32* @bits, align 4
  %15 = call i32 @set_bit(i32 %13, i32 %14)
  %16 = load i32, i32* @LCD_BIT_RW, align 4
  %17 = load i32, i32* @bits, align 4
  %18 = call i32 @clear_bit(i32 %16, i32 %17)
  %19 = call i32 (...) @set_ctrl_bits()
  %20 = call i32 @udelay(i32 40)
  %21 = load i32, i32* @LCD_BIT_E, align 4
  %22 = load i32, i32* @bits, align 4
  %23 = call i32 @clear_bit(i32 %21, i32 %22)
  %24 = call i32 (...) @set_ctrl_bits()
  %25 = call i32 @udelay(i32 45)
  %26 = call i32 @spin_unlock_irq(i32* @pprt_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @w_dtr(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_ctrl_bits(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
