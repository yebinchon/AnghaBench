; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_setup_barrier_nospec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_setup_barrier_nospec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_FTR_FAVOUR_SECURITY = common dso_local global i32 0, align 4
@SEC_FTR_BNDS_CHK_SPEC_BAR = common dso_local global i32 0, align 4
@no_nospec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_barrier_nospec() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SEC_FTR_FAVOUR_SECURITY, align 4
  %3 = call i64 @security_ftr_enabled(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @SEC_FTR_BNDS_CHK_SPEC_BAR, align 4
  %7 = call i64 @security_ftr_enabled(i32 %6)
  %8 = icmp ne i64 %7, 0
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ false, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @no_nospec, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = call i32 (...) @cpu_mitigations_off()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @enable_barrier_nospec(i32 %18)
  br label %20

20:                                               ; preds = %17, %14, %9
  ret void
}

declare dso_local i64 @security_ftr_enabled(i32) #1

declare dso_local i32 @cpu_mitigations_off(...) #1

declare dso_local i32 @enable_barrier_nospec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
