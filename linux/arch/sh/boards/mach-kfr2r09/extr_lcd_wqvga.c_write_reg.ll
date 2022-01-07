; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 (i8*, i64)*, i32 (i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i64)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_reg(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %6, align 8
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_sys_bus_ops, %struct.sh_mobile_lcdc_sys_bus_ops* %12, i32 0, i32 1
  %14 = load i32 (i8*, i64)*, i32 (i8*, i64)** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 %14(i8* %15, i64 %16)
  br label %25

18:                                               ; preds = %4
  %19 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %6, align 8
  %20 = getelementptr inbounds %struct.sh_mobile_lcdc_sys_bus_ops, %struct.sh_mobile_lcdc_sys_bus_ops* %19, i32 0, i32 0
  %21 = load i32 (i8*, i64)*, i32 (i8*, i64)** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 %21(i8* %22, i64 %23)
  br label %25

25:                                               ; preds = %18, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
