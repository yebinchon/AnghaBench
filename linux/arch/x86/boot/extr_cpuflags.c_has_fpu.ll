; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpuflags.c_has_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpuflags.c_has_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_CR0_EM = common dso_local global i64 0, align 8
@X86_CR0_TS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_fpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_fpu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 -1, i64* %1, align 8
  store i64 -1, i64* %2, align 8
  %4 = call i64 asm sideeffect "mov %cr0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @X86_CR0_EM, align 8
  %7 = load i64, i64* @X86_CR0_TS, align 8
  %8 = or i64 %6, %7
  %9 = and i64 %5, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load i64, i64* @X86_CR0_EM, align 8
  %13 = load i64, i64* @X86_CR0_TS, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%cr0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %18) #1, !srcloc !3
  br label %19

19:                                               ; preds = %11, %0
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i64* %2, i64* %1, i64* %2, i64* %1) #1, !srcloc !4
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %1, align 8
  %24 = and i64 %23, 4159
  %25 = icmp eq i64 %24, 63
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 332}
!3 = !{i32 450}
!4 = !{i32 499}
