; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_body.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32*, %struct.bpf_prog* }
%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*)* @build_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_body(%struct.jit_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jit_ctx*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %3, align 8
  %8 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %10, %struct.bpf_prog** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 1
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i64 %22
  store %struct.bpf_insn* %23, %struct.bpf_insn** %6, align 8
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %26 = call i32 @build_insn(%struct.bpf_insn* %24, %struct.jit_ctx* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %56

41:                                               ; preds = %17
  %42 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %11

59:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @build_insn(%struct.bpf_insn*, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
