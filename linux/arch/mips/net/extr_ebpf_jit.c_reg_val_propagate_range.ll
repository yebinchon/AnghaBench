; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_reg_val_propagate_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_reg_val_propagate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32*, %struct.bpf_prog* }
%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32, i32, i32 }

@RVT_VISITED_MASK = common dso_local global i32 0, align 4
@REG_32BIT = common dso_local global i32 0, align 4
@REG_32BIT_POS = common dso_local global i32 0, align 4
@REG_64BIT = common dso_local global i32 0, align 4
@RVT_DONE = common dso_local global i32 0, align 4
@REG_64BIT_32BIT = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@S32_MAX = common dso_local global i32 0, align 4
@S32_MIN = common dso_local global i32 0, align 4
@RVT_BRANCH_TAKEN = common dso_local global i32 0, align 4
@RVT_FALL_THROUGH = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_REG_5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unhandled BPF_JMP case.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*, i32, i32, i32)* @reg_val_propagate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_val_propagate_range(%struct.jit_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %17, i32 0, i32 1
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %18, align 8
  store %struct.bpf_prog* %19, %struct.bpf_prog** %10, align 8
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %433, %4
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %28 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %436

31:                                               ; preds = %25
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RVT_VISITED_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %46 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %45, i32 0, i32 1
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 %49
  store %struct.bpf_insn* %50, %struct.bpf_insn** %11, align 8
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BPF_CLASS(i32 %53)
  switch i32 %54, label %424 [
    i32 162, label %55
    i32 161, label %135
    i32 139, label %185
    i32 138, label %300
    i32 146, label %331
  ]

55:                                               ; preds = %31
  %56 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %57 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BPF_OP(i32 %58)
  switch i32 %59, label %127 [
    i32 163, label %60
    i32 130, label %60
    i32 134, label %60
    i32 157, label %60
    i32 132, label %60
    i32 160, label %60
    i32 137, label %60
    i32 131, label %60
    i32 133, label %60
    i32 136, label %60
    i32 128, label %60
    i32 135, label %66
    i32 155, label %97
  ]

60:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @REG_32BIT, align 4
  %65 = call i32 @set_reg_val_type(i32* %12, i32 %63, i32 %64)
  br label %127

66:                                               ; preds = %55
  %67 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %68 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BPF_SRC(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %74 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @REG_32BIT, align 4
  %77 = call i32 @set_reg_val_type(i32* %12, i32 %75, i32 %76)
  br label %96

78:                                               ; preds = %66
  %79 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %80 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @REG_32BIT_POS, align 4
  %88 = call i32 @set_reg_val_type(i32* %12, i32 %86, i32 %87)
  br label %95

89:                                               ; preds = %78
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @REG_32BIT, align 4
  %94 = call i32 @set_reg_val_type(i32* %12, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %72
  br label %127

97:                                               ; preds = %55
  %98 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 64
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @REG_64BIT, align 4
  %107 = call i32 @set_reg_val_type(i32* %12, i32 %105, i32 %106)
  br label %126

108:                                              ; preds = %97
  %109 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %110 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %115 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @REG_32BIT, align 4
  %118 = call i32 @set_reg_val_type(i32* %12, i32 %116, i32 %117)
  br label %125

119:                                              ; preds = %108
  %120 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %121 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @REG_32BIT_POS, align 4
  %124 = call i32 @set_reg_val_type(i32* %12, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %102
  br label %127

127:                                              ; preds = %55, %126, %96, %60
  %128 = load i32, i32* @RVT_DONE, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %432

135:                                              ; preds = %31
  %136 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %137 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BPF_OP(i32 %138)
  switch i32 %139, label %171 [
    i32 135, label %140
  ]

140:                                              ; preds = %135
  %141 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %142 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @BPF_SRC(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %148 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @REG_64BIT, align 4
  %151 = call i32 @set_reg_val_type(i32* %12, i32 %149, i32 %150)
  br label %170

152:                                              ; preds = %140
  %153 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %159 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @REG_32BIT_POS, align 4
  %162 = call i32 @set_reg_val_type(i32* %12, i32 %160, i32 %161)
  br label %169

163:                                              ; preds = %152
  %164 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %165 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @REG_64BIT_32BIT, align 4
  %168 = call i32 @set_reg_val_type(i32* %12, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %146
  br label %177

171:                                              ; preds = %135
  %172 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %173 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @REG_64BIT, align 4
  %176 = call i32 @set_reg_val_type(i32* %12, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %171, %170
  %178 = load i32, i32* @RVT_DONE, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %178
  store i32 %184, i32* %182, align 4
  br label %432

185:                                              ; preds = %31
  %186 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %187 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BPF_SIZE(i32 %188)
  switch i32 %189, label %292 [
    i32 156, label %190
    i32 159, label %257
    i32 153, label %257
    i32 129, label %263
  ]

190:                                              ; preds = %185
  %191 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %192 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @BPF_MODE(i32 %193)
  %195 = load i32, i32* @BPF_IMM, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %250

197:                                              ; preds = %190
  %198 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %199 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %202 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %201, i64 1
  %203 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 32
  %206 = or i32 %200, %205
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %197
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* @S32_MAX, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %215 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @REG_32BIT_POS, align 4
  %218 = call i32 @set_reg_val_type(i32* %12, i32 %216, i32 %217)
  br label %240

219:                                              ; preds = %209, %197
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* @S32_MIN, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %219
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* @S32_MAX, align 4
  %226 = icmp sle i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %229 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @REG_64BIT_32BIT, align 4
  %232 = call i32 @set_reg_val_type(i32* %12, i32 %230, i32 %231)
  br label %239

233:                                              ; preds = %223, %219
  %234 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %235 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @REG_64BIT, align 4
  %238 = call i32 @set_reg_val_type(i32* %12, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %233, %227
  br label %240

240:                                              ; preds = %239, %213
  %241 = load i32, i32* @RVT_DONE, align 4
  %242 = load i32*, i32** %13, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %241
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %14, align 4
  br label %256

250:                                              ; preds = %190
  %251 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %252 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @REG_64BIT, align 4
  %255 = call i32 @set_reg_val_type(i32* %12, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %250, %240
  br label %292

257:                                              ; preds = %185, %185
  %258 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %259 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @REG_32BIT_POS, align 4
  %262 = call i32 @set_reg_val_type(i32* %12, i32 %260, i32 %261)
  br label %292

263:                                              ; preds = %185
  %264 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %265 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @BPF_MODE(i32 %266)
  %268 = load i32, i32* @BPF_IMM, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %285

270:                                              ; preds = %263
  %271 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %272 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %275 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i32, i32* @REG_32BIT_POS, align 4
  br label %282

280:                                              ; preds = %270
  %281 = load i32, i32* @REG_32BIT, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  %284 = call i32 @set_reg_val_type(i32* %12, i32 %273, i32 %283)
  br label %291

285:                                              ; preds = %263
  %286 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %287 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @REG_32BIT, align 4
  %290 = call i32 @set_reg_val_type(i32* %12, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %285, %282
  br label %292

292:                                              ; preds = %185, %291, %257, %256
  %293 = load i32, i32* @RVT_DONE, align 4
  %294 = load i32*, i32** %13, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %293
  store i32 %299, i32* %297, align 4
  br label %432

300:                                              ; preds = %31
  %301 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %302 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @BPF_SIZE(i32 %303)
  switch i32 %304, label %323 [
    i32 156, label %305
    i32 159, label %311
    i32 153, label %311
    i32 129, label %317
  ]

305:                                              ; preds = %300
  %306 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %307 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @REG_64BIT, align 4
  %310 = call i32 @set_reg_val_type(i32* %12, i32 %308, i32 %309)
  br label %323

311:                                              ; preds = %300, %300
  %312 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %313 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @REG_32BIT_POS, align 4
  %316 = call i32 @set_reg_val_type(i32* %12, i32 %314, i32 %315)
  br label %323

317:                                              ; preds = %300
  %318 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %319 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @REG_32BIT, align 4
  %322 = call i32 @set_reg_val_type(i32* %12, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %300, %317, %311, %305
  %324 = load i32, i32* @RVT_DONE, align 4
  %325 = load i32*, i32** %13, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %324
  store i32 %330, i32* %328, align 4
  br label %432

331:                                              ; preds = %31
  %332 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %333 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @BPF_OP(i32 %334)
  switch i32 %335, label %414 [
    i32 154, label %336
    i32 152, label %352
    i32 151, label %365
    i32 149, label %365
    i32 150, label %365
    i32 147, label %365
    i32 148, label %365
    i32 144, label %365
    i32 145, label %365
    i32 142, label %365
    i32 143, label %365
    i32 140, label %365
    i32 141, label %365
    i32 158, label %390
  ]

336:                                              ; preds = %331
  %337 = load i32, i32* @RVT_DONE, align 4
  %338 = load i32, i32* %12, align 4
  %339 = or i32 %337, %338
  %340 = load i32*, i32** %13, align 8
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  store i32 %339, i32* %343, align 4
  %344 = load i32, i32* %12, align 4
  %345 = load i32*, i32** %13, align 8
  %346 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %347 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  store i32 %344, i32* %350, align 4
  %351 = load i32, i32* %14, align 4
  store i32 %351, i32* %5, align 4
  br label %438

352:                                              ; preds = %331
  %353 = load i32, i32* @RVT_DONE, align 4
  %354 = load i32*, i32** %13, align 8
  %355 = load i32, i32* %14, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %353
  store i32 %359, i32* %357, align 4
  %360 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %361 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %14, align 4
  %364 = add nsw i32 %363, %362
  store i32 %364, i32* %14, align 4
  br label %423

365:                                              ; preds = %331, %331, %331, %331, %331, %331, %331, %331, %331, %331, %331
  %366 = load i32, i32* %9, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %365
  %369 = load i32, i32* @RVT_BRANCH_TAKEN, align 4
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %14, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %369
  store i32 %375, i32* %373, align 4
  %376 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %377 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %14, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %389

381:                                              ; preds = %365
  %382 = load i32, i32* @RVT_FALL_THROUGH, align 4
  %383 = load i32*, i32** %13, align 8
  %384 = load i32, i32* %14, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %382
  store i32 %388, i32* %386, align 4
  br label %389

389:                                              ; preds = %381, %368
  br label %423

390:                                              ; preds = %331
  %391 = load i32, i32* @BPF_REG_0, align 4
  %392 = load i32, i32* @REG_64BIT, align 4
  %393 = call i32 @set_reg_val_type(i32* %12, i32 %391, i32 %392)
  %394 = load i32, i32* @BPF_REG_0, align 4
  store i32 %394, i32* %15, align 4
  br label %395

395:                                              ; preds = %403, %390
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* @BPF_REG_5, align 4
  %398 = icmp sle i32 %396, %397
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* @REG_64BIT, align 4
  %402 = call i32 @set_reg_val_type(i32* %12, i32 %400, i32 %401)
  br label %403

403:                                              ; preds = %399
  %404 = load i32, i32* %15, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %15, align 4
  br label %395

406:                                              ; preds = %395
  %407 = load i32, i32* @RVT_DONE, align 4
  %408 = load i32*, i32** %13, align 8
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, %407
  store i32 %413, i32* %411, align 4
  br label %423

414:                                              ; preds = %331
  %415 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %416 = load i32, i32* @RVT_DONE, align 4
  %417 = load i32*, i32** %13, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %416
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %414, %406, %389, %352
  br label %432

424:                                              ; preds = %31
  %425 = load i32, i32* @RVT_DONE, align 4
  %426 = load i32*, i32** %13, align 8
  %427 = load i32, i32* %14, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %425
  store i32 %431, i32* %429, align 4
  br label %432

432:                                              ; preds = %424, %423, %323, %292, %177, %127
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %14, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %14, align 4
  br label %25

436:                                              ; preds = %25
  %437 = load i32, i32* %14, align 4
  store i32 %437, i32* %5, align 4
  br label %438

438:                                              ; preds = %436, %336
  %439 = load i32, i32* %5, align 4
  ret i32 %439
}

declare dso_local i32 @BPF_CLASS(i32) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @set_reg_val_type(i32*, i32, i32) #1

declare dso_local i32 @BPF_SRC(i32) #1

declare dso_local i32 @BPF_SIZE(i32) #1

declare dso_local i32 @BPF_MODE(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
