; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_mach-smartq.c_smartq_usb_host_enableoc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_mach-smartq.c_smartq_usb_host_enableoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_hcd_info = type { i32 }

@smartq_usb_host_ocirq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"USB host overcurrent\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to request usb oc irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_hcd_info*, i32)* @smartq_usb_host_enableoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartq_usb_host_enableoc(%struct.s3c2410_hcd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_hcd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3c2410_hcd_info* %0, %struct.s3c2410_hcd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @machine_is_smartq5()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %32

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = call i32 @S3C64XX_GPL(i32 10)
  %14 = call i32 @gpio_to_irq(i32 %13)
  %15 = load i32, i32* @smartq_usb_host_ocirq, align 4
  %16 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %17 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %20 = call i32 @request_irq(i32 %14, i32 %15, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.s3c2410_hcd_info* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %12
  br label %32

27:                                               ; preds = %9
  %28 = call i32 @S3C64XX_GPL(i32 10)
  %29 = call i32 @gpio_to_irq(i32 %28)
  %30 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.s3c2410_hcd_info* %30)
  br label %32

32:                                               ; preds = %8, %27, %26
  ret void
}

declare dso_local i64 @machine_is_smartq5(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.s3c2410_hcd_info*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @S3C64XX_GPL(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.s3c2410_hcd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
