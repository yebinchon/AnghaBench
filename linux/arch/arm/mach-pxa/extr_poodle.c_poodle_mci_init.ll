; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_poodle.c_poodle_mci_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_poodle.c_poodle_mci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@POODLE_GPIO_SD_PWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SD_PWR\00", align 1
@POODLE_GPIO_SD_PWR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"SD_PWR1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @poodle_mci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poodle_mci_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @POODLE_GPIO_SD_PWR, align 4
  %10 = call i32 @gpio_request(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  %15 = load i32, i32* @POODLE_GPIO_SD_PWR1, align 4
  %16 = call i32 @gpio_request(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @POODLE_GPIO_SD_PWR, align 4
  %22 = call i32 @gpio_direction_output(i32 %21, i32 0)
  %23 = load i32, i32* @POODLE_GPIO_SD_PWR1, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  store i32 0, i32* %4, align 4
  br label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @POODLE_GPIO_SD_PWR, align 4
  %27 = call i32 @gpio_free(i32 %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
