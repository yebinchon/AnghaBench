; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-bmips.c_bmips_ebase_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-bmips.c_bmips_ebase_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ebase = common dso_local global i64 0, align 8
@CKSEG0 = common dso_local global i64 0, align 8
@BMIPS_WARM_RESTART_VEC = common dso_local global i32 0, align 4
@bmips_smp_int_vec = common dso_local global i32 0, align 4
@RESET_FROM_KSEG0 = common dso_local global i32 0, align 4
@bmips_nmi_handler_setup = common dso_local global i32 0, align 4
@board_nmi_handler_setup = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bmips_ebase_setup() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ebase, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* @ebase, align 8
  %4 = load i64, i64* @CKSEG0, align 8
  %5 = icmp ne i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = call i32 (...) @current_cpu_type()
  switch i32 %8, label %25 [
    i32 130, label %9
    i32 131, label %17
    i32 129, label %17
    i32 128, label %20
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* @BMIPS_WARM_RESTART_VEC, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @CKSEG0, align 8
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @set_uncached_handler(i32 %14, i32* @bmips_smp_int_vec, i32 128)
  %16 = call i32 (...) @__sync()
  br label %28

17:                                               ; preds = %0, %0
  store i64 2147484672, i64* %1, align 8
  %18 = load i32, i32* @RESET_FROM_KSEG0, align 4
  %19 = call i32 @bmips_set_reset_vec(i32 0, i32 %18)
  br label %26

20:                                               ; preds = %0
  store i64 2147487744, i64* %1, align 8
  %21 = load i32, i32* @RESET_FROM_KSEG0, align 4
  %22 = call i32 @bmips_set_reset_vec(i32 0, i32 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @write_c0_ebase(i64 %23)
  br label %26

25:                                               ; preds = %0
  br label %28

26:                                               ; preds = %20, %17
  store i32* @bmips_nmi_handler_setup, i32** @board_nmi_handler_setup, align 8
  %27 = load i64, i64* %1, align 8
  store i64 %27, i64* @ebase, align 8
  br label %28

28:                                               ; preds = %26, %25, %9
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @set_uncached_handler(i32, i32*, i32) #1

declare dso_local i32 @__sync(...) #1

declare dso_local i32 @bmips_set_reset_vec(i32, i32) #1

declare dso_local i32 @write_c0_ebase(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
