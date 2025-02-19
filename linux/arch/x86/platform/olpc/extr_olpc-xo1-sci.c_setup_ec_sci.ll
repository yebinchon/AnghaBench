; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_setup_ec_sci.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_setup_ec_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLPC_GPIO_ECSCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"OLPC-ECSCI\00", align 1
@GPIO_NEGATIVE_EDGE_STS = common dso_local global i32 0, align 4
@GPIO_POSITIVE_EDGE_STS = common dso_local global i32 0, align 4
@GPIO_EVENTS_ENABLE = common dso_local global i32 0, align 4
@sci_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_ec_sci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ec_sci() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %4 = call i32 @gpio_request(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %25

9:                                                ; preds = %0
  %10 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %11 = call i32 @gpio_direction_input(i32 %10)
  %12 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %13 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %14 = call i32 @cs5535_gpio_set(i32 %12, i32 %13)
  %15 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %16 = load i32, i32* @GPIO_POSITIVE_EDGE_STS, align 4
  %17 = call i32 @cs5535_gpio_set(i32 %15, i32 %16)
  %18 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %19 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %20 = call i32 @cs5535_gpio_set(i32 %18, i32 %19)
  %21 = load i32, i32* @OLPC_GPIO_ECSCI, align 4
  %22 = call i32 @cs5535_gpio_setup_event(i32 %21, i32 7, i32 1)
  %23 = load i32, i32* @sci_irq, align 4
  %24 = call i32 @cs5535_pic_unreqz_select_high(i32 7, i32 %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %9, %7
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

declare dso_local i32 @cs5535_gpio_setup_event(i32, i32, i32) #1

declare dso_local i32 @cs5535_pic_unreqz_select_high(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
