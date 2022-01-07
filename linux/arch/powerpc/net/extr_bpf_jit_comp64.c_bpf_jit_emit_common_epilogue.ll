; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_emit_common_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_emit_common_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32, i64 }

@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@b2p = common dso_local global i32* null, align 8
@BPF_PPC_STACKFRAME = common dso_local global i64 0, align 8
@SEEN_FUNC = common dso_local global i32 0, align 4
@PPC_LR_STKOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.codegen_context*)* @bpf_jit_emit_common_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_jit_emit_common_epilogue(i32* %0, %struct.codegen_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.codegen_context*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.codegen_context* %1, %struct.codegen_context** %4, align 8
  %6 = load i32, i32* @BPF_REG_6, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BPF_REG_10, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @bpf_is_seen_register(%struct.codegen_context* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32*, i32** @b2p, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %23 = load i32*, i32** @b2p, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bpf_jit_stack_offsetof(%struct.codegen_context* %22, i32 %27)
  %29 = call i32 @PPC_BPF_LL(i32 %21, i32 1, i32 %28)
  br label %30

30:                                               ; preds = %16, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %36 = call i64 @bpf_has_stack_frame(%struct.codegen_context* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i64, i64* @BPF_PPC_STACKFRAME, align 8
  %40 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %41 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @PPC_ADDI(i32 1, i32 1, i64 %43)
  %45 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %46 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SEEN_FUNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @PPC_LR_STKOFF, align 4
  %53 = call i32 @PPC_BPF_LL(i32 0, i32 1, i32 %52)
  %54 = call i32 @PPC_MTLR(i32 0)
  br label %55

55:                                               ; preds = %51, %38
  br label %56

56:                                               ; preds = %55, %34
  ret void
}

declare dso_local i64 @bpf_is_seen_register(%struct.codegen_context*, i32) #1

declare dso_local i32 @PPC_BPF_LL(i32, i32, i32) #1

declare dso_local i32 @bpf_jit_stack_offsetof(%struct.codegen_context*, i32) #1

declare dso_local i64 @bpf_has_stack_frame(%struct.codegen_context*) #1

declare dso_local i32 @PPC_ADDI(i32, i32, i64) #1

declare dso_local i32 @PPC_MTLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
