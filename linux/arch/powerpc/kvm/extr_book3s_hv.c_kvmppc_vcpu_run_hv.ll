; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcpu_run_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_vcpu_run_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.kvm_run = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.kvm_vcpu = type { %struct.TYPE_18__, %struct.kvm* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__*, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.kvm = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i64 }

@KVM_EXIT_INTERNAL_ERROR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_20__* null, align 8
@KVM_EXIT_INTR = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_EBBHR = common dso_local global i32 0, align 4
@SPRN_EBBRR = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@SPRN_TAR = common dso_local global i32 0, align 4
@SPRN_VRSAVE = common dso_local global i32 0, align 4
@KVMPPC_VCPU_BUSY_IN_HOST = common dso_local global i32 0, align 4
@no_mixing_hpt_and_radix = common dso_local global i32 0, align 4
@KVM_EXIT_PAPR_HCALL = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i32 0, align 4
@RESUME_PAGE_FAULT = common dso_local global i32 0, align 4
@RESUME_PASSTHROUGH = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@SPRN_FSCR = common dso_local global i32 0, align 4
@KVMPPC_VCPU_NOTREADY = common dso_local global i32 0, align 4
@CPU_FTR_TM = common dso_local global i32 0, align 4
@KVM_EXIT_FAIL_ENTRY = common dso_local global i64 0, align 8
@MSR_TM = common dso_local global i32 0, align 4
@SPRN_TEXASR = common dso_local global i32 0, align 4
@SPRN_TFHAR = common dso_local global i32 0, align 4
@SPRN_TFIAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvmppc_vcpu_run_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_vcpu_run_hv(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm*, align 8
  store %struct.kvm_run* %0, %struct.kvm_run** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %12 = bitcast [3 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  store i64 0, i64* %9, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @KVM_EXIT_INTERNAL_ERROR, align 8
  %20 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %245

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = call i32 @atomic_inc(i32* %35)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %30, %24
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = call i32 @kvmppc_core_prepare_to_enter(%struct.kvm_vcpu* %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %44 = call i64 @signal_pending(%struct.TYPE_20__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* @KVM_EXIT_INTR, align 8
  %48 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %245

52:                                               ; preds = %40
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 1
  %55 = load %struct.kvm*, %struct.kvm** %54, align 8
  store %struct.kvm* %55, %struct.kvm** %11, align 8
  %56 = load %struct.kvm*, %struct.kvm** %11, align 8
  %57 = getelementptr inbounds %struct.kvm, %struct.kvm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = call i32 @atomic_inc(i32* %58)
  %60 = call i32 (...) @smp_mb()
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %62 = call i32 @flush_all_to_thread(%struct.TYPE_20__* %61)
  %63 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %64 = call i64 @cpu_has_feature(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %52
  %67 = load i32, i32* @SPRN_EBBHR, align 4
  %68 = call i8* @mfspr(i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %69, i64* %70, align 16
  %71 = load i32, i32* @SPRN_EBBRR, align 4
  %72 = call i8* @mfspr(i32 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @SPRN_BESCR, align 4
  %76 = call i8* @mfspr(i32 %75)
  %77 = ptrtoint i8* %76 to i64
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %77, i64* %78, align 16
  %79 = load i32, i32* @SPRN_TAR, align 4
  %80 = call i8* @mfspr(i32 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %66, %52
  %83 = load i32, i32* @SPRN_VRSAVE, align 4
  %84 = call i8* @mfspr(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 7
  store i32* %90, i32** %93, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 6
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @KVMPPC_VCPU_BUSY_IN_HOST, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %198, %82
  %107 = load %struct.kvm*, %struct.kvm** %11, align 8
  %108 = getelementptr inbounds %struct.kvm, %struct.kvm* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.kvm*, %struct.kvm** %11, align 8
  %114 = call i64 @kvm_is_radix(%struct.kvm* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* @no_mixing_hpt_and_radix, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @kvmhv_run_single_vcpu(%struct.kvm_run* %120, %struct.kvm_vcpu* %121, i32 -1, i32 %127)
  store i32 %128, i32* %6, align 4
  br label %133

129:                                              ; preds = %116, %112, %106
  %130 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %132 = call i32 @kvmppc_run_vcpu(%struct.kvm_run* %130, %struct.kvm_vcpu* %131)
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %129, %119
  %134 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %135 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @KVM_EXIT_PAPR_HCALL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MSR_PR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %139
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %150 = call i32 @trace_kvm_hcall_enter(%struct.kvm_vcpu* %149)
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %152 = call i32 @kvmppc_pseries_do_hcall(%struct.kvm_vcpu* %151)
  store i32 %152, i32* %6, align 4
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @trace_kvm_hcall_exit(%struct.kvm_vcpu* %153, i32 %154)
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %157 = call i32 @kvmppc_core_prepare_to_enter(%struct.kvm_vcpu* %156)
  br label %197

158:                                              ; preds = %139, %133
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @RESUME_PAGE_FAULT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %158
  %163 = load %struct.kvm*, %struct.kvm** %11, align 8
  %164 = getelementptr inbounds %struct.kvm, %struct.kvm* %163, i32 0, i32 1
  %165 = call i32 @srcu_read_lock(i32* %164)
  store i32 %165, i32* %7, align 4
  %166 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %173 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @kvmppc_book3s_hv_page_fault(%struct.kvm_run* %166, %struct.kvm_vcpu* %167, i32 %171, i32 %175)
  store i32 %176, i32* %6, align 4
  %177 = load %struct.kvm*, %struct.kvm** %11, align 8
  %178 = getelementptr inbounds %struct.kvm, %struct.kvm* %177, i32 0, i32 1
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @srcu_read_unlock(i32* %178, i32 %179)
  br label %196

181:                                              ; preds = %158
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @RESUME_PASSTHROUGH, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = call i32 (...) @xics_on_xive()
  %187 = call i64 @WARN_ON(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @H_SUCCESS, align 4
  store i32 %190, i32* %6, align 4
  br label %194

191:                                              ; preds = %185
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %193 = call i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu* %192, i32 0)
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %191, %189
  br label %195

195:                                              ; preds = %194, %181
  br label %196

196:                                              ; preds = %195, %162
  br label %197

197:                                              ; preds = %196, %148
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = call i64 @is_kvmppc_resume_guest(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %106, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %204 = call i64 @cpu_has_feature(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %202
  %207 = load i32, i32* @SPRN_EBBHR, align 4
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %209 = load i64, i64* %208, align 16
  %210 = trunc i64 %209 to i32
  %211 = call i32 @mtspr(i32 %207, i32 %210)
  %212 = load i32, i32* @SPRN_EBBRR, align 4
  %213 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 @mtspr(i32 %212, i32 %215)
  %217 = load i32, i32* @SPRN_BESCR, align 4
  %218 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %219 = load i64, i64* %218, align 16
  %220 = trunc i64 %219 to i32
  %221 = call i32 @mtspr(i32 %217, i32 %220)
  %222 = load i32, i32* @SPRN_TAR, align 4
  %223 = load i64, i64* %9, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @mtspr(i32 %222, i32 %224)
  %226 = load i32, i32* @SPRN_FSCR, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @mtspr(i32 %226, i32 %230)
  br label %232

232:                                              ; preds = %206, %202
  %233 = load i32, i32* @SPRN_VRSAVE, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @mtspr(i32 %233, i32 %234)
  %236 = load i32, i32* @KVMPPC_VCPU_NOTREADY, align 4
  %237 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %238 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 4
  %240 = load %struct.kvm*, %struct.kvm** %11, align 8
  %241 = getelementptr inbounds %struct.kvm, %struct.kvm* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = call i32 @atomic_dec(i32* %242)
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %232, %46, %18
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @kvmppc_core_prepare_to_enter(%struct.kvm_vcpu*) #2

declare dso_local i64 @signal_pending(%struct.TYPE_20__*) #2

declare dso_local i32 @smp_mb(...) #2

declare dso_local i32 @flush_all_to_thread(%struct.TYPE_20__*) #2

declare dso_local i64 @cpu_has_feature(i32) #2

declare dso_local i8* @mfspr(i32) #2

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #2

declare dso_local i32 @kvmhv_run_single_vcpu(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32) #2

declare dso_local i32 @kvmppc_run_vcpu(%struct.kvm_run*, %struct.kvm_vcpu*) #2

declare dso_local i32 @trace_kvm_hcall_enter(%struct.kvm_vcpu*) #2

declare dso_local i32 @kvmppc_pseries_do_hcall(%struct.kvm_vcpu*) #2

declare dso_local i32 @trace_kvm_hcall_exit(%struct.kvm_vcpu*, i32) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @kvmppc_book3s_hv_page_fault(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32) #2

declare dso_local i32 @srcu_read_unlock(i32*, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @xics_on_xive(...) #2

declare dso_local i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu*, i32) #2

declare dso_local i64 @is_kvmppc_resume_guest(i32) #2

declare dso_local i32 @mtspr(i32, i32) #2

declare dso_local i32 @atomic_dec(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
