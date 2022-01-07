; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_stack_offsetof.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_stack_offsetof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32 }

@BPF_PPC_NVR_MIN = common dso_local global i32 0, align 4
@BPF_PPC_STACKFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BPF JIT is asking about unknown registers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codegen_context*, i32)* @bpf_jit_stack_offsetof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_jit_stack_offsetof(%struct.codegen_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.codegen_context*, align 8
  %5 = alloca i32, align 4
  store %struct.codegen_context* %0, %struct.codegen_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BPF_PPC_NVR_MIN, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %14 = call i64 @bpf_has_stack_frame(%struct.codegen_context* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @BPF_PPC_STACKFRAME, align 4
  %18 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %19 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %21, %16 ], [ 0, %22 ]
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 32, %25
  %27 = mul nsw i32 8, %26
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %9, %2
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @bpf_has_stack_frame(%struct.codegen_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
