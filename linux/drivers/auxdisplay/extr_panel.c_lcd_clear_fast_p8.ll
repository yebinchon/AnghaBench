; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_clear_fast_p8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_clear_fast_p8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32 }

@pprt_lock = common dso_local global i32 0, align 4
@pprt = common dso_local global i32 0, align 4
@LCD_BIT_E = common dso_local global i32 0, align 4
@bits = common dso_local global i32 0, align 4
@LCD_BIT_RS = common dso_local global i32 0, align 4
@LCD_BIT_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*)* @lcd_clear_fast_p8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_clear_fast_p8(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @pprt_lock)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %8 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %11 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = icmp slt i32 %6, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %5
  %16 = load i32, i32* @pprt, align 4
  %17 = call i32 @w_dtr(i32 %16, i8 signext 32)
  %18 = call i32 @udelay(i32 20)
  %19 = load i32, i32* @LCD_BIT_E, align 4
  %20 = load i32, i32* @bits, align 4
  %21 = call i32 @set_bit(i32 %19, i32 %20)
  %22 = load i32, i32* @LCD_BIT_RS, align 4
  %23 = load i32, i32* @bits, align 4
  %24 = call i32 @set_bit(i32 %22, i32 %23)
  %25 = load i32, i32* @LCD_BIT_RW, align 4
  %26 = load i32, i32* @bits, align 4
  %27 = call i32 @clear_bit(i32 %25, i32 %26)
  %28 = call i32 (...) @set_ctrl_bits()
  %29 = call i32 @udelay(i32 40)
  %30 = load i32, i32* @LCD_BIT_E, align 4
  %31 = load i32, i32* @bits, align 4
  %32 = call i32 @clear_bit(i32 %30, i32 %31)
  %33 = call i32 (...) @set_ctrl_bits()
  %34 = call i32 @udelay(i32 45)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5

38:                                               ; preds = %5
  %39 = call i32 @spin_unlock_irq(i32* @pprt_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @w_dtr(i32, i8 signext) #1

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
