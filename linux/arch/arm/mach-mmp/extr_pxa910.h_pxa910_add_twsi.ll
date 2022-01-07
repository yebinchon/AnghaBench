; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pxa910.h_pxa910_add_twsi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pxa910.h_pxa910_add_twsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_device_desc = type { i32 }
%struct.i2c_pxa_platform_data = type { i32 }
%struct.i2c_board_info = type { i32 }

@pxa910_device_twsi0 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@pxa910_device_twsi1 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.i2c_pxa_platform_data*, %struct.i2c_board_info*, i32)* @pxa910_add_twsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa910_add_twsi(i32 %0, %struct.i2c_pxa_platform_data* %1, %struct.i2c_board_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_pxa_platform_data*, align 8
  %8 = alloca %struct.i2c_board_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pxa_device_desc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.i2c_pxa_platform_data* %1, %struct.i2c_pxa_platform_data** %7, align 8
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pxa_device_desc* null, %struct.pxa_device_desc** %10, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %15 [
    i32 0, label %13
    i32 1, label %14
  ]

13:                                               ; preds = %4
  store %struct.pxa_device_desc* @pxa910_device_twsi0, %struct.pxa_device_desc** %10, align 8
  br label %18

14:                                               ; preds = %4
  store %struct.pxa_device_desc* @pxa910_device_twsi1, %struct.pxa_device_desc** %10, align 8
  br label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.i2c_board_info*, %struct.i2c_board_info** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @i2c_register_board_info(i32 %19, %struct.i2c_board_info* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.pxa_device_desc*, %struct.pxa_device_desc** %10, align 8
  %29 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %30 = call i32 @pxa_register_device(%struct.pxa_device_desc* %28, %struct.i2c_pxa_platform_data* %29, i32 4)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %25, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_register_board_info(i32, %struct.i2c_board_info*, i32) #1

declare dso_local i32 @pxa_register_device(%struct.pxa_device_desc*, %struct.i2c_pxa_platform_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
