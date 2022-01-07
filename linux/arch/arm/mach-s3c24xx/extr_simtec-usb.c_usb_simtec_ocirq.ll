; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_simtec-usb.c_usb_simtec_ocirq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_simtec-usb.c_usb_simtec_ocirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_hcd_info = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"usb_simtec: over-current irq (oc detected)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"usb_simtec: over-current irq (oc cleared)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usb_simtec_ocirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_simtec_ocirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c2410_hcd_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.s3c2410_hcd_info*
  store %struct.s3c2410_hcd_info* %7, %struct.s3c2410_hcd_info** %5, align 8
  %8 = call i32 @S3C2410_GPG(i32 10)
  %9 = call i64 @gpio_get_value(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %14 = call i32 @s3c2410_usb_report_oc(%struct.s3c2410_hcd_info* %13, i32 3)
  br label %19

15:                                               ; preds = %2
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %18 = call i32 @s3c2410_usb_report_oc(%struct.s3c2410_hcd_info* %17, i32 0)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %20
}

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @S3C2410_GPG(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @s3c2410_usb_report_oc(%struct.s3c2410_hcd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
