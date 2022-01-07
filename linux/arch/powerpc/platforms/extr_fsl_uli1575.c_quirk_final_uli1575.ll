; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_final_uli1575.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_final_uli1575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@RTC_SET = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_24H = common dso_local global i32 0, align 4
@RTC_VALID = common dso_local global i32 0, align 4
@RTC_ALARM_DONT_CARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_final_uli1575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_final_uli1575(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = call i32 (...) @is_quirk_valid()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = call i32 @outb(i32 250, i32 1232)
  %8 = call i32 @outb(i32 30, i32 1233)
  %9 = load i32, i32* @RTC_SET, align 4
  %10 = load i32, i32* @RTC_CONTROL, align 4
  %11 = call i32 @CMOS_WRITE(i32 %9, i32 %10)
  %12 = load i32, i32* @RTC_24H, align 4
  %13 = load i32, i32* @RTC_CONTROL, align 4
  %14 = call i32 @CMOS_WRITE(i32 %12, i32 %13)
  %15 = load i32, i32* @RTC_VALID, align 4
  %16 = call i32 @CMOS_WRITE(i32 0, i32 %15)
  %17 = call i32 @outb_p(i32 124, i32 114)
  %18 = load i32, i32* @RTC_ALARM_DONT_CARE, align 4
  %19 = call i32 @outb_p(i32 %18, i32 115)
  %20 = call i32 @outb_p(i32 125, i32 114)
  %21 = load i32, i32* @RTC_ALARM_DONT_CARE, align 4
  %22 = call i32 @outb_p(i32 %21, i32 115)
  br label %23

23:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @is_quirk_valid(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CMOS_WRITE(i32, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
