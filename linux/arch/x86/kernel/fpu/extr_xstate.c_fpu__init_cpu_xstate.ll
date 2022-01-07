; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_xstate.c_fpu__init_cpu_xstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_xstate.c_fpu__init_cpu_xstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@xfeatures_mask = common dso_local global i32 0, align 4
@XFEATURE_MASK_SUPERVISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"x86/fpu: XSAVES supervisor states are not yet implemented.\0A\00", align 1
@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@XCR_XFEATURE_ENABLED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu__init_cpu_xstate() #0 {
  %1 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %2 = call i32 @boot_cpu_has(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @xfeatures_mask, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  br label %22

8:                                                ; preds = %4
  %9 = load i32, i32* @xfeatures_mask, align 4
  %10 = load i32, i32* @XFEATURE_MASK_SUPERVISOR, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @WARN_ONCE(i32 %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @XFEATURE_MASK_SUPERVISOR, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @xfeatures_mask, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @xfeatures_mask, align 4
  %17 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %18 = call i32 @cr4_set_bits(i32 %17)
  %19 = load i32, i32* @XCR_XFEATURE_ENABLED_MASK, align 4
  %20 = load i32, i32* @xfeatures_mask, align 4
  %21 = call i32 @xsetbv(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @cr4_set_bits(i32) #1

declare dso_local i32 @xsetbv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
