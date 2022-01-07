; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-errata.c___cvmx_helper_errata_qlm_disable_2nd_order_cdr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-errata.c___cvmx_helper_errata_qlm_disable_2nd_order_cdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @cvmx_helper_qlm_jtag_init()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %9, i32 64)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %11, i32 4, i32 3)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %13, i32 9)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %15, i32 1, i32 1)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @cvmx_helper_qlm_jtag_shift_zeros(i32 %17, i32 190)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @cvmx_helper_qlm_jtag_update(i32 %23)
  ret void
}

declare dso_local i32 @cvmx_helper_qlm_jtag_init(...) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_shift_zeros(i32, i32) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_shift(i32, i32, i32) #1

declare dso_local i32 @cvmx_helper_qlm_jtag_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
