; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-board.c___cvmx_helper_board_usb_get_clock_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-board.c___cvmx_helper_board_usb_get_clock_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@USB_CLOCK_TYPE_CRYSTAL_12 = common dso_local global i32 0, align 4
@USB_CLOCK_TYPE_REF_12 = common dso_local global i32 0, align 4
@USB_CLOCK_TYPE_REF_48 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_board_usb_get_clock_type() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 134, label %5
    i32 133, label %5
    i32 131, label %5
    i32 132, label %5
    i32 129, label %5
    i32 128, label %5
    i32 130, label %7
  ]

5:                                                ; preds = %0, %0, %0, %0, %0, %0
  %6 = load i32, i32* @USB_CLOCK_TYPE_CRYSTAL_12, align 4
  store i32 %6, i32* %1, align 4
  br label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @USB_CLOCK_TYPE_REF_12, align 4
  store i32 %8, i32* %1, align 4
  br label %17

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9
  %11 = call i64 (...) @OCTEON_IS_OCTEON2()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @USB_CLOCK_TYPE_CRYSTAL_12, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @USB_CLOCK_TYPE_REF_48, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13, %7, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @OCTEON_IS_OCTEON2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
