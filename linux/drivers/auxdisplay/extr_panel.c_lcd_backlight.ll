; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.charlcd = type { i32 }

@lcd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PIN_NONE = common dso_local global i64 0, align 8
@pprt_lock = common dso_local global i32 0, align 4
@LCD_BIT_BL = common dso_local global i32 0, align 4
@bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i32)* @lcd_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_backlight(%struct.charlcd* %0, i32 %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0, i32 0), align 8
  %6 = load i64, i64* @PIN_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %24

9:                                                ; preds = %2
  %10 = call i32 @spin_lock_irq(i32* @pprt_lock)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @LCD_BIT_BL, align 4
  %15 = load i32, i32* @bits, align 4
  %16 = call i32 @set_bit(i32 %14, i32 %15)
  br label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @LCD_BIT_BL, align 4
  %19 = load i32, i32* @bits, align 4
  %20 = call i32 @clear_bit(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = call i32 (...) @panel_set_bits()
  %23 = call i32 @spin_unlock_irq(i32* @pprt_lock)
  br label %24

24:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @panel_set_bits(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
