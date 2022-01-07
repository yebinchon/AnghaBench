; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_marxbot_init_sel_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31moboard-marxbot.c_marxbot_init_sel_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sel0\00", align 1
@SEL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sel1\00", align 1
@SEL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sel2\00", align 1
@SEL3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"sel3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @marxbot_init_sel_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marxbot_init_sel_gpios() #0 {
  %1 = load i32, i32* @SEL0, align 4
  %2 = call i32 @gpio_request(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @SEL0, align 4
  %6 = call i32 @gpio_direction_input(i32 %5)
  %7 = load i32, i32* @SEL0, align 4
  %8 = call i32 @gpio_export(i32 %7, i32 1)
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @SEL1, align 4
  %11 = call i32 @gpio_request(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @SEL1, align 4
  %15 = call i32 @gpio_direction_input(i32 %14)
  %16 = load i32, i32* @SEL1, align 4
  %17 = call i32 @gpio_export(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i32, i32* @SEL2, align 4
  %20 = call i32 @gpio_request(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @SEL2, align 4
  %24 = call i32 @gpio_direction_input(i32 %23)
  %25 = load i32, i32* @SEL2, align 4
  %26 = call i32 @gpio_export(i32 %25, i32 1)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* @SEL3, align 4
  %29 = call i32 @gpio_request(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @SEL3, align 4
  %33 = call i32 @gpio_direction_input(i32 %32)
  %34 = load i32, i32* @SEL3, align 4
  %35 = call i32 @gpio_export(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_export(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
