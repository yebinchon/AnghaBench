; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_lcd_set_visual.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_lcd_set_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@ASSABET_BCR_LCD_12RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @assabet_lcd_set_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assabet_lcd_set_visual(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = call i64 (...) @machine_is_assabet()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @ASSABET_BCR_LCD_12RGB, align 4
  %15 = call i32 @ASSABET_BCR_set(i32 %14)
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @ASSABET_BCR_LCD_12RGB, align 4
  %18 = call i32 @ASSABET_BCR_clear(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

declare dso_local i64 @machine_is_assabet(...) #1

declare dso_local i32 @ASSABET_BCR_set(i32) #1

declare dso_local i32 @ASSABET_BCR_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
