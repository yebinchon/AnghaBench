; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_build_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_build_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a64 = common dso_local global i32* null, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@BPF_REG_6 = common dso_local global i64 0, align 8
@BPF_REG_7 = common dso_local global i64 0, align 8
@BPF_REG_8 = common dso_local global i64 0, align 8
@BPF_REG_9 = common dso_local global i64 0, align 8
@BPF_REG_FP = common dso_local global i64 0, align 8
@A64_SP = common dso_local global i32 0, align 4
@A64_FP = common dso_local global i32 0, align 4
@A64_LR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit_ctx*)* @build_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_epilogue(%struct.jit_ctx* %0) #0 {
  %2 = alloca %struct.jit_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %2, align 8
  %9 = load i32*, i32** @bpf2a64, align 8
  %10 = load i64, i64* @BPF_REG_0, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** @bpf2a64, align 8
  %14 = load i64, i64* @BPF_REG_6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** @bpf2a64, align 8
  %18 = load i64, i64* @BPF_REG_7, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** @bpf2a64, align 8
  %22 = load i64, i64* @BPF_REG_8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** @bpf2a64, align 8
  %26 = load i64, i64* @BPF_REG_9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** @bpf2a64, align 8
  %30 = load i64, i64* @BPF_REG_FP, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @A64_SP, align 4
  %34 = load i32, i32* @A64_SP, align 4
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @A64_ADD_I(i32 1, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %40 = call i32 @emit(i32 %38, %struct.jit_ctx* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @A64_R(i32 26)
  %43 = load i32, i32* @A64_SP, align 4
  %44 = call i32 @A64_POP(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %46 = call i32 @emit(i32 %44, %struct.jit_ctx* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @A64_SP, align 4
  %50 = call i32 @A64_POP(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %52 = call i32 @emit(i32 %50, %struct.jit_ctx* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @A64_SP, align 4
  %56 = call i32 @A64_POP(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %58 = call i32 @emit(i32 %56, %struct.jit_ctx* %57)
  %59 = load i32, i32* @A64_FP, align 4
  %60 = load i32, i32* @A64_LR, align 4
  %61 = load i32, i32* @A64_SP, align 4
  %62 = call i32 @A64_POP(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %64 = call i32 @emit(i32 %62, %struct.jit_ctx* %63)
  %65 = call i32 @A64_R(i32 0)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @A64_MOV(i32 1, i32 %65, i32 %66)
  %68 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %69 = call i32 @emit(i32 %67, %struct.jit_ctx* %68)
  %70 = load i32, i32* @A64_LR, align 4
  %71 = call i32 @A64_RET(i32 %70)
  %72 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %73 = call i32 @emit(i32 %71, %struct.jit_ctx* %72)
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @A64_ADD_I(i32, i32, i32, i32) #1

declare dso_local i32 @A64_POP(i32, i32, i32) #1

declare dso_local i32 @A64_R(i32) #1

declare dso_local i32 @A64_MOV(i32, i32, i32) #1

declare dso_local i32 @A64_RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
