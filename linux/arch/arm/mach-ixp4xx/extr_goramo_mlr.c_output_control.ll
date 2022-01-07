; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_output_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_output_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_SCL = common dso_local global i32 0, align 4
@GPIO_SDA = common dso_local global i32 0, align 4
@control_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_control() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GPIO_SCL, align 4
  %3 = call i32 @gpio_direction_output(i32 %2, i32 1)
  %4 = load i32, i32* @GPIO_SDA, align 4
  %5 = call i32 @gpio_direction_output(i32 %4, i32 1)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = call i32 @set_scl(i32 0)
  %11 = load i32, i32* @control_value, align 4
  %12 = load i32, i32* %1, align 4
  %13 = ashr i32 128, %12
  %14 = and i32 %11, %13
  %15 = call i32 @set_sda(i32 %14)
  %16 = call i32 @set_scl(i32 1)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %6
  %21 = call i32 @set_str(i32 1)
  %22 = call i32 @set_str(i32 0)
  %23 = call i32 @set_scl(i32 0)
  %24 = call i32 @set_sda(i32 1)
  %25 = call i32 @set_scl(i32 1)
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @set_scl(i32) #1

declare dso_local i32 @set_sda(i32) #1

declare dso_local i32 @set_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
