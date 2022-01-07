; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@GPIO_PTF4 = common dso_local global i32 0, align 4
@GPIO_PTE4 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"KFR2R09 WQVGA LCD Module detected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfr2r09_lcd_setup(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %6 = load i32, i32* @GPIO_PTF4, align 4
  %7 = call i32 @gpio_set_value(i32 %6, i32 0)
  %8 = load i32, i32* @GPIO_PTE4, align 4
  %9 = call i32 @gpio_set_value(i32 %8, i32 0)
  %10 = load i32, i32* @GPIO_PTF4, align 4
  %11 = call i32 @gpio_set_value(i32 %10, i32 1)
  %12 = call i32 @udelay(i32 1100)
  %13 = load i32, i32* @GPIO_PTE4, align 4
  %14 = call i32 @gpio_set_value(i32 %13, i32 1)
  %15 = call i32 @udelay(i32 10)
  %16 = load i32, i32* @GPIO_PTF4, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = call i32 @mdelay(i32 20)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %21 = call i32 @read_device_code(i8* %19, %struct.sh_mobile_lcdc_sys_bus_ops* %20)
  %22 = icmp ne i32 %21, 19010839
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %2
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %5, align 8
  %30 = call i32 @display_on(i8* %28, %struct.sh_mobile_lcdc_sys_bus_ops* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_device_code(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @display_on(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
