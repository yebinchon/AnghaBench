; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i64, i64, %struct.bpf_prog* }
%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BASE_STACKFRAME = common dso_local global i32 0, align 4
@SAVE = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@BPF_TAILCALL_CNT_SP_OFF = common dso_local global i32 0, align 4
@ST32 = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@bpf2sparc = common dso_local global i32* null, align 8
@BPF_REG_FP = common dso_local global i64 0, align 8
@ADD = common dso_local global i32 0, align 4
@FP = common dso_local global i32 0, align 4
@STACK_BIAS = common dso_local global i32 0, align 4
@I0 = common dso_local global i32 0, align 4
@O0 = common dso_local global i32 0, align 4
@I1 = common dso_local global i32 0, align 4
@O1 = common dso_local global i32 0, align 4
@I2 = common dso_local global i32 0, align 4
@O2 = common dso_local global i32 0, align 4
@I3 = common dso_local global i32 0, align 4
@O3 = common dso_local global i32 0, align 4
@I4 = common dso_local global i32 0, align 4
@O4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit_ctx*)* @build_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_prologue(%struct.jit_ctx* %0) #0 {
  %2 = alloca %struct.jit_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %2, align 8
  %8 = load i32, i32* @BASE_STACKFRAME, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %1
  %19 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %19, i32 0, i32 2
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %20, align 8
  store %struct.bpf_prog* %21, %struct.bpf_prog** %4, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @round_up(i32 %27, i32 16)
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %13
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @SAVE, align 4
  %43 = load i32, i32* @IMMED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SP, align 4
  %46 = call i32 @RS1(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @S13(i32 %49)
  %51 = or i32 %47, %50
  %52 = load i32, i32* @SP, align 4
  %53 = call i32 @RD(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %56 = call i32 @emit(i32 %54, %struct.jit_ctx* %55)
  %57 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %41
  %62 = load i32, i32* @BPF_TAILCALL_CNT_SP_OFF, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @ST32, align 4
  %64 = load i32, i32* @IMMED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SP, align 4
  %67 = call i32 @RS1(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @S13(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* @G0, align 4
  %73 = call i32 @RD(i32 %72)
  %74 = or i32 %71, %73
  %75 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %76 = call i32 @emit(i32 %74, %struct.jit_ctx* %75)
  br label %80

77:                                               ; preds = %41
  %78 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %79 = call i32 @emit_nop(%struct.jit_ctx* %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load i32*, i32** @bpf2sparc, align 8
  %87 = load i64, i64* @BPF_REG_FP, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @ADD, align 4
  %91 = load i32, i32* @IMMED, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FP, align 4
  %94 = call i32 @RS1(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* @STACK_BIAS, align 4
  %97 = call i32 @S13(i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @RD(i32 %99)
  %101 = or i32 %98, %100
  %102 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %103 = call i32 @emit(i32 %101, %struct.jit_ctx* %102)
  br label %107

104:                                              ; preds = %80
  %105 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %106 = call i32 @emit_nop(%struct.jit_ctx* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load i32, i32* @I0, align 4
  %109 = load i32, i32* @O0, align 4
  %110 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %111 = call i32 @emit_reg_move(i32 %108, i32 %109, %struct.jit_ctx* %110)
  %112 = load i32, i32* @I1, align 4
  %113 = load i32, i32* @O1, align 4
  %114 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %115 = call i32 @emit_reg_move(i32 %112, i32 %113, %struct.jit_ctx* %114)
  %116 = load i32, i32* @I2, align 4
  %117 = load i32, i32* @O2, align 4
  %118 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %119 = call i32 @emit_reg_move(i32 %116, i32 %117, %struct.jit_ctx* %118)
  %120 = load i32, i32* @I3, align 4
  %121 = load i32, i32* @O3, align 4
  %122 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %123 = call i32 @emit_reg_move(i32 %120, i32 %121, %struct.jit_ctx* %122)
  %124 = load i32, i32* @I4, align 4
  %125 = load i32, i32* @O4, align 4
  %126 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %127 = call i32 @emit_reg_move(i32 %124, i32 %125, %struct.jit_ctx* %126)
  ret void
}

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @emit_nop(%struct.jit_ctx*) #1

declare dso_local i32 @emit_reg_move(i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
