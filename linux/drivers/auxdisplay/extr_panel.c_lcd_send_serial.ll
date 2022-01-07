; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_send_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_send_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_BIT_CL = common dso_local global i32 0, align 4
@bits = common dso_local global i32 0, align 4
@LCD_BIT_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lcd_send_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_send_serial(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i32, i32* @LCD_BIT_CL, align 4
  %9 = load i32, i32* @bits, align 4
  %10 = call i32 @clear_bit(i32 %8, i32 %9)
  %11 = call i32 (...) @panel_set_bits()
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load i32, i32* @LCD_BIT_DA, align 4
  %17 = load i32, i32* @bits, align 4
  %18 = call i32 @set_bit(i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %7
  %20 = load i32, i32* @LCD_BIT_DA, align 4
  %21 = load i32, i32* @bits, align 4
  %22 = call i32 @clear_bit(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = call i32 (...) @panel_set_bits()
  %25 = call i32 @udelay(i32 2)
  %26 = load i32, i32* @LCD_BIT_CL, align 4
  %27 = load i32, i32* @bits, align 4
  %28 = call i32 @set_bit(i32 %26, i32 %27)
  %29 = call i32 (...) @panel_set_bits()
  %30 = call i32 @udelay(i32 1)
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @panel_set_bits(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
