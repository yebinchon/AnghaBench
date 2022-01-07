; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_init.c_fpu__probe_without_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_init.c_fpu__probe_without_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_CR0_TS = common dso_local global i64 0, align 8
@X86_CR0_EM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"x86/fpu: Probing for FPU: FSW=0x%04hx FCW=0x%04hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fpu__probe_without_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpu__probe_without_cpuid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 65535, i32* %3, align 4
  store i32 65535, i32* %2, align 4
  %4 = call i64 (...) @read_cr0()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @X86_CR0_TS, align 8
  %6 = load i64, i64* @X86_CR0_EM, align 8
  %7 = or i64 %5, %6
  %8 = xor i64 %7, -1
  %9 = load i64, i64* %1, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @write_cr0(i64 %11)
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %2, i32* %3, i32* %2, i32* %3) #2, !srcloc !2
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 4159
  %21 = icmp eq i32 %20, 63
  br label %22

22:                                               ; preds = %18, %0
  %23 = phi i1 [ false, %0 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @read_cr0(...) #1

declare dso_local i32 @write_cr0(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 521}
