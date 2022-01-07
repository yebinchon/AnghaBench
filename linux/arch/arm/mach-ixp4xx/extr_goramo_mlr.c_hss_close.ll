; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_hss_close.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_hss_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_HSS1_DCD_N = common dso_local global i32 0, align 4
@GPIO_HSS0_DCD_N = common dso_local global i32 0, align 4
@set_carrier_cb_tab = common dso_local global i32** null, align 8
@CONTROL_HSS1_DTR_N = common dso_local global i32 0, align 4
@CONTROL_HSS0_DTR_N = common dso_local global i32 0, align 4
@GPIO_HSS1_RTS_N = common dso_local global i32 0, align 4
@GPIO_HSS0_RTS_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @hss_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hss_close(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @GPIO_HSS1_DCD_N, align 4
  %9 = call i32 @IXP4XX_GPIO_IRQ(i32 %8)
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @GPIO_HSS0_DCD_N, align 4
  %12 = call i32 @IXP4XX_GPIO_IRQ(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @free_irq(i32 %14, i8* %15)
  %17 = load i32**, i32*** @set_carrier_cb_tab, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %17, i64 %23
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* @CONTROL_HSS1_DTR_N, align 4
  br label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @CONTROL_HSS0_DTR_N, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @set_control(i32 %32, i32 1)
  %34 = call i32 (...) @output_control()
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @GPIO_HSS1_RTS_N, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @GPIO_HSS0_RTS_N, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @gpio_set_value(i32 %42, i32 1)
  ret void
}

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @IXP4XX_GPIO_IRQ(i32) #1

declare dso_local i32 @set_control(i32, i32) #1

declare dso_local i32 @output_control(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
