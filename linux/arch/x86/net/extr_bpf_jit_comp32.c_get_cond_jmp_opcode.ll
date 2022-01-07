; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_get_cond_jmp_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_get_cond_jmp_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_JE = common dso_local global i32 0, align 4
@IA32_JNE = common dso_local global i32 0, align 4
@IA32_JA = common dso_local global i32 0, align 4
@IA32_JB = common dso_local global i32 0, align 4
@IA32_JAE = common dso_local global i32 0, align 4
@IA32_JBE = common dso_local global i32 0, align 4
@IA32_JG = common dso_local global i32 0, align 4
@IA32_JL = common dso_local global i32 0, align 4
@IA32_JGE = common dso_local global i32 0, align 4
@IA32_JLE = common dso_local global i32 0, align 4
@COND_JMP_OPCODE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_cond_jmp_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cond_jmp_opcode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %51 [
    i32 138, label %7
    i32 132, label %9
    i32 133, label %9
    i32 136, label %11
    i32 134, label %13
    i32 137, label %15
    i32 135, label %17
    i32 130, label %19
    i32 128, label %27
    i32 131, label %35
    i32 129, label %43
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @IA32_JE, align 4
  store i32 %8, i32* %5, align 4
  br label %53

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @IA32_JNE, align 4
  store i32 %10, i32* %5, align 4
  br label %53

11:                                               ; preds = %2
  %12 = load i32, i32* @IA32_JA, align 4
  store i32 %12, i32* %5, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* @IA32_JB, align 4
  store i32 %14, i32* %5, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* @IA32_JAE, align 4
  store i32 %16, i32* %5, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @IA32_JBE, align 4
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @IA32_JG, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @IA32_JA, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %53

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @IA32_JL, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @IA32_JB, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %53

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @IA32_JGE, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @IA32_JAE, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %53

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @IA32_JLE, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @IA32_JBE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @COND_JMP_OPCODE_INVALID, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %50, %42, %34, %26, %17, %15, %13, %11, %9, %7
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
