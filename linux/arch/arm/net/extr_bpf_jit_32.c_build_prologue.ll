; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_build_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_build_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@BPF_REG_1 = common dso_local global i64 0, align 8
@BPF_REG_6 = common dso_local global i64 0, align 8
@BPF_REG_FP = common dso_local global i64 0, align 8
@TCALL_CNT = common dso_local global i64 0, align 8
@CALLEE_PUSH_MASK = common dso_local global i32 0, align 4
@ARM_FP = common dso_local global i32 0, align 4
@ARM_SP = common dso_local global i32 0, align 4
@ARM_IP = common dso_local global i32 0, align 4
@SCRATCH_SIZE = common dso_local global i32 0, align 4
@STACK_SIZE = common dso_local global i32 0, align 4
@ARM_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit_ctx*)* @build_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_prologue(%struct.jit_ctx* %0) #0 {
  %2 = alloca %struct.jit_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.jit_ctx* %0, %struct.jit_ctx** %2, align 8
  %10 = load i32**, i32*** @bpf2a32, align 8
  %11 = load i64, i64* @BPF_REG_0, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32**, i32*** @bpf2a32, align 8
  %17 = load i64, i64* @BPF_REG_1, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32**, i32*** @bpf2a32, align 8
  %23 = load i64, i64* @BPF_REG_1, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32**, i32*** @bpf2a32, align 8
  %29 = load i64, i64* @BPF_REG_6, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32**, i32*** @bpf2a32, align 8
  %35 = load i64, i64* @BPF_REG_FP, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32**, i32*** @bpf2a32, align 8
  %41 = load i64, i64* @BPF_REG_FP, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32**, i32*** @bpf2a32, align 8
  %47 = load i64, i64* @TCALL_CNT, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* @CALLEE_PUSH_MASK, align 4
  %51 = call i32 @ARM_PUSH(i32 %50)
  %52 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %53 = call i32 @emit(i32 %51, %struct.jit_ctx* %52)
  %54 = load i32, i32* @ARM_FP, align 4
  %55 = load i32, i32* @ARM_SP, align 4
  %56 = call i32 @ARM_MOV_R(i32 %54, i32 %55)
  %57 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %58 = call i32 @emit(i32 %56, %struct.jit_ctx* %57)
  %59 = load i32, i32* @ARM_IP, align 4
  %60 = load i32, i32* @ARM_SP, align 4
  %61 = load i32, i32* @SCRATCH_SIZE, align 4
  %62 = call i32 @ARM_SUB_I(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %64 = call i32 @emit(i32 %62, %struct.jit_ctx* %63)
  %65 = load i32, i32* @STACK_SIZE, align 4
  %66 = call i32 @imm8m(i32 %65)
  %67 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ARM_SP, align 4
  %70 = load i32, i32* @ARM_SP, align 4
  %71 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ARM_SUB_I(i32 %69, i32 %70, i32 %73)
  %75 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %76 = call i32 @emit(i32 %74, %struct.jit_ctx* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ARM_IP, align 4
  %79 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %80 = call i32 @emit_a32_mov_r(i32 %77, i32 %78, %struct.jit_ctx* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %83 = call i32 @emit_a32_mov_i(i32 %81, i32 0, %struct.jit_ctx* %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ARM_MOV_I(i32 %84, i32 0)
  %86 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %87 = call i32 @emit(i32 %85, %struct.jit_ctx* %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ARM_MOV_R(i32 %88, i32 %89)
  %91 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %92 = call i32 @emit(i32 %90, %struct.jit_ctx* %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @ARM_MOV_R(i32 %93, i32 %94)
  %96 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %97 = call i32 @emit(i32 %95, %struct.jit_ctx* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @ARM_FP, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %102)
  %104 = call i32 @ARM_STR_I(i32 %98, i32 %99, i32 %103)
  %105 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %106 = call i32 @emit(i32 %104, %struct.jit_ctx* %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ARM_FP, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i32 %111)
  %113 = call i32 @ARM_STR_I(i32 %107, i32 %108, i32 %112)
  %114 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %115 = call i32 @emit(i32 %113, %struct.jit_ctx* %114)
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_PUSH(i32) #1

declare dso_local i32 @ARM_MOV_R(i32, i32) #1

declare dso_local i32 @ARM_SUB_I(i32, i32, i32) #1

declare dso_local i32 @imm8m(i32) #1

declare dso_local i32 @emit_a32_mov_r(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_a32_mov_i(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_MOV_I(i32, i32) #1

declare dso_local i32 @ARM_STR_I(i32, i32, i32) #1

declare dso_local i32 @EBPF_SCRATCH_TO_ARM_FP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
