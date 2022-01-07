; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_build_int_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_build_int_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32, %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@MIPS_R_V0 = common dso_local global i32 0, align 4
@MIPS_R_RA = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@REG_64BIT = common dso_local global i32 0, align 4
@sll = common dso_local global i32 0, align 4
@EBPF_SAVE_RA = common dso_local global i32 0, align 4
@ld = common dso_local global i32 0, align 4
@lw = common dso_local global i32 0, align 4
@MIPS_R_SP = common dso_local global i32 0, align 4
@EBPF_SAVE_S0 = common dso_local global i32 0, align 4
@MIPS_R_S0 = common dso_local global i32 0, align 4
@EBPF_SAVE_S1 = common dso_local global i32 0, align 4
@MIPS_R_S1 = common dso_local global i32 0, align 4
@EBPF_SAVE_S2 = common dso_local global i32 0, align 4
@MIPS_R_S2 = common dso_local global i32 0, align 4
@EBPF_SAVE_S3 = common dso_local global i32 0, align 4
@MIPS_R_S3 = common dso_local global i32 0, align 4
@EBPF_SAVE_S4 = common dso_local global i32 0, align 4
@MIPS_R_S4 = common dso_local global i32 0, align 4
@jr = common dso_local global i32 0, align 4
@daddiu = common dso_local global i32 0, align 4
@addiu = common dso_local global i32 0, align 4
@nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*, i32)* @build_int_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_int_epilogue(%struct.jit_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.jit_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %10, i32 0, i32 2
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  store %struct.bpf_prog* %12, %struct.bpf_prog** %5, align 8
  %13 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MIPS_R_V0, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MIPS_R_RA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BPF_REG_0, align 4
  %30 = call i32 @get_reg_val_type(%struct.jit_ctx* %25, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @REG_64BIT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %36 = load i32, i32* @sll, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct.jit_ctx*, i32, ...) @emit_instr(%struct.jit_ctx* %35, i32 %36, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EBPF_SAVE_RA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %50 = load i32, i32* @ld, align 4
  %51 = load i32, i32* @lw, align 4
  %52 = load i32, i32* @MIPS_R_RA, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MIPS_R_SP, align 4
  %55 = call i32 @emit_instr_long(%struct.jit_ctx* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %48, %41
  %61 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EBPF_SAVE_S0, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %69 = load i32, i32* @ld, align 4
  %70 = load i32, i32* @lw, align 4
  %71 = load i32, i32* @MIPS_R_S0, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MIPS_R_SP, align 4
  %74 = call i32 @emit_instr_long(%struct.jit_ctx* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %67, %60
  %80 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EBPF_SAVE_S1, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %88 = load i32, i32* @ld, align 4
  %89 = load i32, i32* @lw, align 4
  %90 = load i32, i32* @MIPS_R_S1, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MIPS_R_SP, align 4
  %93 = call i32 @emit_instr_long(%struct.jit_ctx* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %86, %79
  %99 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @EBPF_SAVE_S2, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %107 = load i32, i32* @ld, align 4
  %108 = load i32, i32* @lw, align 4
  %109 = load i32, i32* @MIPS_R_S2, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @MIPS_R_SP, align 4
  %112 = call i32 @emit_instr_long(%struct.jit_ctx* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %114, 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %105, %98
  %118 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EBPF_SAVE_S3, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %126 = load i32, i32* @ld, align 4
  %127 = load i32, i32* @lw, align 4
  %128 = load i32, i32* @MIPS_R_S3, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MIPS_R_SP, align 4
  %131 = call i32 @emit_instr_long(%struct.jit_ctx* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %124, %117
  %137 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @EBPF_SAVE_S4, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %145 = load i32, i32* @ld, align 4
  %146 = load i32, i32* @lw, align 4
  %147 = load i32, i32* @MIPS_R_S4, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @MIPS_R_SP, align 4
  %150 = call i32 @emit_instr_long(%struct.jit_ctx* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 %152, 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %143, %136
  %156 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %157 = load i32, i32* @jr, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 (%struct.jit_ctx*, i32, ...) @emit_instr(%struct.jit_ctx* %156, i32 %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %164 = load i32, i32* @daddiu, align 4
  %165 = load i32, i32* @addiu, align 4
  %166 = load i32, i32* @MIPS_R_SP, align 4
  %167 = load i32, i32* @MIPS_R_SP, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @emit_instr_long(%struct.jit_ctx* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  br label %174

170:                                              ; preds = %155
  %171 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %172 = load i32, i32* @nop, align 4
  %173 = call i32 (%struct.jit_ctx*, i32, ...) @emit_instr(%struct.jit_ctx* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %162
  ret i32 0
}

declare dso_local i32 @get_reg_val_type(%struct.jit_ctx*, i32, i32) #1

declare dso_local i32 @emit_instr(%struct.jit_ctx*, i32, ...) #1

declare dso_local i32 @emit_instr_long(%struct.jit_ctx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
