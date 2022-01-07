; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_build_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_build_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32, i32 }

@SEEN_TAILCALL = common dso_local global i32 0, align 4
@b2p = common dso_local global i32* null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@BPF_PPC_STACK_SAVE = common dso_local global i32 0, align 4
@SEEN_FUNC = common dso_local global i32 0, align 4
@PPC_INST_MFLR = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@PPC_LR_STKOFF = common dso_local global i32 0, align 4
@BPF_PPC_STACKFRAME = common dso_local global i32 0, align 4
@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i64 0, align 8
@STACK_FRAME_MIN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.codegen_context*)* @bpf_jit_build_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_jit_build_prologue(i32* %0, %struct.codegen_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.codegen_context*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.codegen_context* %1, %struct.codegen_context** %4, align 8
  %6 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %7 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SEEN_TAILCALL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32*, i32** @b2p, align 8
  %14 = load i64, i64* @TMP_REG_1, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PPC_LI(i32 %16, i32 0)
  %18 = load i32*, i32** @b2p, align 8
  %19 = load i64, i64* @TMP_REG_1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BPF_PPC_STACK_SAVE, align 4
  %23 = add nsw i32 %22, 8
  %24 = sub nsw i32 0, %23
  %25 = call i32 @PPC_BPF_STL(i32 %21, i32 1, i32 %24)
  br label %29

26:                                               ; preds = %2
  %27 = call i32 (...) @PPC_NOP()
  %28 = call i32 (...) @PPC_NOP()
  br label %29

29:                                               ; preds = %26, %12
  %30 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %31 = call i64 @bpf_has_stack_frame(%struct.codegen_context* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %35 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SEEN_FUNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* @PPC_INST_MFLR, align 4
  %42 = load i32, i32* @R0, align 4
  %43 = call i32 @__PPC_RT(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i32 @EMIT(i32 %44)
  %46 = load i32, i32* @PPC_LR_STKOFF, align 4
  %47 = call i32 @PPC_BPF_STL(i32 0, i32 1, i32 %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @BPF_PPC_STACKFRAME, align 4
  %50 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %51 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 0, %53
  %55 = call i32 @PPC_BPF_STLU(i32 1, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %48, %29
  %57 = load i32, i32* @BPF_REG_6, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %83, %56
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BPF_REG_10, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = call i64 @bpf_is_seen_register(%struct.codegen_context* %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32*, i32** @b2p, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %75 = load i32*, i32** @b2p, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bpf_jit_stack_offsetof(%struct.codegen_context* %74, i32 %79)
  %81 = call i32 @PPC_BPF_STL(i32 %73, i32 1, i32 %80)
  br label %82

82:                                               ; preds = %68, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %88 = load i64, i64* @BPF_REG_FP, align 8
  %89 = call i64 @bpf_is_seen_register(%struct.codegen_context* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32*, i32** @b2p, align 8
  %93 = load i64, i64* @BPF_REG_FP, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @STACK_FRAME_MIN_SIZE, align 8
  %97 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %98 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %96, %100
  %102 = call i32 @PPC_ADDI(i32 %95, i32 1, i64 %101)
  br label %103

103:                                              ; preds = %91, %86
  ret void
}

declare dso_local i32 @PPC_LI(i32, i32) #1

declare dso_local i32 @PPC_BPF_STL(i32, i32, i32) #1

declare dso_local i32 @PPC_NOP(...) #1

declare dso_local i64 @bpf_has_stack_frame(%struct.codegen_context*) #1

declare dso_local i32 @EMIT(i32) #1

declare dso_local i32 @__PPC_RT(i32) #1

declare dso_local i32 @PPC_BPF_STLU(i32, i32, i32) #1

declare dso_local i64 @bpf_is_seen_register(%struct.codegen_context*, i64) #1

declare dso_local i32 @bpf_jit_stack_offsetof(%struct.codegen_context*, i32) #1

declare dso_local i32 @PPC_ADDI(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
