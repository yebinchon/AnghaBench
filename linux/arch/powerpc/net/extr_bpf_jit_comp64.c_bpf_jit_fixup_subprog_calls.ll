; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_fixup_subprog_calls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_fixup_subprog_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64 }
%struct.codegen_context = type { i32 }

@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*, i32*, %struct.codegen_context*, i32*)* @bpf_jit_fixup_subprog_calls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_jit_fixup_subprog_calls(%struct.bpf_prog* %0, i32* %1, %struct.codegen_context* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.codegen_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.codegen_context* %2, %struct.codegen_context** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %16, i32 0, i32 1
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %17, align 8
  store %struct.bpf_insn* %18, %struct.bpf_insn** %10, align 8
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %76, %4
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i64 %28
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BPF_JMP, align 4
  %33 = load i32, i32* @BPF_CALL, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %25
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i64 %39
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %36
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 %49
  %51 = call i32 @bpf_jit_get_func_addr(%struct.bpf_prog* %46, %struct.bpf_insn* %50, i32 1, i32* %12, i32* %11)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %5, align 4
  br label %80

56:                                               ; preds = %45
  %57 = load %struct.codegen_context*, %struct.codegen_context** %8, align 8
  %58 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 4
  %66 = load %struct.codegen_context*, %struct.codegen_context** %8, align 8
  %67 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.codegen_context*, %struct.codegen_context** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @bpf_jit_emit_func_call_rel(i32* %68, %struct.codegen_context* %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.codegen_context*, %struct.codegen_context** %8, align 8
  %74 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %56, %36, %25
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %19

79:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @bpf_jit_get_func_addr(%struct.bpf_prog*, %struct.bpf_insn*, i32, i32*, i32*) #1

declare dso_local i32 @bpf_jit_emit_func_call_rel(i32*, %struct.codegen_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
