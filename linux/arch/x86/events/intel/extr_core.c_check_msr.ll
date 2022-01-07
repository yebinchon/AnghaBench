; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_check_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_check_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_HYPERVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @check_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_msr(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @X86_FEATURE_HYPERVISOR, align 4
  %10 = call i32 @boot_cpu_has(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @rdmsrl_safe(i64 %14, i32* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %54

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @is_lbr_from(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @lbr_from_signext_quirk_wr(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @wrmsrl_safe(i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @rdmsrl_safe(i64 %34, i32* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %54

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %54

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @is_lbr_from(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lbr_from_signext_quirk_wr(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @wrmsrl(i64 %51, i32 %52)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %42, %37, %17, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i64 @rdmsrl_safe(i64, i32*) #1

declare dso_local i64 @is_lbr_from(i64) #1

declare dso_local i32 @lbr_from_signext_quirk_wr(i32) #1

declare dso_local i64 @wrmsrl_safe(i64, i32) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
