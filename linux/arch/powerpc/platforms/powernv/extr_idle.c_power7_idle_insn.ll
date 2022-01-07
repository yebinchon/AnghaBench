; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_power7_idle_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_power7_idle_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i8* }
%struct.p7_sprs = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@paca_ptrs = common dso_local global %struct.TYPE_3__** null, align 8
@threads_per_core = common dso_local global i64 0, align 8
@PNV_THREAD_NAP = common dso_local global i64 0, align 8
@power7_fastsleep_workaround_entry = common dso_local global i64 0, align 8
@OPAL_CONFIG_IDLE_FASTSLEEP = common dso_local global i32 0, align 4
@OPAL_CONFIG_IDLE_APPLY = common dso_local global i32 0, align 4
@PNV_THREAD_WINKLE = common dso_local global i64 0, align 8
@SPRN_TSCR = common dso_local global i32 0, align 4
@SPRN_WORC = common dso_local global i32 0, align 4
@SPRN_SDR1 = common dso_local global i32 0, align 4
@SPRN_RPR = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_HFSCR = common dso_local global i32 0, align 4
@SPRN_FSCR = common dso_local global i32 0, align 4
@SPRN_PURR = common dso_local global i32 0, align 4
@SPRN_SPURR = common dso_local global i32 0, align 4
@SPRN_DSCR = common dso_local global i32 0, align 4
@SPRN_WORT = common dso_local global i32 0, align 4
@PNV_CORE_IDLE_WINKLE_COUNT_SHIFT = common dso_local global i32 0, align 4
@PNV_CORE_IDLE_WINKLE_COUNT_BITS = common dso_local global i64 0, align 8
@PNV_CORE_IDLE_THREAD_WINKLE_BITS = common dso_local global i64 0, align 8
@SPRN_AMR = common dso_local global i32 0, align 4
@SPRN_IAMR = common dso_local global i32 0, align 4
@SPRN_AMOR = common dso_local global i32 0, align 4
@SPRN_UAMOR = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_4__* null, align 8
@PNV_THREAD_RUNNING = common dso_local global i64 0, align 8
@MSR_IR = common dso_local global i32 0, align 4
@MSR_DR = common dso_local global i32 0, align 4
@SRR1_WAKESTATE = common dso_local global i64 0, align 8
@SRR1_WS_NOLOSS = common dso_local global i64 0, align 8
@SRR1_WAKEMASK_P8 = common dso_local global i64 0, align 8
@SRR1_WAKEHMI = common dso_local global i64 0, align 8
@SRR1_WS_HVLOSS = common dso_local global i64 0, align 8
@PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT = common dso_local global i64 0, align 8
@power7_fastsleep_workaround_exit = common dso_local global i64 0, align 8
@OPAL_CONFIG_IDLE_UNDO = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@SPRN_SPRG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @power7_idle_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @power7_idle_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.p7_sprs, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %14 = call i32 (...) @raw_smp_processor_id()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cpu_first_thread_sibling(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @paca_ptrs, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64* %22, i64** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @cpu_thread_in_core(i32 %23)
  %25 = shl i64 1, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @threads_per_core, align 8
  %27 = shl i64 1, %26
  %28 = sub i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = bitcast %struct.p7_sprs* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 120, i1 false)
  store i32 0, i32* %12, align 4
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @PNV_THREAD_NAP, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %140

