; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_hx4700.c_hx4700_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_hx4700.c_hx4700_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_lcd_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plat_lcd_data*, i32)* @hx4700_lcd_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hx4700_lcd_set_power(%struct.plat_lcd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.plat_lcd_data*, align 8
  %4 = alloca i32, align 4
  store %struct.plat_lcd_data* %0, %struct.plat_lcd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (...) @sony_lcd_init()
  br label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @sony_lcd_off()
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @sony_lcd_init(...) #1

declare dso_local i32 @sony_lcd_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
