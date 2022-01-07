; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_stack_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_stack_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32 }

@STACK_FRAME_MIN_SIZE = common dso_local global i32 0, align 4
@BPF_PPC_STACK_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codegen_context*)* @bpf_jit_stack_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_jit_stack_local(%struct.codegen_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.codegen_context*, align 8
  store %struct.codegen_context* %0, %struct.codegen_context** %3, align 8
  %4 = load %struct.codegen_context*, %struct.codegen_context** %3, align 8
  %5 = call i64 @bpf_has_stack_frame(%struct.codegen_context* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @STACK_FRAME_MIN_SIZE, align 4
  %9 = load %struct.codegen_context*, %struct.codegen_context** %3, align 8
  %10 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @BPF_PPC_STACK_SAVE, align 4
  %15 = add nsw i32 %14, 16
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @bpf_has_stack_frame(%struct.codegen_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
