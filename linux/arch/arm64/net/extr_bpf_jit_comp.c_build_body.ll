; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_build_body.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_build_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32*, i32*, %struct.bpf_prog* }
%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*, i32)* @build_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_body(%struct.jit_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jit_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %10, i32 0, i32 3
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  store %struct.bpf_prog* %12, %struct.bpf_prog** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %20, i32 0, i32 1
  %22 = load %struct.bpf_insn*, %struct.bpf_insn** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i64 %24
  store %struct.bpf_insn* %25, %struct.bpf_insn** %8, align 8
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @build_insn(%struct.bpf_insn* %26, %struct.jit_ctx* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %32
  br label %71

50:                                               ; preds = %19
  %51 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.jit_ctx*, %struct.jit_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %50
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %13

74:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @build_insn(%struct.bpf_insn*, %struct.jit_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
