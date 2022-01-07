; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_prepare_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_prepare_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_PGE = common dso_local global i32 0, align 4
@cr4 = common dso_local global i32 0, align 4
@X86_CR4_PGE = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4
@ccr3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_set() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X86_FEATURE_PGE, align 4
  %3 = call i64 @boot_cpu_has(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 (...) @__read_cr4()
  store i32 %6, i32* @cr4, align 4
  %7 = load i32, i32* @cr4, align 4
  %8 = load i32, i32* @X86_CR4_PGE, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = call i32 @__write_cr4(i32 %10)
  br label %12

12:                                               ; preds = %5, %0
  %13 = call i32 (...) @read_cr0()
  %14 = load i32, i32* @X86_CR0_CD, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = call i32 (...) @wbinvd()
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @write_cr0(i32 %17)
  %19 = call i32 (...) @wbinvd()
  %20 = load i32, i32* @CX86_CCR3, align 4
  %21 = call i32 @getCx86(i32 %20)
  store i32 %21, i32* @ccr3, align 4
  %22 = load i32, i32* @CX86_CCR3, align 4
  %23 = load i32, i32* @ccr3, align 4
  %24 = and i32 %23, 15
  %25 = or i32 %24, 16
  %26 = call i32 @setCx86(i32 %22, i32 %25)
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @__read_cr4(...) #1

declare dso_local i32 @__write_cr4(i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @write_cr0(i32) #1

declare dso_local i32 @getCx86(i32) #1

declare dso_local i32 @setCx86(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
