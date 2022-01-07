; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_configure_exception_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_configure_exception_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_mips_r2_r6 = common dso_local global i64 0, align 8
@ST0_BEV = common dso_local global i32 0, align 4
@cpu_has_ebase_wg = common dso_local global i64 0, align 8
@ebase = common dso_local global i32 0, align 4
@MIPS_EBASE_WG = common dso_local global i32 0, align 4
@cpu_has_veic = common dso_local global i64 0, align 8
@cpu_has_vint = common dso_local global i64 0, align 8
@VECTORSPACING = common dso_local global i32 0, align 4
@cpu_has_divec = common dso_local global i64 0, align 8
@cpu_has_mipsmt = common dso_local global i64 0, align 8
@CAUSEF_IV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @configure_exception_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_exception_vector() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cpu_has_mips_r2_r6, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @ST0_BEV, align 4
  %7 = call i64 @set_c0_status(i32 %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* @cpu_has_ebase_wg, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, i32* @ebase, align 4
  %12 = load i32, i32* @MIPS_EBASE_WG, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @write_c0_ebase(i32 %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load i32, i32* @ebase, align 4
  %17 = call i32 @write_c0_ebase(i32 %16)
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @write_c0_status(i64 %18)
  br label %20

20:                                               ; preds = %15, %0
  %21 = load i64, i64* @cpu_has_veic, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @cpu_has_vint, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @VECTORSPACING, align 4
  %28 = call i32 @change_c0_intctl(i32 992, i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @cpu_has_divec, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i64, i64* @cpu_has_mipsmt, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = call i32 (...) @dvpe()
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* @CAUSEF_IV, align 4
  %38 = call i32 @set_c0_cause(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @evpe(i32 %39)
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @CAUSEF_IV, align 4
  %43 = call i32 @set_c0_cause(i32 %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %29
  ret void
}

declare dso_local i64 @set_c0_status(i32) #1

declare dso_local i32 @write_c0_ebase(i32) #1

declare dso_local i32 @write_c0_status(i64) #1

declare dso_local i32 @change_c0_intctl(i32, i32) #1

declare dso_local i32 @dvpe(...) #1

declare dso_local i32 @set_c0_cause(i32) #1

declare dso_local i32 @evpe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
