; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_h3600.c_h3600_lcd_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_h3600.c_h3600_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H3XXX_EGPIO_LCD_ON = common dso_local global i32 0, align 4
@H3600_EGPIO_LCD_PCI = common dso_local global i32 0, align 4
@H3600_EGPIO_LCD_5V_ON = common dso_local global i32 0, align 4
@H3600_EGPIO_LVDD_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @h3600_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3600_lcd_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @h3600_lcd_request()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load i32, i32* @H3XXX_EGPIO_LCD_ON, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @gpio_direction_output(i32 %7, i32 %8)
  %10 = load i32, i32* @H3600_EGPIO_LCD_PCI, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @gpio_direction_output(i32 %10, i32 %11)
  %13 = load i32, i32* @H3600_EGPIO_LCD_5V_ON, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @gpio_direction_output(i32 %13, i32 %14)
  %16 = load i32, i32* @H3600_EGPIO_LVDD_ON, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @gpio_direction_output(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @h3600_lcd_request(...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
