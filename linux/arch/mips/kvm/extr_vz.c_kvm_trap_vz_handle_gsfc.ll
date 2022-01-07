; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_gsfc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_gsfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i32*, i32 }
%union.mips_instruction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@cop0_op = common dso_local global i64 0, align 8
@mtc_op = common dso_local global i64 0, align 8
@KVM_TRACE_MTC0 = common dso_local global i32 0, align 4
@MIPS_CP0_STATUS = common dso_local global i32 0, align 4
@ST0_CU1 = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MIPS_FPIR_F64 = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_MSA = common dso_local global i32 0, align 4
@MIPS_CP0_CAUSE = common dso_local global i32 0, align 4
@CAUSEF_DC = common dso_local global i32 0, align 4
@CAUSEF_IV = common dso_local global i32 0, align 4
@CAUSEF_WP = common dso_local global i32 0, align 4
@CAUSEF_IP0 = common dso_local global i32 0, align 4
@CAUSEF_IP1 = common dso_local global i32 0, align 4
@MIPS_CP0_CONFIG = common dso_local global i32 0, align 4
@MIPS_CONF5_FRE = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_FPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Handle GSFC, unsupported field change @ %p: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Handle GSFC, unrecognized instruction @ %p: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_vcpu*)* @kvm_trap_vz_handle_gsfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_gsfc(i32 %0, i32* %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu_arch*, align 8
  %10 = alloca %union.mips_instruction, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %7, align 8
  %20 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %22, %struct.kvm_vcpu_arch** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CAUSEF_BD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %33 = bitcast %union.mips_instruction* %10 to i32*
  %34 = call i32 @kvm_get_badinstr(i32* %31, %struct.kvm_vcpu* %32, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %38, i32* %4, align 4
  br label %271

39:                                               ; preds = %30
  %40 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @cop0_op, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %263

45:                                               ; preds = %39
  %46 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @mtc_op, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %263

51:                                               ; preds = %45
  %52 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %263

56:                                               ; preds = %51
  %57 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %12, align 4
  %60 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = bitcast %union.mips_instruction* %10 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %14, align 4
  %66 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %74 = load i32, i32* @KVM_TRACE_MTC0, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @KVM_TRACE_COP0(i32 %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %73, i32 %74, i32 %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @MIPS_CP0_STATUS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %144

83:                                               ; preds = %56
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %144

86:                                               ; preds = %83
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = call i32 @kvm_mips_guest_has_fpu(%struct.kvm_vcpu_arch* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @ST0_CU1, align 4
  %93 = load i32, i32* @ST0_FR, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %100 = load i32, i32* @MIPS_FPIR_F64, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ST0_FR, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = call i32 (...) @read_gc0_status()
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = xor i32 %110, %111
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @ST0_FR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %119 = call i32 @kvm_drop_fpu(%struct.kvm_vcpu* %118)
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @ST0_CU1, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @ST0_FR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %140 = call i32 @kvm_lose_fpu(%struct.kvm_vcpu* %139)
  br label %141

141:                                              ; preds = %138, %130, %125, %120
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @write_gc0_status(i32 %142)
  br label %254

144:                                              ; preds = %83, %56
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @MIPS_CP0_CAUSE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %196

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %196

151:                                              ; preds = %148
  %152 = call i32 (...) @read_gc0_cause()
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %15, align 4
  %155 = xor i32 %153, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @CAUSEF_DC, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %151
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @CAUSEF_DC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %167 = call i32 @kvm_vz_lose_htimer(%struct.kvm_vcpu* %166)
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %169 = call i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu* %168)
  br label %173

170:                                              ; preds = %160
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %172 = call i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu* %171)
  br label %173

173:                                              ; preds = %170, %165
  br label %174

174:                                              ; preds = %173, %151
  %175 = load i32, i32* @CAUSEF_DC, align 4
  %176 = load i32, i32* @CAUSEF_IV, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @CAUSEF_WP, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @CAUSEF_IP0, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @CAUSEF_IP1, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* %19, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* @CAUSEF_WP, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %18, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %19, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = xor i32 %192, %193
  %195 = call i32 @write_gc0_cause(i32 %194)
  br label %253

196:                                              ; preds = %148, %144
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @MIPS_CP0_STATUS, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32, i32* %14, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @write_gc0_intctl(i32 %204)
  br label %252

206:                                              ; preds = %200, %196
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* @MIPS_CP0_CONFIG, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %206
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, 5
  br i1 %212, label %213, label %245

213:                                              ; preds = %210
  %214 = call i32 (...) @read_gc0_config5()
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %16, align 4
  %217 = xor i32 %215, %216
  store i32 %217, i32* %17, align 4
  %218 = call i32 (...) @preempt_disable()
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %213
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @change_c0_config5(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %223, %213
  %236 = call i32 (...) @preempt_enable()
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %240 = call i32 @kvm_vz_config5_guest_wrmask(%struct.kvm_vcpu* %239)
  %241 = and i32 %238, %240
  %242 = xor i32 %237, %241
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @write_gc0_config5(i32 %243)
  br label %251

245:                                              ; preds = %210, %206
  %246 = load i32*, i32** %6, align 8
  %247 = bitcast %union.mips_instruction* %10 to i32*
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @kvm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %246, i32 %248)
  %250 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %245, %235
  br label %252

252:                                              ; preds = %251, %203
  br label %253

253:                                              ; preds = %252, %174
  br label %254

254:                                              ; preds = %253, %141
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @EMULATE_FAIL, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @update_pc(%struct.kvm_vcpu* %259, i32 %260)
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %258, %254
  br label %269

263:                                              ; preds = %51, %45, %39
  %264 = load i32*, i32** %6, align 8
  %265 = bitcast %union.mips_instruction* %10 to i32*
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @kvm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %264, i32 %266)
  %268 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %268, i32* %8, align 4
  br label %269

269:                                              ; preds = %263, %262
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %269, %37
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @trace_kvm_hwr(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @KVM_TRACE_COP0(i32, i32) #1

declare dso_local i32 @kvm_mips_guest_has_fpu(%struct.kvm_vcpu_arch*) #1

declare dso_local i32 @read_gc0_status(...) #1

declare dso_local i32 @kvm_drop_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lose_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @write_gc0_status(i32) #1

declare dso_local i32 @read_gc0_cause(...) #1

declare dso_local i32 @kvm_vz_lose_htimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @write_gc0_cause(i32) #1

declare dso_local i32 @write_gc0_intctl(i32) #1

declare dso_local i32 @read_gc0_config5(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @change_c0_config5(i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kvm_vz_config5_guest_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @write_gc0_config5(i32) #1

declare dso_local i32 @kvm_err(i8*, i32*, i32) #1

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
