; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_get_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_get_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i64 }

@__LINUX_ARM_ARCH__ = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv5TE = common dso_local global i64 0, align 8
@ARM_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.jit_ctx*)* @arm_bpf_get_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arm_bpf_get_reg64(i32* %0, i32* %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.jit_ctx*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_stacked(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %3
  %13 = load i32, i32* @__LINUX_ARM_ARCH__, align 4
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CPU_ARCH_ARMv5TE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15, %12
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARM_FP, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %28)
  %30 = call i32 @ARM_LDRD_I(i32 %24, i32 %25, i32 %29)
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %32 = call i32 @emit(i32 %30, %struct.jit_ctx* %31)
  br label %56

33:                                               ; preds = %15
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARM_FP, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %40)
  %42 = call i32 @ARM_LDR_I(i32 %36, i32 %37, i32 %41)
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %44 = call i32 @emit(i32 %42, %struct.jit_ctx* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ARM_FP, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %51)
  %53 = call i32 @ARM_LDR_I(i32 %47, i32 %48, i32 %52)
  %54 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %55 = call i32 @emit(i32 %53, %struct.jit_ctx* %54)
  br label %56

56:                                               ; preds = %33, %21
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %3
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i64 @is_stacked(i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_LDRD_I(i32, i32, i32) #1

declare dso_local i32 @EBPF_SCRATCH_TO_ARM_FP(i32) #1

declare dso_local i32 @ARM_LDR_I(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