36:                                               ; preds = %1
  %37 = call i32 (...) @atomic_lock_thread_idle()
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i64, i64* %7, align 8
  %47 = xor i64 %46, -1
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* @power7_fastsleep_workaround_entry, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %36
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = and i64 %55, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @OPAL_CONFIG_IDLE_FASTSLEEP, align 4
  %61 = load i32, i32* @OPAL_CONFIG_IDLE_APPLY, align 4
  %62 = call i32 @opal_config_cpu_idle_state(i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @BUG_ON(i32 %63)
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @PNV_THREAD_WINKLE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %138

70:                                               ; preds = %66
  %71 = load i32, i32* @SPRN_TSCR, align 4
  %72 = call i8* @mfspr(i32 %71)
  %73 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 10
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* @SPRN_WORC, align 4
  %75 = call i8* @mfspr(i32 %74)
  %76 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 9
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @SPRN_SDR1, align 4
  %78 = call i8* @mfspr(i32 %77)
  %79 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 8
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @SPRN_RPR, align 4
  %81 = call i8* @mfspr(i32 %80)
  %82 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 7
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* @SPRN_LPCR, align 4
  %84 = call i8* @mfspr(i32 %83)
  %85 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 6
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %87 = call i64 @cpu_has_feature(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %70
  %90 = load i32, i32* @SPRN_HFSCR, align 4
  %91 = call i8* @mfspr(i32 %90)
  %92 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 5
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @SPRN_FSCR, align 4
  %94 = call i8* @mfspr(i32 %93)
  %95 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %89, %70
  %97 = load i32, i32* @SPRN_PURR, align 4
  %98 = call i8* @mfspr(i32 %97)
  %99 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* @SPRN_SPURR, align 4
  %101 = call i8* @mfspr(i32 %100)
  %102 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* @SPRN_DSCR, align 4
  %104 = call i8* @mfspr(i32 %103)
  %105 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* @SPRN_WORT, align 4
  %107 = call i8* @mfspr(i32 %106)
  %108 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  store i32 1, i32* %12, align 4
  %109 = load i32, i32* @PNV_CORE_IDLE_WINKLE_COUNT_SHIFT, align 4
  %110 = shl i32 1, %109
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %6, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PNV_CORE_IDLE_WINKLE_COUNT_BITS, align 8
  %118 = and i64 %116, %117
  %119 = load i32, i32* @PNV_CORE_IDLE_WINKLE_COUNT_SHIFT, align 4
  %120 = zext i32 %119 to i64
  %121 = lshr i64 %118, %120
  %122 = load i64, i64* @threads_per_core, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %96
  %125 = load i64, i64* @PNV_CORE_IDLE_THREAD_WINKLE_BITS, align 8
  %126 = load i64*, i64** %6, align 8
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, %125
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %124, %96
  %130 = load i64*, i64** %6, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PNV_CORE_IDLE_WINKLE_COUNT_BITS, align 8
  %133 = and i64 %131, %132
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = call i32 @WARN_ON(i64 %136)
  br label %138

138:                                              ; preds = %129, %66
  %139 = call i32 (...) @atomic_unlock_thread_idle()
  br label %140

140:                                              ; preds = %138, %1
  %141 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %142 = call i64 @cpu_has_feature(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load i32, i32* @SPRN_AMR, align 4
  %146 = call i8* @mfspr(i32 %145)
  %147 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 14
  store i8* %146, i8** %147, align 8
  %148 = load i32, i32* @SPRN_IAMR, align 4
  %149 = call i8* @mfspr(i32 %148)
  %150 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 13
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* @SPRN_AMOR, align 4
  %152 = call i8* @mfspr(i32 %151)
  %153 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 12
  store i8* %152, i8** %153, align 8
  %154 = load i32, i32* @SPRN_UAMOR, align 4
  %155 = call i8* @mfspr(i32 %154)
  %156 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 11
  store i8* %155, i8** %156, align 8
  br label %157

157:                                              ; preds = %144, %140
  %158 = load i64, i64* %3, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %3, align 8
  %162 = call i64 @isa206_idle_insn_mayloss(i64 %161)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* @PNV_THREAD_RUNNING, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %9, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @WARN_ON_ONCE(i32 %169)
  %171 = call i32 (...) @mfmsr()
  %172 = load i32, i32* @MSR_IR, align 4
  %173 = load i32, i32* @MSR_DR, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = call i32 @WARN_ON_ONCE(i32 %175)
  %177 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %178 = call i64 @cpu_has_feature(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %157
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @SRR1_WAKESTATE, align 8
  %183 = and i64 %181, %182
  %184 = load i64, i64* @SRR1_WS_NOLOSS, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %180
  %187 = load i32, i32* @SPRN_AMR, align 4
  %188 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 14
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @mtspr(i32 %187, i8* %189)
  %191 = load i32, i32* @SPRN_IAMR, align 4
  %192 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 13
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @mtspr(i32 %191, i8* %193)
  %195 = load i32, i32* @SPRN_AMOR, align 4
  %196 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 12
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @mtspr(i32 %195, i8* %197)
  %199 = load i32, i32* @SPRN_UAMOR, align 4
  %200 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 11
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @mtspr(i32 %199, i8* %201)
  br label %203

203:                                              ; preds = %186, %180
  br label %204

204:                                              ; preds = %203, %157
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* @SRR1_WAKEMASK_P8, align 8
  %207 = and i64 %205, %206
  %208 = load i64, i64* @SRR1_WAKEHMI, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i64 @unlikely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = call i32 @hmi_exception_realmode(i32* null)
  br label %215

215:                                              ; preds = %213, %204
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @SRR1_WAKESTATE, align 8
  %218 = and i64 %216, %217
  %219 = load i64, i64* @SRR1_WS_HVLOSS, align 8
  %220 = icmp ne i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i64 @likely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %262

224:                                              ; preds = %215
  %225 = load i64, i64* %3, align 8
  %226 = load i64, i64* @PNV_THREAD_NAP, align 8
  %227 = icmp ne i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %260

231:                                              ; preds = %224
  %232 = call i32 (...) @atomic_lock_thread_idle()
  %233 = load i64, i64* %3, align 8
  %234 = load i64, i64* @PNV_THREAD_WINKLE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %231
  %237 = load i64*, i64** %6, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @PNV_CORE_IDLE_WINKLE_COUNT_BITS, align 8
  %240 = and i64 %238, %239
  %241 = icmp eq i64 %240, 0
  %242 = zext i1 %241 to i32
  %243 = sext i32 %242 to i64
  %244 = call i32 @WARN_ON(i64 %243)
  %245 = load i32, i32* @PNV_CORE_IDLE_WINKLE_COUNT_SHIFT, align 4
  %246 = shl i32 1, %245
  %247 = sext i32 %246 to i64
  %248 = load i64*, i64** %6, align 8
  %249 = load i64, i64* %248, align 8
  %250 = sub i64 %249, %247
  store i64 %250, i64* %248, align 8
  %251 = load i64, i64* %7, align 8
  %252 = load i64, i64* @PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT, align 8
  %253 = shl i64 %251, %252
  %254 = xor i64 %253, -1
  %255 = load i64*, i64** %6, align 8
  %256 = load i64, i64* %255, align 8
  %257 = and i64 %256, %254
  store i64 %257, i64* %255, align 8
  br label %258

258:                                              ; preds = %236, %231
  %259 = call i32 (...) @atomic_unlock_and_stop_thread_idle()
  br label %260

260:                                              ; preds = %258, %224
  %261 = load i64, i64* %9, align 8
  store i64 %261, i64* %2, align 8
  br label %418

262:                                              ; preds = %215
  %263 = load i64, i64* %3, align 8
  %264 = load i64, i64* @PNV_THREAD_NAP, align 8
  %265 = icmp eq i64 %263, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @BUG_ON(i32 %266)
  %268 = call i32 (...) @atomic_lock_thread_idle()
  store i32 0, i32* %10, align 4
  %269 = load i64, i64* %3, align 8
  %270 = load i64, i64* @PNV_THREAD_WINKLE, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %308

272:                                              ; preds = %262
  %273 = load i64*, i64** %6, align 8
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @PNV_CORE_IDLE_WINKLE_COUNT_BITS, align 8
  %276 = and i64 %274, %275
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = sext i32 %278 to i64
  %280 = call i32 @WARN_ON(i64 %279)
  %281 = load i32, i32* @PNV_CORE_IDLE_WINKLE_COUNT_SHIFT, align 4
  %282 = shl i32 1, %281
  %283 = sext i32 %282 to i64
  %284 = load i64*, i64** %6, align 8
  %285 = load i64, i64* %284, align 8
  %286 = sub i64 %285, %283
  store i64 %286, i64* %284, align 8
  %287 = load i64*, i64** %6, align 8
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load i64, i64* @PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT, align 8
  %291 = shl i64 %289, %290
  %292 = and i64 %288, %291
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %272
  %295 = load i64, i64* %7, align 8
  %296 = load i64, i64* @PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT, align 8
  %297 = shl i64 %295, %296
  %298 = xor i64 %297, -1
  %299 = load i64*, i64** %6, align 8
  %300 = load i64, i64* %299, align 8
  %301 = and i64 %300, %298
  store i64 %301, i64* %299, align 8
  store i32 1, i32* %10, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 @BUG_ON(i32 %305)
  br label %307

307:                                              ; preds = %294, %272
  br label %308

308:                                              ; preds = %307, %262
  %309 = load i64*, i64** %6, align 8
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* %7, align 8
  %312 = and i64 %310, %311
  %313 = call i32 @WARN_ON(i64 %312)
  %314 = load i64*, i64** %6, align 8
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* %8, align 8
  %317 = and i64 %315, %316
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %348

320:                                              ; preds = %308
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %320
  %324 = load i32, i32* @SPRN_TSCR, align 4
  %325 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 10
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @mtspr(i32 %324, i8* %326)
  %328 = load i32, i32* @SPRN_WORC, align 4
  %329 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 9
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @mtspr(i32 %328, i8* %330)
  br label %332

332:                                              ; preds = %323, %320
  %333 = load i64, i64* @power7_fastsleep_workaround_exit, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %332
  %336 = load i32, i32* @OPAL_CONFIG_IDLE_FASTSLEEP, align 4
  %337 = load i32, i32* @OPAL_CONFIG_IDLE_UNDO, align 4
  %338 = call i32 @opal_config_cpu_idle_state(i32 %336, i32 %337)
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @BUG_ON(i32 %339)
  br label %341

341:                                              ; preds = %335, %332
  %342 = call i64 (...) @opal_resync_timebase()
  %343 = load i64, i64* @OPAL_SUCCESS, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = call i32 (...) @BUG()
  br label %347

347:                                              ; preds = %345, %341
  br label %348

348:                                              ; preds = %347, %319
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %348
  br label %370

352:                                              ; preds = %348
  %353 = load i64*, i64** %6, align 8
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = and i64 %354, %357
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  br label %370

361:                                              ; preds = %352
  %362 = load i32, i32* @SPRN_SDR1, align 4
  %363 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 8
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @mtspr(i32 %362, i8* %364)
  %366 = load i32, i32* @SPRN_RPR, align 4
  %367 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 7
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @mtspr(i32 %366, i8* %368)
  br label %370

370:                                              ; preds = %361, %360, %351
  %371 = call i32 (...) @isync()
  %372 = call i32 (...) @atomic_unlock_and_stop_thread_idle()
  %373 = load i32, i32* %10, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %370
  %376 = load i64, i64* %9, align 8
  store i64 %376, i64* %2, align 8
  br label %418

377:                                              ; preds = %370
  %378 = load i32, i32* @SPRN_LPCR, align 4
  %379 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 6
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @mtspr(i32 %378, i8* %380)
  %382 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %383 = call i64 @cpu_has_feature(i32 %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %377
  %386 = load i32, i32* @SPRN_HFSCR, align 4
  %387 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 5
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @mtspr(i32 %386, i8* %388)
  %390 = load i32, i32* @SPRN_FSCR, align 4
  %391 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 4
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @mtspr(i32 %390, i8* %392)
  br label %394

394:                                              ; preds = %385, %377
  %395 = load i32, i32* @SPRN_PURR, align 4
  %396 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 3
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @mtspr(i32 %395, i8* %397)
  %399 = load i32, i32* @SPRN_SPURR, align 4
  %400 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @mtspr(i32 %399, i8* %401)
  %403 = load i32, i32* @SPRN_DSCR, align 4
  %404 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 1
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @mtspr(i32 %403, i8* %405)
  %407 = load i32, i32* @SPRN_WORT, align 4
  %408 = getelementptr inbounds %struct.p7_sprs, %struct.p7_sprs* %11, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @mtspr(i32 %407, i8* %409)
  %411 = load i32, i32* @SPRN_SPRG3, align 4
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 2
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @mtspr(i32 %411, i8* %414)
  %416 = call i32 (...) @__slb_restore_bolted_realmode()
  %417 = load i64, i64* %9, align 8
  store i64 %417, i64* %2, align 8
  br label %418

418:                                              ; preds = %394, %375, %260
  %419 = load i64, i64* %2, align 8
  ret i64 %419
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i64 @cpu_thread_in_core(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_lock_thread_idle(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @opal_config_cpu_idle_state(i32, i32) #1

declare dso_local i8* @mfspr(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @atomic_unlock_thread_idle(...) #1

declare dso_local i64 @isa206_idle_insn_mayloss(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtspr(i32, i8*) #1

declare dso_local i32 @hmi_exception_realmode(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_unlock_and_stop_thread_idle(...) #1

declare dso_local i64 @opal_resync_timebase(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @__slb_restore_bolted_realmode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
