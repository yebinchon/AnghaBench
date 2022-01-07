; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_read_device_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_read_device_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.sh_mobile_lcdc_sys_bus_ops*)* @read_device_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_device_code(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %8 = call i32 @write_reg(i8* %6, %struct.sh_mobile_lcdc_sys_bus_ops* %7, i32 0, i32 176)
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %11 = call i32 @write_reg(i8* %9, %struct.sh_mobile_lcdc_sys_bus_ops* %10, i32 1, i32 0)
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %14 = call i32 @write_reg(i8* %12, %struct.sh_mobile_lcdc_sys_bus_ops* %13, i32 0, i32 177)
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %17 = call i32 @write_reg(i8* %15, %struct.sh_mobile_lcdc_sys_bus_ops* %16, i32 1, i32 0)
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %20 = call i32 @write_reg(i8* %18, %struct.sh_mobile_lcdc_sys_bus_ops* %19, i32 0, i32 191)
  %21 = call i32 @mdelay(i32 50)
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %24 = call i32 @read_reg(i8* %22, %struct.sh_mobile_lcdc_sys_bus_ops* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %27 = call i32 @read_reg(i8* %25, %struct.sh_mobile_lcdc_sys_bus_ops* %26)
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 24
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %33 = call i32 @read_reg(i8* %31, %struct.sh_mobile_lcdc_sys_bus_ops* %32)
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %5, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %41 = call i32 @read_reg(i8* %39, %struct.sh_mobile_lcdc_sys_bus_ops* %40)
  %42 = and i32 %41, 255
  %43 = shl i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %49 = call i32 @read_reg(i8* %47, %struct.sh_mobile_lcdc_sys_bus_ops* %48)
  %50 = and i32 %49, 255
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %5, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @write_reg(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_reg(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
