; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_am300epd.c_am300_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_am300epd.c_am300_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@RDY_GPIO_PIN = common dso_local global i32 0, align 4
@gpios = common dso_local global i32* null, align 8
@DB0_GPIO_PIN = common dso_local global i32 0, align 4
@DB15_GPIO_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*)* @am300_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am300_cleanup(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca %struct.broadsheetfb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %2, align 8
  %4 = load i32, i32* @RDY_GPIO_PIN, align 4
  %5 = call i32 @PXA_GPIO_TO_IRQ(i32 %4)
  %6 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %7 = call i32 @free_irq(i32 %5, %struct.broadsheetfb_par* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32*, i32** @gpios, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32*, i32** @gpios, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_free(i32 %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load i32, i32* @DB0_GPIO_PIN, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %32, %23
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DB15_GPIO_PIN, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gpio_free(i32 %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %25

35:                                               ; preds = %25
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.broadsheetfb_par*) #1

declare dso_local i32 @PXA_GPIO_TO_IRQ(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
