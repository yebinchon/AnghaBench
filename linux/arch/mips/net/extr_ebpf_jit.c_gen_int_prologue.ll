; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_gen_int_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_gen_int_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32 }

@EBPF_SAVE_RA = common dso_local global i32 0, align 4
@EBPF_SAVE_S0 = common dso_local global i32 0, align 4
@EBPF_SAVE_S1 = common dso_local global i32 0, align 4
@EBPF_SAVE_S2 = common dso_local global i32 0, align 4
@EBPF_SAVE_S3 = common dso_local global i32 0, align 4
@EBPF_SAVE_S4 = common dso_local global i32 0, align 4
@MAX_BPF_STACK = common dso_local global i32 0, align 4
@EBPF_SEEN_FP = common dso_local global i32 0, align 4
@addiu = common dso_local global i32 0, align 4
@MIPS_R_V1 = common dso_local global i32 0, align 4
@MIPS_R_ZERO = common dso_local global i32 0, align 4
@MAX_TAIL_CALL_CNT = common dso_local global i32 0, align 4
@daddiu = common dso_local global i32 0, align 4
@MIPS_R_SP = common dso_local global i32 0, align 4
@sd = common dso_local global i32 0, align 4
@sw = common dso_local global i32 0, align 4
@MIPS_R_RA = common dso_local global i32 0, align 4
@MIPS_R_S0 = common dso_local global i32 0, align 4
@MIPS_R_S1 = common dso_local global i32 0, align 4
@MIPS_R_S2 = common dso_local global i32 0, align 4
@MIPS_R_S3 = common dso_local global i32 0, align 4
@MIPS_R_S4 = common dso_local global i32 0, align 4
@EBPF_SEEN_TC = common dso_local global i32 0, align 4
@EBPF_TCC_IN_V1 = common dso_local global i32 0, align 4
@daddu = common dso_local global i32 0, align 4
@addu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*)* @gen_int_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_int_prologue(%struct.jit_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jit_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EBPF_SAVE_RA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 16
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EBPF_SAVE_S0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EBPF_SAVE_S1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EBPF_SAVE_S2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EBPF_SAVE_S3, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EBPF_SAVE_S4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i32, i32* @MAX_BPF_STACK, align 4
  %80 = and i32 %79, 7
  %81 = call i32 @BUILD_BUG_ON(i32 %80)
  %82 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EBPF_SEEN_FP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @MAX_BPF_STACK, align 4
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %100 = load i32, i32* @addiu, align 4
  %101 = load i32, i32* @MIPS_R_V1, align 4
  %102 = load i32, i32* @MIPS_R_ZERO, align 4
  %103 = load i32, i32* @MAX_TAIL_CALL_CNT, align 4
  %104 = call i32 @emit_instr(%struct.jit_ctx* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %91
  %108 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %109 = load i32, i32* @daddiu, align 4
  %110 = load i32, i32* @addiu, align 4
  %111 = load i32, i32* @MIPS_R_SP, align 4
  %112 = load i32, i32* @MIPS_R_SP, align 4
  %113 = load i32, i32* %4, align 4
  %114 = sub nsw i32 0, %113
  %115 = call i32 @emit_instr_long(%struct.jit_ctx* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %114)
  br label %117

116:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %258

117:                                              ; preds = %107
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EBPF_SAVE_RA, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %117
  %129 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %130 = load i32, i32* @sd, align 4
  %131 = load i32, i32* @sw, align 4
  %132 = load i32, i32* @MIPS_R_RA, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @MIPS_R_SP, align 4
  %135 = call i32 @emit_instr_long(%struct.jit_ctx* %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = sub i64 %137, 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %128, %117
  %141 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %142 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @EBPF_SAVE_S0, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %149 = load i32, i32* @sd, align 4
  %150 = load i32, i32* @sw, align 4
  %151 = load i32, i32* @MIPS_R_S0, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @MIPS_R_SP, align 4
  %154 = call i32 @emit_instr_long(%struct.jit_ctx* %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %147, %140
  %160 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %161 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EBPF_SAVE_S1, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %168 = load i32, i32* @sd, align 4
  %169 = load i32, i32* @sw, align 4
  %170 = load i32, i32* @MIPS_R_S1, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @MIPS_R_SP, align 4
  %173 = call i32 @emit_instr_long(%struct.jit_ctx* %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = sub i64 %175, 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %166, %159
  %179 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @EBPF_SAVE_S2, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %178
  %186 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %187 = load i32, i32* @sd, align 4
  %188 = load i32, i32* @sw, align 4
  %189 = load i32, i32* @MIPS_R_S2, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @MIPS_R_SP, align 4
  %192 = call i32 @emit_instr_long(%struct.jit_ctx* %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 %194, 8
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %185, %178
  %198 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %199 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @EBPF_SAVE_S3, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %197
  %205 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %206 = load i32, i32* @sd, align 4
  %207 = load i32, i32* @sw, align 4
  %208 = load i32, i32* @MIPS_R_S3, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @MIPS_R_SP, align 4
  %211 = call i32 @emit_instr_long(%struct.jit_ctx* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = sub i64 %213, 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %204, %197
  %217 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %218 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @EBPF_SAVE_S4, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %216
  %224 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %225 = load i32, i32* @sd, align 4
  %226 = load i32, i32* @sw, align 4
  %227 = load i32, i32* @MIPS_R_S4, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @MIPS_R_SP, align 4
  %230 = call i32 @emit_instr_long(%struct.jit_ctx* %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 %232, 8
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %223, %216
  %236 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %237 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @EBPF_SEEN_TC, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %235
  %243 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %244 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @EBPF_TCC_IN_V1, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %242
  %250 = load %struct.jit_ctx*, %struct.jit_ctx** %3, align 8
  %251 = load i32, i32* @daddu, align 4
  %252 = load i32, i32* @addu, align 4
  %253 = load i32, i32* @MIPS_R_S4, align 4
  %254 = load i32, i32* @MIPS_R_V1, align 4
  %255 = load i32, i32* @MIPS_R_ZERO, align 4
  %256 = call i32 @emit_instr_long(%struct.jit_ctx* %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %249, %242, %235
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %116
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @emit_instr(%struct.jit_ctx*, i32, i32, i32, i32) #1

declare dso_local i32 @emit_instr_long(%struct.jit_ctx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
