; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_tosa.c_tosa_irda_startup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_tosa.c_tosa_irda_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@TOSA_GPIO_IRDA_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"IrDA TX\00", align 1
@TOSA_GPIO_IR_POWERDWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"IrDA powerdown\00", align 1
@IR_SIRMODE = common dso_local global i32 0, align 4
@IR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tosa_irda_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_irda_startup(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @TOSA_GPIO_IRDA_TX, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load i32, i32* @TOSA_GPIO_IRDA_TX, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = load i32, i32* @TOSA_GPIO_IR_POWERDWN, align 4
  %18 = call i32 @gpio_request(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load i32, i32* @TOSA_GPIO_IR_POWERDWN, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* @IR_SIRMODE, align 4
  %31 = load i32, i32* @IR_OFF, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @tosa_irda_transceiver_mode(%struct.device* %29, i32 %32)
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32, i32* @TOSA_GPIO_IR_POWERDWN, align 4
  %36 = call i32 @gpio_free(i32 %35)
  br label %37

37:                                               ; preds = %34, %21
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* @TOSA_GPIO_IRDA_TX, align 4
  %40 = call i32 @gpio_free(i32 %39)
  br label %41

41:                                               ; preds = %38, %9
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @tosa_irda_transceiver_mode(%struct.device*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
