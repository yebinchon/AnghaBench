; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_bsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_bsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_PAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PAT not supported by CPU.\00", align 1
@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PAT MSR is 0, disabled.\00", align 1
@pat_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pat_bsp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pat_bsp_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @X86_FEATURE_PAT, align 4
  %5 = call i32 @boot_cpu_has(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @pat_disable(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @rdmsrl(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = call i32 @pat_disable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

17:                                               ; preds = %9
  %18 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @wrmsrl(i32 %18, i32 %19)
  store i32 1, i32* @pat_initialized, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @__init_cache_modes(i32 %21)
  br label %23

23:                                               ; preds = %17, %15, %7
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @pat_disable(i8*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @__init_cache_modes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
