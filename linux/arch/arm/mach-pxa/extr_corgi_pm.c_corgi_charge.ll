; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_charge.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SHARPSL_SUSPENDED = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_ON = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_UKN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @corgi_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_charge(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = call i64 (...) @machine_is_corgi()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_pm, i32 0, i32 0), align 4
  %10 = load i32, i32* @SHARPSL_SUSPENDED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* @CORGI_GPIO_CHRG_ON, align 4
  %15 = call i32 @gpio_set_value(i32 %14, i32 0)
  %16 = load i32, i32* @CORGI_GPIO_CHRG_UKN, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 1)
  br label %23

18:                                               ; preds = %8, %5
  %19 = load i32, i32* @CORGI_GPIO_CHRG_ON, align 4
  %20 = call i32 @gpio_set_value(i32 %19, i32 1)
  %21 = load i32, i32* @CORGI_GPIO_CHRG_UKN, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %13
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @CORGI_GPIO_CHRG_ON, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 0)
  %27 = load i32, i32* @CORGI_GPIO_CHRG_UKN, align 4
  %28 = call i32 @gpio_set_value(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @machine_is_corgi(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
