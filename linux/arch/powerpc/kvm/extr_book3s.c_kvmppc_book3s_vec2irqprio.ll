; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_book3s_vec2irqprio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_book3s_vec2irqprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOOK3S_IRQPRIO_SYSTEM_RESET = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_MACHINE_CHECK = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_DATA_STORAGE = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_DATA_SEGMENT = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_INST_STORAGE = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_INST_SEGMENT = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_EXTERNAL = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_ALIGNMENT = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_PROGRAM = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_FP_UNAVAIL = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_DECREMENTER = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_SYSCALL = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_DEBUG = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_ALTIVEC = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_VSX = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_FAC_UNAVAIL = common dso_local global i32 0, align 4
@BOOK3S_IRQPRIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kvmppc_book3s_vec2irqprio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_book3s_vec2irqprio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %37 [
    i32 256, label %5
    i32 512, label %7
    i32 768, label %9
    i32 896, label %11
    i32 1024, label %13
    i32 1152, label %15
    i32 1280, label %17
    i32 1536, label %19
    i32 1792, label %21
    i32 2048, label %23
    i32 2304, label %25
    i32 3072, label %27
    i32 3328, label %29
    i32 3872, label %31
    i32 3904, label %33
    i32 3936, label %35
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @BOOK3S_IRQPRIO_SYSTEM_RESET, align 4
  store i32 %6, i32* %3, align 4
  br label %39

7:                                                ; preds = %1
  %8 = load i32, i32* @BOOK3S_IRQPRIO_MACHINE_CHECK, align 4
  store i32 %8, i32* %3, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32, i32* @BOOK3S_IRQPRIO_DATA_STORAGE, align 4
  store i32 %10, i32* %3, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load i32, i32* @BOOK3S_IRQPRIO_DATA_SEGMENT, align 4
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @BOOK3S_IRQPRIO_INST_STORAGE, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32, i32* @BOOK3S_IRQPRIO_INST_SEGMENT, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load i32, i32* @BOOK3S_IRQPRIO_EXTERNAL, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @BOOK3S_IRQPRIO_ALIGNMENT, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load i32, i32* @BOOK3S_IRQPRIO_PROGRAM, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* @BOOK3S_IRQPRIO_FP_UNAVAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @BOOK3S_IRQPRIO_DECREMENTER, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load i32, i32* @BOOK3S_IRQPRIO_SYSCALL, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @BOOK3S_IRQPRIO_DEBUG, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* @BOOK3S_IRQPRIO_ALTIVEC, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @BOOK3S_IRQPRIO_VSX, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @BOOK3S_IRQPRIO_FAC_UNAVAIL, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @BOOK3S_IRQPRIO_MAX, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
