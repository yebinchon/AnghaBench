; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_build_body.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_build_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32*, i32*, %struct.bpf_prog* }
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
  %9 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 3
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %10, %struct.bpf_prog** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %68, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %11
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 1
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i64 %22
  store %struct.bpf_insn* %23, %struct.bpf_insn** %6, align 8
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %26 = call i32 @build_insn(%struct.bpf_insn* %24, %struct.jit_ctx* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %29
  br label %68

47:                                               ; preds = %17
  %48 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %47
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %11

71:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @build_insn(%struct.bpf_insn*, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
