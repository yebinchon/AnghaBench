; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_build_int_body.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_build_int_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32*, i32*, i32, i32*, %struct.bpf_prog* }
%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@RVT_VISITED_MASK = common dso_local global i32 0, align 4
@OFFSETS_B_CONV = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*)* @build_int_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_int_body(%struct.jit_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jit_ctx*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %3, align 8
  %8 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %10, %struct.bpf_prog** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %75, %34, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %11
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 1
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i64 %22
  store %struct.bpf_insn* %23, %struct.bpf_insn** %5, align 8
  %24 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RVT_VISITED_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11

37:                                               ; preds = %17
  %38 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OFFSETS_B_CONV, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 4
  %56 = or i32 %51, %55
  %57 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %42, %37
  %64 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %65 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %68 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @build_one_insn(%struct.bpf_insn* %64, %struct.jit_ctx* %65, i32 %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %138

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %11

79:                                               ; preds = %11
  %80 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 4
  %89 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %84, %79
  %96 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %137

100:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %133, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %104 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %101
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %109 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %108, i32 0, i32 1
  %110 = load %struct.bpf_insn*, %struct.bpf_insn** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %110, i64 %112
  store %struct.bpf_insn* %113, %struct.bpf_insn** %5, align 8
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %115 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @BPF_JMP, align 4
  %118 = load i32, i32* @BPF_EXIT, align 4
  %119 = or i32 %117, %118
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %107
  %122 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 4
  %126 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %127 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %121, %107
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %101

136:                                              ; preds = %101
  br label %137

137:                                              ; preds = %136, %95
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %73
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @build_one_insn(%struct.bpf_insn*, %struct.jit_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
