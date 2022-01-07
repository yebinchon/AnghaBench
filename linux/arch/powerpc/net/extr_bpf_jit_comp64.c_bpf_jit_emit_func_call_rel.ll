; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_emit_func_call_rel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp64.c_bpf_jit_emit_func_call_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.codegen_context*, i32)* @bpf_jit_emit_func_call_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_jit_emit_func_call_rel(i32* %0, %struct.codegen_context* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.codegen_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.codegen_context* %1, %struct.codegen_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.codegen_context*, %struct.codegen_context** %5, align 8
  %10 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PPC_LI64(i32 12, i32 %12)
  %14 = load %struct.codegen_context*, %struct.codegen_context** %5, align 8
  %15 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %24, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i32 (...) @PPC_NOP()
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %19

27:                                               ; preds = %19
  %28 = call i32 @PPC_MTLR(i32 12)
  %29 = call i32 (...) @PPC_BLRL()
  ret void
}

declare dso_local i32 @PPC_LI64(i32, i32) #1

declare dso_local i32 @PPC_NOP(...) #1

declare dso_local i32 @PPC_MTLR(i32) #1

declare dso_local i32 @PPC_BLRL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
