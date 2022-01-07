; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_microMIPS32_to_MIPS32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_microMIPS32_to_MIPS32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8* }
%struct.TYPE_24__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i8* }

@ldc1_op = common dso_local global i32 0, align 4
@lwc1_op = common dso_local global i32 0, align 4
@sdc1_op = common dso_local global i32 0, align 4
@swc1_op = common dso_local global i32 0, align 4
@mm_bc1f_op = common dso_local global i32 0, align 4
@mm_bc1t_op = common dso_local global i32 0, align 4
@cop1_op = common dso_local global i8* null, align 8
@bc_op = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@madd_s_op = common dso_local global i32 0, align 4
@madd_d_op = common dso_local global i32 0, align 4
@nmadd_s_op = common dso_local global i32 0, align 4
@nmadd_d_op = common dso_local global i32 0, align 4
@msub_s_op = common dso_local global i32 0, align 4
@msub_d_op = common dso_local global i32 0, align 4
@nmsub_s_op = common dso_local global i32 0, align 4
@nmsub_d_op = common dso_local global i32 0, align 4
@cop1x_op = common dso_local global i8* null, align 8
@mm_ldxc1_op = common dso_local global i32 0, align 4
@ldxc1_op = common dso_local global i32 0, align 4
@mm_sdxc1_op = common dso_local global i32 0, align 4
@sdxc1_op = common dso_local global i32 0, align 4
@mm_lwxc1_op = common dso_local global i32 0, align 4
@lwxc1_op = common dso_local global i32 0, align 4
@mm_swxc1_op = common dso_local global i32 0, align 4
@swxc1_op = common dso_local global i32 0, align 4
@mm_fmovt_op = common dso_local global i32 0, align 4
@mm_fmovf_op = common dso_local global i32 0, align 4
@sdps_format = common dso_local global i8** null, align 8
@fmovc_op = common dso_local global i32 0, align 4
@mm_fadd_op = common dso_local global i32 0, align 4
@fadd_op = common dso_local global i32 0, align 4
@mm_fsub_op = common dso_local global i32 0, align 4
@fsub_op = common dso_local global i32 0, align 4
@mm_fmul_op = common dso_local global i32 0, align 4
@fmul_op = common dso_local global i32 0, align 4
@mm_fdiv_op = common dso_local global i32 0, align 4
@fdiv_op = common dso_local global i32 0, align 4
@mm_fmovn_op = common dso_local global i32 0, align 4
@fmovn_op = common dso_local global i32 0, align 4
@mm_fmovz_op = common dso_local global i32 0, align 4
@fmovz_op = common dso_local global i32 0, align 4
@spec_op = common dso_local global i8* null, align 8
@movc_op = common dso_local global i32 0, align 4
@fcvtd_op = common dso_local global i32 0, align 4
@swl_format = common dso_local global i32* null, align 8
@fcvts_op = common dso_local global i32 0, align 4
@dwl_format = common dso_local global i32* null, align 8
@fmov_op = common dso_local global i32 0, align 4
@fabs_op = common dso_local global i32 0, align 4
@fneg_op = common dso_local global i32 0, align 4
@ffloorl_op = common dso_local global i32 0, align 4
@ffloor_op = common dso_local global i32 0, align 4
@fceill_op = common dso_local global i32 0, align 4
@fceil_op = common dso_local global i32 0, align 4
@ftruncl_op = common dso_local global i32 0, align 4
@ftrunc_op = common dso_local global i32 0, align 4
@froundl_op = common dso_local global i32 0, align 4
@fround_op = common dso_local global i32 0, align 4
@fcvtl_op = common dso_local global i32 0, align 4
@fcvtw_op = common dso_local global i32 0, align 4
@sd_format = common dso_local global i32* null, align 8
@frsqrt_op = common dso_local global i32 0, align 4
@fsqrt_op = common dso_local global i32 0, align 4
@frecip_op = common dso_local global i32 0, align 4
@mfc_op = common dso_local global i32 0, align 4
@mtc_op = common dso_local global i32 0, align 4
@cfc_op = common dso_local global i32 0, align 4
@ctc_op = common dso_local global i32 0, align 4
@mfhc_op = common dso_local global i32 0, align 4
@mthc_op = common dso_local global i32 0, align 4
@MM_MIPS32_COND_FC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*)* @microMIPS32_to_MIPS32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microMIPS32_to_MIPS32(%union.mips_instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.mips_instruction*, align 8
  %4 = alloca %union.mips_instruction, align 8
  %5 = alloca %union.mips_instruction, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.mips_instruction* %0, %union.mips_instruction** %3, align 8
  %9 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %10 = bitcast %union.mips_instruction* %4 to i8*
  %11 = bitcast %union.mips_instruction* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %12 = bitcast %union.mips_instruction* %5 to i8*
  %13 = bitcast %union.mips_instruction* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 32, i1 false)
  %14 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %802 [
    i32 141, label %17
    i32 140, label %31
    i32 129, label %45
    i32 128, label %59
    i32 130, label %73
    i32 131, label %104
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @ldc1_op, align 4
  %19 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %804

31:                                               ; preds = %1
  %32 = load i32, i32* @lwc1_op, align 4
  %33 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %804

45:                                               ; preds = %1
  %46 = load i32, i32* @sdc1_op, align 4
  %47 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %804

59:                                               ; preds = %1
  %60 = load i32, i32* @swc1_op, align 4
  %61 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %union.mips_instruction* %5 to %struct.TYPE_19__*
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %804

73:                                               ; preds = %1
  %74 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @mm_bc1f_op, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @mm_bc1t_op, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79, %73
  %86 = load i8*, i8** @cop1_op, align 8
  %87 = bitcast %union.mips_instruction* %5 to %struct.TYPE_18__*
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @bc_op, align 4
  %90 = bitcast %union.mips_instruction* %5 to %struct.TYPE_18__*
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = bitcast %union.mips_instruction* %4 to %struct.TYPE_19__*
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @mm_bc1t_op, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = bitcast %union.mips_instruction* %5 to %struct.TYPE_18__*
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %103

101:                                              ; preds = %79
  %102 = load i32, i32* @SIGILL, align 4
  store i32 %102, i32* %2, align 4
  br label %808

103:                                              ; preds = %85
  br label %804

104:                                              ; preds = %1
  %105 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %799 [
    i32 180, label %108
    i32 177, label %108
    i32 179, label %108
    i32 176, label %108
    i32 174, label %108
    i32 172, label %108
    i32 173, label %108
    i32 171, label %108
    i32 178, label %181
    i32 175, label %242
    i32 170, label %297
    i32 169, label %369
    i32 168, label %423
    i32 167, label %763
  ]

108:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104
  %109 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 180
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @madd_s_op, align 4
  store i32 %115, i32* %6, align 4
  br label %154

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 177
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @madd_d_op, align 4
  store i32 %120, i32* %6, align 4
  br label %153

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 179
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @nmadd_s_op, align 4
  store i32 %125, i32* %6, align 4
  br label %152

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 176
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @nmadd_d_op, align 4
  store i32 %130, i32* %6, align 4
  br label %151

131:                                              ; preds = %126
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 174
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @msub_s_op, align 4
  store i32 %135, i32* %6, align 4
  br label %150

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 172
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @msub_d_op, align 4
  store i32 %140, i32* %6, align 4
  br label %149

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 173
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @nmsub_s_op, align 4
  store i32 %145, i32* %6, align 4
  br label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @nmsub_d_op, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %139
  br label %150

150:                                              ; preds = %149, %134
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %124
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %153, %114
  %155 = load i8*, i8** @cop1x_op, align 8
  %156 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = bitcast %union.mips_instruction* %4 to %struct.TYPE_20__*
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = bitcast %union.mips_instruction* %4 to %struct.TYPE_20__*
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = bitcast %union.mips_instruction* %4 to %struct.TYPE_20__*
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = bitcast %union.mips_instruction* %4 to %struct.TYPE_20__*
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %6, align 4
  %179 = bitcast %union.mips_instruction* %5 to %struct.TYPE_21__*
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %801

181:                                              ; preds = %104
  store i32 -1, i32* %6, align 4
  %182 = bitcast %union.mips_instruction* %4 to %struct.TYPE_22__*
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 7
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @mm_ldxc1_op, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* @ldxc1_op, align 4
  store i32 %190, i32* %6, align 4
  br label %212

191:                                              ; preds = %181
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @mm_sdxc1_op, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @sdxc1_op, align 4
  store i32 %196, i32* %6, align 4
  br label %211

197:                                              ; preds = %191
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @mm_lwxc1_op, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @lwxc1_op, align 4
  store i32 %202, i32* %6, align 4
  br label %210

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @mm_swxc1_op, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @swxc1_op, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %203
  br label %210

210:                                              ; preds = %209, %201
  br label %211

211:                                              ; preds = %210, %195
  br label %212

212:                                              ; preds = %211, %189
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %239

215:                                              ; preds = %212
  %216 = load i8*, i8** @cop1x_op, align 8
  %217 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 5
  store i8* %216, i8** %218, align 8
  %219 = bitcast %union.mips_instruction* %4 to %struct.TYPE_22__*
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = bitcast %union.mips_instruction* %4 to %struct.TYPE_22__*
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = bitcast %union.mips_instruction* %4 to %struct.TYPE_22__*
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %6, align 4
  %237 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  br label %241

239:                                              ; preds = %212
  %240 = load i32, i32* @SIGILL, align 4
  store i32 %240, i32* %2, align 4
  br label %808

241:                                              ; preds = %215
  br label %801

242:                                              ; preds = %104
  store i32 -1, i32* %8, align 4
  %243 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @mm_fmovt_op, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  store i32 1, i32* %8, align 4
  br label %257

249:                                              ; preds = %242
  %250 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @mm_fmovf_op, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store i32 0, i32* %8, align 4
  br label %256

256:                                              ; preds = %255, %249
  br label %257

257:                                              ; preds = %256, %248
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, -1
  br i1 %259, label %260, label %294

260:                                              ; preds = %257
  %261 = load i8*, i8** @cop1_op, align 8
  %262 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 5
  store i8* %261, i8** %263, align 8
  %264 = load i8**, i8*** @sdps_format, align 8
  %265 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i8*, i8** %264, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = shl i32 %275, 2
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %276, %277
  %279 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 4
  store i32 %283, i32* %285, align 8
  %286 = bitcast %union.mips_instruction* %4 to %struct.TYPE_23__*
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* @fmovc_op, align 4
  %292 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  br label %296

294:                                              ; preds = %257
  %295 = load i32, i32* @SIGILL, align 4
  store i32 %295, i32* %2, align 4
  br label %808

296:                                              ; preds = %260
  br label %801

297:                                              ; preds = %104
  store i32 -1, i32* %6, align 4
  %298 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @mm_fadd_op, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = load i32, i32* @fadd_op, align 4
  store i32 %304, i32* %6, align 4
  br label %332

305:                                              ; preds = %297
  %306 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @mm_fsub_op, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = load i32, i32* @fsub_op, align 4
  store i32 %312, i32* %6, align 4
  br label %331

313:                                              ; preds = %305
  %314 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @mm_fmul_op, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = load i32, i32* @fmul_op, align 4
  store i32 %320, i32* %6, align 4
  br label %330

321:                                              ; preds = %313
  %322 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @mm_fdiv_op, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %321
  %328 = load i32, i32* @fdiv_op, align 4
  store i32 %328, i32* %6, align 4
  br label %329

329:                                              ; preds = %327, %321
  br label %330

330:                                              ; preds = %329, %319
  br label %331

331:                                              ; preds = %330, %311
  br label %332

332:                                              ; preds = %331, %303
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, -1
  br i1 %334, label %335, label %366

335:                                              ; preds = %332
  %336 = load i8*, i8** @cop1_op, align 8
  %337 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 5
  store i8* %336, i8** %338, align 8
  %339 = load i8**, i8*** @sdps_format, align 8
  %340 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds i8*, i8** %339, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = ptrtoint i8* %344 to i32
  %346 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 8
  %348 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 4
  %353 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 4
  store i32 %355, i32* %357, align 8
  %358 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 2
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* %6, align 4
  %364 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 3
  store i32 %363, i32* %365, align 4
  br label %368

366:                                              ; preds = %332
  %367 = load i32, i32* @SIGILL, align 4
  store i32 %367, i32* %2, align 4
  br label %808

368:                                              ; preds = %335
  br label %801

369:                                              ; preds = %104
  store i32 -1, i32* %6, align 4
  %370 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @mm_fmovn_op, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %369
  %376 = load i32, i32* @fmovn_op, align 4
  store i32 %376, i32* %6, align 4
  br label %386

377:                                              ; preds = %369
  %378 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @mm_fmovz_op, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %377
  %384 = load i32, i32* @fmovz_op, align 4
  store i32 %384, i32* %6, align 4
  br label %385

385:                                              ; preds = %383, %377
  br label %386

386:                                              ; preds = %385, %375
  %387 = load i32, i32* %6, align 4
  %388 = icmp ne i32 %387, -1
  br i1 %388, label %389, label %420

389:                                              ; preds = %386
  %390 = load i8*, i8** @cop1_op, align 8
  %391 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 5
  store i8* %390, i8** %392, align 8
  %393 = load i8**, i8*** @sdps_format, align 8
  %394 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds i8*, i8** %393, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = ptrtoint i8* %398 to i32
  %400 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  %407 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 4
  store i32 %409, i32* %411, align 8
  %412 = bitcast %union.mips_instruction* %4 to %struct.TYPE_24__*
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  %417 = load i32, i32* %6, align 4
  %418 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 3
  store i32 %417, i32* %419, align 4
  br label %422

420:                                              ; preds = %386
  %421 = load i32, i32* @SIGILL, align 4
  store i32 %421, i32* %2, align 4
  br label %808

422:                                              ; preds = %389
  br label %801

423:                                              ; preds = %104
  %424 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  switch i32 %426, label %760 [
    i32 137, label %427
    i32 136, label %427
    i32 135, label %427
    i32 134, label %427
    i32 160, label %462
    i32 159, label %462
    i32 157, label %462
    i32 156, label %462
    i32 152, label %506
    i32 151, label %506
    i32 164, label %506
    i32 163, label %506
    i32 150, label %506
    i32 149, label %506
    i32 154, label %553
    i32 153, label %553
    i32 162, label %553
    i32 161, label %553
    i32 143, label %553
    i32 142, label %553
    i32 147, label %553
    i32 146, label %553
    i32 158, label %553
    i32 155, label %553
    i32 145, label %653
    i32 144, label %653
    i32 148, label %653
    i32 139, label %698
    i32 133, label %698
    i32 166, label %698
    i32 165, label %698
    i32 138, label %698
    i32 132, label %698
  ]

427:                                              ; preds = %423, %423, %423, %423
  %428 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, 127
  %432 = icmp eq i32 %431, 137
  br i1 %432, label %433, label %434

433:                                              ; preds = %427
  store i32 0, i32* %8, align 4
  br label %435

434:                                              ; preds = %427
  store i32 1, i32* %8, align 4
  br label %435

435:                                              ; preds = %434, %433
  %436 = load i8*, i8** @spec_op, align 8
  %437 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 5
  store i8* %436, i8** %438, align 8
  %439 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %443 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i32 0, i32 4
  store i32 %441, i32* %443, align 8
  %444 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = shl i32 %446, 2
  %448 = load i32, i32* %8, align 4
  %449 = add nsw i32 %447, %448
  %450 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %450, i32 0, i32 0
  store i32 %449, i32* %451, align 8
  %452 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 1
  store i32 %454, i32* %456, align 4
  %457 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 3
  store i32 0, i32* %458, align 4
  %459 = load i32, i32* @movc_op, align 4
  %460 = bitcast %union.mips_instruction* %5 to %struct.TYPE_25__*
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 2
  store i32 %459, i32* %461, align 8
  br label %762

462:                                              ; preds = %423, %423, %423, %423
  %463 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, 127
  %467 = icmp eq i32 %466, 160
  br i1 %467, label %468, label %476

468:                                              ; preds = %462
  %469 = load i32, i32* @fcvtd_op, align 4
  store i32 %469, i32* %6, align 4
  %470 = load i32*, i32** @swl_format, align 8
  %471 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %472 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds i32, i32* %470, i64 %473
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %7, align 4
  br label %484

476:                                              ; preds = %462
  %477 = load i32, i32* @fcvts_op, align 4
  store i32 %477, i32* %6, align 4
  %478 = load i32*, i32** @dwl_format, align 8
  %479 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %480 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %7, align 4
  br label %484

484:                                              ; preds = %476, %468
  %485 = load i8*, i8** @cop1_op, align 8
  %486 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %487 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %486, i32 0, i32 5
  store i8* %485, i8** %487, align 8
  %488 = load i32, i32* %7, align 4
  %489 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  store i32 %488, i32* %490, align 8
  %491 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 1
  store i32 0, i32* %492, align 4
  %493 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %494 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 4
  %496 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 4
  store i32 %495, i32* %497, align 8
  %498 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %499 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 2
  store i32 %500, i32* %502, align 8
  %503 = load i32, i32* %6, align 4
  %504 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %505 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %504, i32 0, i32 3
  store i32 %503, i32* %505, align 4
  br label %762

506:                                              ; preds = %423, %423, %423, %423, %423, %423
  %507 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = and i32 %509, 127
  %511 = icmp eq i32 %510, 152
  br i1 %511, label %512, label %514

512:                                              ; preds = %506
  %513 = load i32, i32* @fmov_op, align 4
  store i32 %513, i32* %6, align 4
  br label %525

514:                                              ; preds = %506
  %515 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = and i32 %517, 127
  %519 = icmp eq i32 %518, 164
  br i1 %519, label %520, label %522

520:                                              ; preds = %514
  %521 = load i32, i32* @fabs_op, align 4
  store i32 %521, i32* %6, align 4
  br label %524

522:                                              ; preds = %514
  %523 = load i32, i32* @fneg_op, align 4
  store i32 %523, i32* %6, align 4
  br label %524

524:                                              ; preds = %522, %520
  br label %525

525:                                              ; preds = %524, %512
  %526 = load i8*, i8** @cop1_op, align 8
  %527 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %528 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %527, i32 0, i32 5
  store i8* %526, i8** %528, align 8
  %529 = load i8**, i8*** @sdps_format, align 8
  %530 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %531 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = getelementptr inbounds i8*, i8** %529, i64 %532
  %534 = load i8*, i8** %533, align 8
  %535 = ptrtoint i8* %534 to i32
  %536 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %537 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %536, i32 0, i32 0
  store i32 %535, i32* %537, align 8
  %538 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %539 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %538, i32 0, i32 1
  store i32 0, i32* %539, align 4
  %540 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %541 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 4
  %543 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %544 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %543, i32 0, i32 4
  store i32 %542, i32* %544, align 8
  %545 = bitcast %union.mips_instruction* %4 to %struct.TYPE_26__*
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 8
  %548 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %549 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %548, i32 0, i32 2
  store i32 %547, i32* %549, align 8
  %550 = load i32, i32* %6, align 4
  %551 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 3
  store i32 %550, i32* %552, align 4
  br label %762

553:                                              ; preds = %423, %423, %423, %423, %423, %423, %423, %423, %423, %423
  %554 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %555 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = icmp eq i32 %556, 154
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = load i32, i32* @ffloorl_op, align 4
  store i32 %559, i32* %6, align 4
  br label %626

560:                                              ; preds = %553
  %561 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %562 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = icmp eq i32 %563, 153
  br i1 %564, label %565, label %567

565:                                              ; preds = %560
  %566 = load i32, i32* @ffloor_op, align 4
  store i32 %566, i32* %6, align 4
  br label %625

567:                                              ; preds = %560
  %568 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %569 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = icmp eq i32 %570, 162
  br i1 %571, label %572, label %574

572:                                              ; preds = %567
  %573 = load i32, i32* @fceill_op, align 4
  store i32 %573, i32* %6, align 4
  br label %624

574:                                              ; preds = %567
  %575 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = icmp eq i32 %577, 161
  br i1 %578, label %579, label %581

579:                                              ; preds = %574
  %580 = load i32, i32* @fceil_op, align 4
  store i32 %580, i32* %6, align 4
  br label %623

581:                                              ; preds = %574
  %582 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %583 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = icmp eq i32 %584, 143
  br i1 %585, label %586, label %588

586:                                              ; preds = %581
  %587 = load i32, i32* @ftruncl_op, align 4
  store i32 %587, i32* %6, align 4
  br label %622

588:                                              ; preds = %581
  %589 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = icmp eq i32 %591, 142
  br i1 %592, label %593, label %595

593:                                              ; preds = %588
  %594 = load i32, i32* @ftrunc_op, align 4
  store i32 %594, i32* %6, align 4
  br label %621

595:                                              ; preds = %588
  %596 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %597 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, 147
  br i1 %599, label %600, label %602

600:                                              ; preds = %595
  %601 = load i32, i32* @froundl_op, align 4
  store i32 %601, i32* %6, align 4
  br label %620

602:                                              ; preds = %595
  %603 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %604 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = icmp eq i32 %605, 146
  br i1 %606, label %607, label %609

607:                                              ; preds = %602
  %608 = load i32, i32* @fround_op, align 4
  store i32 %608, i32* %6, align 4
  br label %619

609:                                              ; preds = %602
  %610 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %611 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = icmp eq i32 %612, 158
  br i1 %613, label %614, label %616

614:                                              ; preds = %609
  %615 = load i32, i32* @fcvtl_op, align 4
  store i32 %615, i32* %6, align 4
  br label %618

616:                                              ; preds = %609
  %617 = load i32, i32* @fcvtw_op, align 4
  store i32 %617, i32* %6, align 4
  br label %618

618:                                              ; preds = %616, %614
  br label %619

619:                                              ; preds = %618, %607
  br label %620

620:                                              ; preds = %619, %600
  br label %621

621:                                              ; preds = %620, %593
  br label %622

622:                                              ; preds = %621, %586
  br label %623

623:                                              ; preds = %622, %579
  br label %624

624:                                              ; preds = %623, %572
  br label %625

625:                                              ; preds = %624, %565
  br label %626

626:                                              ; preds = %625, %558
  %627 = load i8*, i8** @cop1_op, align 8
  %628 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %629 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %628, i32 0, i32 5
  store i8* %627, i8** %629, align 8
  %630 = load i32*, i32** @sd_format, align 8
  %631 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 1
  %633 = load i64, i64* %632, align 8
  %634 = getelementptr inbounds i32, i32* %630, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %637 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %636, i32 0, i32 0
  store i32 %635, i32* %637, align 8
  %638 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %639 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %638, i32 0, i32 1
  store i32 0, i32* %639, align 4
  %640 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %641 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 4
  %643 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %644 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %643, i32 0, i32 4
  store i32 %642, i32* %644, align 8
  %645 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %646 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 8
  %648 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %649 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %648, i32 0, i32 2
  store i32 %647, i32* %649, align 8
  %650 = load i32, i32* %6, align 4
  %651 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %652 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %651, i32 0, i32 3
  store i32 %650, i32* %652, align 4
  br label %762

653:                                              ; preds = %423, %423, %423
  %654 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %655 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = icmp eq i32 %656, 145
  br i1 %657, label %658, label %660

658:                                              ; preds = %653
  %659 = load i32, i32* @frsqrt_op, align 4
  store i32 %659, i32* %6, align 4
  br label %670

660:                                              ; preds = %653
  %661 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %662 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %661, i32 0, i32 0
  %663 = load i32, i32* %662, align 8
  %664 = icmp eq i32 %663, 144
  br i1 %664, label %665, label %667

665:                                              ; preds = %660
  %666 = load i32, i32* @fsqrt_op, align 4
  store i32 %666, i32* %6, align 4
  br label %669

667:                                              ; preds = %660
  %668 = load i32, i32* @frecip_op, align 4
  store i32 %668, i32* %6, align 4
  br label %669

669:                                              ; preds = %667, %665
  br label %670

670:                                              ; preds = %669, %658
  %671 = load i8*, i8** @cop1_op, align 8
  %672 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %673 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %672, i32 0, i32 5
  store i8* %671, i8** %673, align 8
  %674 = load i8**, i8*** @sdps_format, align 8
  %675 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %676 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %675, i32 0, i32 1
  %677 = load i64, i64* %676, align 8
  %678 = getelementptr inbounds i8*, i8** %674, i64 %677
  %679 = load i8*, i8** %678, align 8
  %680 = ptrtoint i8* %679 to i32
  %681 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %682 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %681, i32 0, i32 0
  store i32 %680, i32* %682, align 8
  %683 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %684 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %683, i32 0, i32 1
  store i32 0, i32* %684, align 4
  %685 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %686 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %685, i32 0, i32 3
  %687 = load i32, i32* %686, align 4
  %688 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %689 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %688, i32 0, i32 4
  store i32 %687, i32* %689, align 8
  %690 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %691 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %690, i32 0, i32 2
  %692 = load i32, i32* %691, align 8
  %693 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %694 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %693, i32 0, i32 2
  store i32 %692, i32* %694, align 8
  %695 = load i32, i32* %6, align 4
  %696 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %697 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %696, i32 0, i32 3
  store i32 %695, i32* %697, align 4
  br label %762

698:                                              ; preds = %423, %423, %423, %423, %423, %423
  %699 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %700 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = icmp eq i32 %701, 139
  br i1 %702, label %703, label %705

703:                                              ; preds = %698
  %704 = load i32, i32* @mfc_op, align 4
  store i32 %704, i32* %8, align 4
  br label %739

705:                                              ; preds = %698
  %706 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %707 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  %709 = icmp eq i32 %708, 133
  br i1 %709, label %710, label %712

710:                                              ; preds = %705
  %711 = load i32, i32* @mtc_op, align 4
  store i32 %711, i32* %8, align 4
  br label %738

712:                                              ; preds = %705
  %713 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %714 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 8
  %716 = icmp eq i32 %715, 166
  br i1 %716, label %717, label %719

717:                                              ; preds = %712
  %718 = load i32, i32* @cfc_op, align 4
  store i32 %718, i32* %8, align 4
  br label %737

719:                                              ; preds = %712
  %720 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %721 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = icmp eq i32 %722, 165
  br i1 %723, label %724, label %726

724:                                              ; preds = %719
  %725 = load i32, i32* @ctc_op, align 4
  store i32 %725, i32* %8, align 4
  br label %736

726:                                              ; preds = %719
  %727 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %728 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = icmp eq i32 %729, 138
  br i1 %730, label %731, label %733

731:                                              ; preds = %726
  %732 = load i32, i32* @mfhc_op, align 4
  store i32 %732, i32* %8, align 4
  br label %735

733:                                              ; preds = %726
  %734 = load i32, i32* @mthc_op, align 4
  store i32 %734, i32* %8, align 4
  br label %735

735:                                              ; preds = %733, %731
  br label %736

736:                                              ; preds = %735, %724
  br label %737

737:                                              ; preds = %736, %717
  br label %738

738:                                              ; preds = %737, %710
  br label %739

739:                                              ; preds = %738, %703
  %740 = load i8*, i8** @cop1_op, align 8
  %741 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %742 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %741, i32 0, i32 5
  store i8* %740, i8** %742, align 8
  %743 = load i32, i32* %8, align 4
  %744 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %745 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %744, i32 0, i32 0
  store i32 %743, i32* %745, align 8
  %746 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %747 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 8
  %749 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %750 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %749, i32 0, i32 1
  store i32 %748, i32* %750, align 4
  %751 = bitcast %union.mips_instruction* %4 to %struct.TYPE_14__*
  %752 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %751, i32 0, i32 3
  %753 = load i32, i32* %752, align 4
  %754 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %755 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %754, i32 0, i32 4
  store i32 %753, i32* %755, align 8
  %756 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %757 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %756, i32 0, i32 3
  store i32 0, i32* %757, align 4
  %758 = bitcast %union.mips_instruction* %5 to %struct.TYPE_15__*
  %759 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %758, i32 0, i32 2
  store i32 0, i32* %759, align 8
  br label %762

760:                                              ; preds = %423
  %761 = load i32, i32* @SIGILL, align 4
  store i32 %761, i32* %2, align 4
  br label %808

762:                                              ; preds = %739, %670, %626, %525, %484, %435
  br label %801

763:                                              ; preds = %104
  %764 = load i8*, i8** @cop1_op, align 8
  %765 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %766 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %765, i32 0, i32 5
  store i8* %764, i8** %766, align 8
  %767 = load i8**, i8*** @sdps_format, align 8
  %768 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %769 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %768, i32 0, i32 2
  %770 = load i64, i64* %769, align 8
  %771 = getelementptr inbounds i8*, i8** %767, i64 %770
  %772 = load i8*, i8** %771, align 8
  %773 = ptrtoint i8* %772 to i32
  %774 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %775 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %774, i32 0, i32 0
  store i32 %773, i32* %775, align 8
  %776 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %777 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %776, i32 0, i32 1
  %778 = load i32, i32* %777, align 4
  %779 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %780 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %779, i32 0, i32 1
  store i32 %778, i32* %780, align 4
  %781 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %782 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %781, i32 0, i32 4
  %783 = load i32, i32* %782, align 4
  %784 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %785 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %784, i32 0, i32 4
  store i32 %783, i32* %785, align 8
  %786 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %787 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  %789 = shl i32 %788, 2
  %790 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %791 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %790, i32 0, i32 2
  store i32 %789, i32* %791, align 8
  %792 = bitcast %union.mips_instruction* %4 to %struct.TYPE_17__*
  %793 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %792, i32 0, i32 3
  %794 = load i32, i32* %793, align 8
  %795 = load i32, i32* @MM_MIPS32_COND_FC, align 4
  %796 = or i32 %794, %795
  %797 = bitcast %union.mips_instruction* %5 to %struct.TYPE_16__*
  %798 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %797, i32 0, i32 3
  store i32 %796, i32* %798, align 4
  br label %801

799:                                              ; preds = %104
  %800 = load i32, i32* @SIGILL, align 4
  store i32 %800, i32* %2, align 4
  br label %808

801:                                              ; preds = %763, %762, %422, %368, %296, %241, %154
  br label %804

802:                                              ; preds = %1
  %803 = load i32, i32* @SIGILL, align 4
  store i32 %803, i32* %2, align 4
  br label %808

804:                                              ; preds = %801, %103, %59, %45, %31, %17
  %805 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %806 = bitcast %union.mips_instruction* %805 to i8*
  %807 = bitcast %union.mips_instruction* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %806, i8* align 8 %807, i64 32, i1 false)
  store i32 0, i32* %2, align 4
  br label %808

808:                                              ; preds = %804, %802, %799, %760, %420, %366, %294, %239, %101
  %809 = load i32, i32* %2, align 4
  ret i32 %809
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
