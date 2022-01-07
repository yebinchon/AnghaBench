; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_init.c_fpu__init_cpu_generic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_init.c_fpu__init_cpu_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@X86_FEATURE_FXSR = common dso_local global i32 0, align 4
@X86_CR4_OSFXSR = common dso_local global i64 0, align 8
@X86_FEATURE_XMM = common dso_local global i32 0, align 4
@X86_CR4_OSXMMEXCPT = common dso_local global i64 0, align 8
@X86_CR0_TS = common dso_local global i64 0, align 8
@X86_CR0_EM = common dso_local global i64 0, align 8
@X86_FEATURE_FPU = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpu__init_cpu_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu__init_cpu_generic() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @X86_FEATURE_FXSR, align 4
  %4 = call i64 @boot_cpu_has(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i64, i64* @X86_CR4_OSFXSR, align 8
  %8 = load i64, i64* %2, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %2, align 8
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @X86_FEATURE_XMM, align 4
  %12 = call i64 @boot_cpu_has(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* @X86_CR4_OSXMMEXCPT, align 8
  %16 = load i64, i64* %2, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @cr4_set_bits(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i64 (...) @read_cr0()
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* @X86_CR0_TS, align 8
  %27 = load i64, i64* @X86_CR0_EM, align 8
  %28 = or i64 %26, %27
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %1, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %1, align 8
  %32 = load i32, i32* @X86_FEATURE_FPU, align 4
  %33 = call i64 @boot_cpu_has(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* @X86_CR0_EM, align 8
  %37 = load i64, i64* %1, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %1, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @write_cr0(i64 %40)
  call void asm sideeffect "fninit", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @cr4_set_bits(i64) #1

declare dso_local i64 @read_cr0(...) #1

declare dso_local i32 @write_cr0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1247}
