; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_copy_init_fpstate_to_fpregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_copy_init_fpstate_to_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@init_fpstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@X86_FEATURE_FXSR = common dso_local global i32 0, align 4
@X86_FEATURE_OSPKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_init_fpstate_to_fpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_init_fpstate_to_fpregs() #0 {
  %1 = call i32 (...) @fpregs_lock()
  %2 = call i64 (...) @use_xsave()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @copy_kernel_to_xregs(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_fpstate, i32 0, i32 2), i32 -1)
  br label %15

6:                                                ; preds = %0
  %7 = load i32, i32* @X86_FEATURE_FXSR, align 4
  %8 = call i64 @static_cpu_has(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @copy_kernel_to_fxregs(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_fpstate, i32 0, i32 1))
  br label %14

12:                                               ; preds = %6
  %13 = call i32 @copy_kernel_to_fregs(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_fpstate, i32 0, i32 0))
  br label %14

14:                                               ; preds = %12, %10
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* @X86_FEATURE_OSPKE, align 4
  %17 = call i64 @boot_cpu_has(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @copy_init_pkru_to_fpregs()
  br label %21

21:                                               ; preds = %19, %15
  %22 = call i32 (...) @fpregs_mark_activate()
  %23 = call i32 (...) @fpregs_unlock()
  ret void
}

declare dso_local i32 @fpregs_lock(...) #1

declare dso_local i64 @use_xsave(...) #1

declare dso_local i32 @copy_kernel_to_xregs(i32*, i32) #1

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i32 @copy_kernel_to_fxregs(i32*) #1

declare dso_local i32 @copy_kernel_to_fregs(i32*) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @copy_init_pkru_to_fpregs(...) #1

declare dso_local i32 @fpregs_mark_activate(...) #1

declare dso_local i32 @fpregs_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
