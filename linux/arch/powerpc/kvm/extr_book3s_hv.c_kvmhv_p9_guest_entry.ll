; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_p9_guest_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_p9_guest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i64, %struct.TYPE_10__*, %struct.hv_guest_state, i32, i64, %struct.kvmppc_vcore* }
%struct.TYPE_13__ = type { i32, %struct.lppaca* }
%struct.lppaca = type { i32, i8* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hv_guest_state = type { i64, i32, i8*, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32 }

@SPRN_DSCR = common dso_local global i32 0, align 4
@SPRN_TIDR = common dso_local global i32 0, align 4
@SPRN_IAMR = common dso_local global i32 0, align 4
@SPRN_AMR = common dso_local global i32 0, align 4
@SPRN_DEC = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_HV_DECREMENTER = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_16__* null, align 8
@CPU_FTR_TM = common dso_local global i32 0, align 4
@CPU_FTR_P9_TM_HV_ASSIST = common dso_local global i32 0, align 4
@MSR_FP = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i32 0, align 4
@MSR_VSX = common dso_local global i32 0, align 4
@SPRN_VRSAVE = common dso_local global i32 0, align 4
@SPRN_PSPB = common dso_local global i32 0, align 4
@SPRN_FSCR = common dso_local global i32 0, align 4
@SPRN_TAR = common dso_local global i32 0, align 4
@SPRN_EBBHR = common dso_local global i32 0, align 4
@SPRN_EBBRR = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@SPRN_WORT = common dso_local global i32 0, align 4
@SPRN_DAR = common dso_local global i32 0, align 4
@SPRN_DSISR = common dso_local global i32 0, align 4
@SPRN_UAMOR = common dso_local global i32 0, align 4
@SPRN_CTRLT = common dso_local global i32 0, align 4
@SPRN_CTRLF = common dso_local global i32 0, align 4
@SPRN_PSSCR_PR = common dso_local global i32 0, align 4
@HV_GUEST_STATE_VERSION = common dso_local global i32 0, align 4
@H_ENTER_NESTED = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_SYSCALL = common dso_local global i32 0, align 4
@H_CEDE = common dso_local global i64 0, align 8
@LPCR_LD = common dso_local global i64 0, align 8
@SPRN_SPRG_VDSO_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmhv_p9_guest_entry(%struct.kvm_vcpu* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_vcore*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lppaca*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.hv_guest_state, align 8
  %21 = alloca %struct.lppaca*, align 8
  %22 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 26
  %26 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %25, align 8
  store %struct.kvmppc_vcore* %26, %struct.kvmppc_vcore** %8, align 8
  %27 = load i32, i32* @SPRN_DSCR, align 4
  %28 = call i32 @mfspr(i32 %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* @SPRN_TIDR, align 4
  %31 = call i32 @mfspr(i32 %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* @SPRN_IAMR, align 4
  %34 = call i32 @mfspr(i32 %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load i32, i32* @SPRN_AMR, align 4
  %37 = call i32 @mfspr(i32 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* @SPRN_DEC, align 4
  %40 = call i32 @mfspr(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = call i64 (...) @mftb()
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %14, align 8
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 512
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* @BOOK3S_INTERRUPT_HV_DECREMENTER, align 4
  store i32 %46, i32* %4, align 4
  br label %594

47:                                               ; preds = %3
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_paca, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_paca, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_paca, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %63, %47
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 25
  store i64 0, i64* %72, align 8
  %73 = call i32 (...) @kvmhv_save_host_pmu()
  %74 = call i32 (...) @kvmppc_subcore_enter_guest()
  %75 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %76 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %78 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 17
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.lppaca*, %struct.lppaca** %82, align 8
  %84 = icmp ne %struct.lppaca* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %69
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 17
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.lppaca*, %struct.lppaca** %89, align 8
  store %struct.lppaca* %90, %struct.lppaca** %17, align 8
  %91 = load %struct.lppaca*, %struct.lppaca** %17, align 8
  %92 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @be32_to_cpu(i8* %93)
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i8* @cpu_to_be32(i64 %96)
  %98 = load %struct.lppaca*, %struct.lppaca** %17, align 8
  %99 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 17
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %85, %69
  %105 = load i32, i32* @CPU_FTR_TM, align 4
  %106 = call i64 @cpu_has_feature(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @CPU_FTR_P9_TM_HV_ASSIST, align 4
  %110 = call i64 @cpu_has_feature(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108, %104
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 18
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @kvmppc_restore_tm_hv(%struct.kvm_vcpu* %113, i32 %118, i32 1)
  br label %120

120:                                              ; preds = %112, %108
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %122 = call i32 @kvmhv_load_guest_pmu(%struct.kvm_vcpu* %121)
  %123 = load i32, i32* @MSR_FP, align 4
  %124 = load i32, i32* @MSR_VEC, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MSR_VSX, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @msr_check_and_set(i32 %127)
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 20
  %132 = call i32 @load_fp_state(i32* %131)
  %133 = load i32, i32* @SPRN_VRSAVE, align 4
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %135 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @mtspr(i32 %133, i64 %137)
  %139 = load i32, i32* @SPRN_DSCR, align 4
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @mtspr(i32 %139, i64 %143)
  %145 = load i32, i32* @SPRN_IAMR, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @mtspr(i32 %145, i64 %149)
  %151 = load i32, i32* @SPRN_PSPB, align 4
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %153 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @mtspr(i32 %151, i64 %155)
  %157 = load i32, i32* @SPRN_FSCR, align 4
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @mtspr(i32 %157, i64 %161)
  %163 = load i32, i32* @SPRN_TAR, align 4
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %165 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @mtspr(i32 %163, i64 %167)
  %169 = load i32, i32* @SPRN_EBBHR, align 4
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %171 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @mtspr(i32 %169, i64 %173)
  %175 = load i32, i32* @SPRN_EBBRR, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @mtspr(i32 %175, i64 %179)
  %181 = load i32, i32* @SPRN_BESCR, align 4
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @mtspr(i32 %181, i64 %185)
  %187 = load i32, i32* @SPRN_WORT, align 4
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @mtspr(i32 %187, i64 %191)
  %193 = load i32, i32* @SPRN_TIDR, align 4
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %195 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 10
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @mtspr(i32 %193, i64 %197)
  %199 = load i32, i32* @SPRN_DAR, align 4
  %200 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 18
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @mtspr(i32 %199, i64 %204)
  %206 = load i32, i32* @SPRN_DSISR, align 4
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %208 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 18
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @mtspr(i32 %206, i64 %211)
  %213 = load i32, i32* @SPRN_AMR, align 4
  %214 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %215 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 11
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @mtspr(i32 %213, i64 %217)
  %219 = load i32, i32* @SPRN_UAMOR, align 4
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %221 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 12
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @mtspr(i32 %219, i64 %223)
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 13
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, 1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %120
  %232 = load i32, i32* @SPRN_CTRLT, align 4
  %233 = load i32, i32* @SPRN_CTRLF, align 4
  %234 = call i32 @mfspr(i32 %233)
  %235 = and i32 %234, -2
  %236 = sext i32 %235 to i64
  %237 = call i32 @mtspr(i32 %232, i64 %236)
  br label %238

238:                                              ; preds = %231, %120
  %239 = load i32, i32* @SPRN_DEC, align 4
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %241 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 14
  %243 = load i64, i64* %242, align 8
  %244 = call i64 (...) @mftb()
  %245 = sub i64 %243, %244
  %246 = call i32 @mtspr(i32 %239, i64 %245)
  %247 = call i64 (...) @kvmhv_on_pseries()
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %366

249:                                              ; preds = %238
  %250 = load i32, i32* @SPRN_PSSCR_PR, align 4
  %251 = call i32 @mfspr(i32 %250)
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %19, align 8
  %253 = load i32, i32* @SPRN_PSSCR_PR, align 4
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 15
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @mtspr(i32 %253, i64 %257)
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %260 = call i32 @kvmhv_save_hv_regs(%struct.kvm_vcpu* %259, %struct.hv_guest_state* %20)
  %261 = load i64, i64* %7, align 8
  %262 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 0
  store i64 %261, i64* %262, align 8
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %264 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 18
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %269 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 23
  %271 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 8
  %272 = load i32, i32* @HV_GUEST_STATE_VERSION, align 4
  %273 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 5
  store i32 %272, i32* %273, align 8
  %274 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %275 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 22
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = icmp ne %struct.TYPE_10__* %277, null
  br i1 %278, label %279, label %292

279:                                              ; preds = %249
  %280 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %281 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 22
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 4
  store i32 %285, i32* %286, align 4
  %287 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %288 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 24
  %290 = load i32, i32* %289, align 8
  %291 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 3
  store i32 %290, i32* %291, align 8
  br label %304

292:                                              ; preds = %249
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %294 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %293, i32 0, i32 1
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 4
  store i32 %298, i32* %299, align 4
  %300 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %301 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 3
  store i32 %302, i32* %303, align 8
  br label %304

304:                                              ; preds = %292, %279
  %305 = load i8*, i8** %6, align 8
  %306 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 2
  store i8* %305, i8** %306, align 8
  %307 = load i32, i32* @H_ENTER_NESTED, align 4
  %308 = call i32 @__pa(%struct.hv_guest_state* %20)
  %309 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %310 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 23
  %312 = call i32 @__pa(%struct.hv_guest_state* %311)
  %313 = call i32 @plpar_hcall_norets(i32 %307, i32 %308, i32 %312)
  store i32 %313, i32* %15, align 4
  %314 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %315 = call i32 @kvmhv_restore_hv_return_state(%struct.kvm_vcpu* %314, %struct.hv_guest_state* %20)
  %316 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %317 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 23
  %319 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %322 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 18
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  store i32 %320, i32* %324, align 8
  %325 = load i32, i32* @SPRN_DAR, align 4
  %326 = call i32 @mfspr(i32 %325)
  %327 = sext i32 %326 to i64
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %329 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 18
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  store i64 %327, i64* %331, align 8
  %332 = load i32, i32* @SPRN_DSISR, align 4
  %333 = call i32 @mfspr(i32 %332)
  %334 = sext i32 %333 to i64
  %335 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %336 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 18
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 1
  store i64 %334, i64* %338, align 8
  %339 = load i32, i32* @SPRN_PSSCR_PR, align 4
  %340 = call i32 @mfspr(i32 %339)
  %341 = sext i32 %340 to i64
  %342 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %343 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 15
  store i64 %341, i64* %344, align 8
  %345 = load i32, i32* @SPRN_PSSCR_PR, align 4
  %346 = load i64, i64* %19, align 8
  %347 = call i32 @mtspr(i32 %345, i64 %346)
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* @BOOK3S_INTERRUPT_SYSCALL, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %304
  %352 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %353 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 22
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = icmp ne %struct.TYPE_10__* %355, null
  br i1 %356, label %365, label %357

357:                                              ; preds = %351
  %358 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %359 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %358, i32 3)
  %360 = load i64, i64* @H_CEDE, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  %363 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %364 = call i32 @kvmppc_nested_cede(%struct.kvm_vcpu* %363)
  store i32 0, i32* %15, align 4
  br label %365

365:                                              ; preds = %362, %357, %351, %304
  br label %371

366:                                              ; preds = %238
  %367 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %368 = load i8*, i8** %6, align 8
  %369 = load i64, i64* %7, align 8
  %370 = call i32 @kvmhv_load_hv_regs_and_go(%struct.kvm_vcpu* %367, i8* %368, i64 %369)
  store i32 %370, i32* %15, align 4
  br label %371

371:                                              ; preds = %366, %365
  %372 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %373 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 21
  store i64 0, i64* %374, align 8
  %375 = load i32, i32* @SPRN_DEC, align 4
  %376 = call i32 @mfspr(i32 %375)
  store i32 %376, i32* %13, align 4
  %377 = load i64, i64* %7, align 8
  %378 = load i64, i64* @LPCR_LD, align 8
  %379 = and i64 %377, %378
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %371
  %382 = load i32, i32* %13, align 4
  store i32 %382, i32* %13, align 4
  br label %383

383:                                              ; preds = %381, %371
  %384 = call i64 (...) @mftb()
  %385 = inttoptr i64 %384 to i8*
  store i8* %385, i8** %14, align 8
  %386 = load i32, i32* %13, align 4
  %387 = load i8*, i8** %14, align 8
  %388 = sext i32 %386 to i64
  %389 = getelementptr i8, i8* %387, i64 %388
  %390 = ptrtoint i8* %389 to i64
  %391 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %392 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 14
  store i64 %390, i64* %393, align 8
  %394 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %395 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %394, i32 0, i32 0
  store i32 -1, i32* %395, align 8
  %396 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %397 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 16
  store i32 -1, i32* %398, align 8
  %399 = load i32, i32* @SPRN_CTRLF, align 4
  %400 = call i32 @mfspr(i32 %399)
  %401 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %402 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 13
  store i32 %400, i32* %403, align 8
  %404 = load i32, i32* @SPRN_IAMR, align 4
  %405 = call i32 @mfspr(i32 %404)
  %406 = sext i32 %405 to i64
  %407 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %408 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 2
  store i64 %406, i64* %409, align 8
  %410 = load i32, i32* @SPRN_PSPB, align 4
  %411 = call i32 @mfspr(i32 %410)
  %412 = sext i32 %411 to i64
  %413 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %414 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 3
  store i64 %412, i64* %415, align 8
  %416 = load i32, i32* @SPRN_FSCR, align 4
  %417 = call i32 @mfspr(i32 %416)
  %418 = sext i32 %417 to i64
  %419 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %420 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 4
  store i64 %418, i64* %421, align 8
  %422 = load i32, i32* @SPRN_TAR, align 4
  %423 = call i32 @mfspr(i32 %422)
  %424 = sext i32 %423 to i64
  %425 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %426 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 5
  store i64 %424, i64* %427, align 8
  %428 = load i32, i32* @SPRN_EBBHR, align 4
  %429 = call i32 @mfspr(i32 %428)
  %430 = sext i32 %429 to i64
  %431 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %432 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 6
  store i64 %430, i64* %433, align 8
  %434 = load i32, i32* @SPRN_EBBRR, align 4
  %435 = call i32 @mfspr(i32 %434)
  %436 = sext i32 %435 to i64
  %437 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %438 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 7
  store i64 %436, i64* %439, align 8
  %440 = load i32, i32* @SPRN_BESCR, align 4
  %441 = call i32 @mfspr(i32 %440)
  %442 = sext i32 %441 to i64
  %443 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %444 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 8
  store i64 %442, i64* %445, align 8
  %446 = load i32, i32* @SPRN_WORT, align 4
  %447 = call i32 @mfspr(i32 %446)
  %448 = sext i32 %447 to i64
  %449 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %450 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 9
  store i64 %448, i64* %451, align 8
  %452 = load i32, i32* @SPRN_TIDR, align 4
  %453 = call i32 @mfspr(i32 %452)
  %454 = sext i32 %453 to i64
  %455 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %456 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 10
  store i64 %454, i64* %457, align 8
  %458 = load i32, i32* @SPRN_AMR, align 4
  %459 = call i32 @mfspr(i32 %458)
  %460 = sext i32 %459 to i64
  %461 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %462 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 11
  store i64 %460, i64* %463, align 8
  %464 = load i32, i32* @SPRN_UAMOR, align 4
  %465 = call i32 @mfspr(i32 %464)
  %466 = sext i32 %465 to i64
  %467 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %468 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 12
  store i64 %466, i64* %469, align 8
  %470 = load i32, i32* @SPRN_DSCR, align 4
  %471 = call i32 @mfspr(i32 %470)
  %472 = sext i32 %471 to i64
  %473 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %474 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 1
  store i64 %472, i64* %475, align 8
  %476 = load i32, i32* @SPRN_PSPB, align 4
  %477 = call i32 @mtspr(i32 %476, i64 0)
  %478 = load i32, i32* @SPRN_WORT, align 4
  %479 = call i32 @mtspr(i32 %478, i64 0)
  %480 = load i32, i32* @SPRN_UAMOR, align 4
  %481 = call i32 @mtspr(i32 %480, i64 0)
  %482 = load i32, i32* @SPRN_DSCR, align 4
  %483 = load i64, i64* %9, align 8
  %484 = call i32 @mtspr(i32 %482, i64 %483)
  %485 = load i32, i32* @SPRN_TIDR, align 4
  %486 = load i64, i64* %10, align 8
  %487 = call i32 @mtspr(i32 %485, i64 %486)
  %488 = load i32, i32* @SPRN_IAMR, align 4
  %489 = load i64, i64* %11, align 8
  %490 = call i32 @mtspr(i32 %488, i64 %489)
  %491 = load i32, i32* @SPRN_PSPB, align 4
  %492 = call i32 @mtspr(i32 %491, i64 0)
  %493 = load i64, i64* %12, align 8
  %494 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %495 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 11
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %493, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %383
  %500 = load i32, i32* @SPRN_AMR, align 4
  %501 = load i64, i64* %12, align 8
  %502 = call i32 @mtspr(i32 %500, i64 %501)
  br label %503

503:                                              ; preds = %499, %383
  %504 = load i32, i32* @MSR_FP, align 4
  %505 = load i32, i32* @MSR_VEC, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* @MSR_VSX, align 4
  %508 = or i32 %506, %507
  %509 = call i32 @msr_check_and_set(i32 %508)
  %510 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %511 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 20
  %513 = call i32 @store_fp_state(i32* %512)
  %514 = load i32, i32* @SPRN_VRSAVE, align 4
  %515 = call i32 @mfspr(i32 %514)
  %516 = sext i32 %515 to i64
  %517 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %518 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %518, i32 0, i32 0
  store i64 %516, i64* %519, align 8
  %520 = load i32, i32* @CPU_FTR_TM, align 4
  %521 = call i64 @cpu_has_feature(i32 %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %527, label %523

523:                                              ; preds = %503
  %524 = load i32, i32* @CPU_FTR_P9_TM_HV_ASSIST, align 4
  %525 = call i64 @cpu_has_feature(i32 %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %535

527:                                              ; preds = %523, %503
  %528 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %529 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %530 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 18
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = call i32 @kvmppc_save_tm_hv(%struct.kvm_vcpu* %528, i32 %533, i32 1)
  br label %535

535:                                              ; preds = %527, %523
  store i32 1, i32* %16, align 4
  %536 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %537 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %537, i32 0, i32 17
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 1
  %540 = load %struct.lppaca*, %struct.lppaca** %539, align 8
  %541 = icmp ne %struct.lppaca* %540, null
  br i1 %541, label %542, label %564

542:                                              ; preds = %535
  %543 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %544 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %544, i32 0, i32 17
  %546 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %545, i32 0, i32 1
  %547 = load %struct.lppaca*, %struct.lppaca** %546, align 8
  store %struct.lppaca* %547, %struct.lppaca** %21, align 8
  %548 = load %struct.lppaca*, %struct.lppaca** %21, align 8
  %549 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %548, i32 0, i32 1
  %550 = load i8*, i8** %549, align 8
  %551 = call i64 @be32_to_cpu(i8* %550)
  %552 = add nsw i64 %551, 1
  store i64 %552, i64* %22, align 8
  %553 = load i64, i64* %22, align 8
  %554 = call i8* @cpu_to_be32(i64 %553)
  %555 = load %struct.lppaca*, %struct.lppaca** %21, align 8
  %556 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %555, i32 0, i32 1
  store i8* %554, i8** %556, align 8
  %557 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %558 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 17
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 0
  store i32 1, i32* %560, align 8
  %561 = load %struct.lppaca*, %struct.lppaca** %21, align 8
  %562 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  store i32 %563, i32* %16, align 4
  br label %564

564:                                              ; preds = %542, %535
  %565 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %566 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %565, i32 0, i32 1
  %567 = load %struct.TYPE_15__*, %struct.TYPE_15__** %566, align 8
  %568 = call i32 @nesting_enabled(%struct.TYPE_15__* %567)
  %569 = load i32, i32* %16, align 4
  %570 = or i32 %569, %568
  store i32 %570, i32* %16, align 4
  %571 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %572 = load i32, i32* %16, align 4
  %573 = call i32 @kvmhv_save_guest_pmu(%struct.kvm_vcpu* %571, i32 %572)
  %574 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %575 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %574, i32 0, i32 0
  store i32 257, i32* %575, align 4
  %576 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %577 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %576, i32 0, i32 1
  store i32 0, i32* %577, align 4
  %578 = load i32, i32* @SPRN_DEC, align 4
  %579 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_paca, align 8
  %580 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = call i64 (...) @mftb()
  %584 = sub i64 %582, %583
  %585 = call i32 @mtspr(i32 %578, i64 %584)
  %586 = load i32, i32* @SPRN_SPRG_VDSO_WRITE, align 4
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** @local_paca, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 0
  %589 = load i64, i64* %588, align 8
  %590 = call i32 @mtspr(i32 %586, i64 %589)
  %591 = call i32 (...) @kvmhv_load_host_pmu()
  %592 = call i32 (...) @kvmppc_subcore_exit_guest()
  %593 = load i32, i32* %15, align 4
  store i32 %593, i32* %4, align 4
  br label %594

594:                                              ; preds = %564, %45
  %595 = load i32, i32* %4, align 4
  ret i32 %595
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @mftb(...) #1

declare dso_local i32 @kvmhv_save_host_pmu(...) #1

declare dso_local i32 @kvmppc_subcore_enter_guest(...) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_restore_tm_hv(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmhv_load_guest_pmu(%struct.kvm_vcpu*) #1

declare dso_local i32 @msr_check_and_set(i32) #1

declare dso_local i32 @load_fp_state(i32*) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @kvmhv_on_pseries(...) #1

declare dso_local i32 @kvmhv_save_hv_regs(%struct.kvm_vcpu*, %struct.hv_guest_state*) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, i32) #1

declare dso_local i32 @__pa(%struct.hv_guest_state*) #1

declare dso_local i32 @kvmhv_restore_hv_return_state(%struct.kvm_vcpu*, %struct.hv_guest_state*) #1

declare dso_local i64 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_nested_cede(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmhv_load_hv_regs_and_go(%struct.kvm_vcpu*, i8*, i64) #1

declare dso_local i32 @store_fp_state(i32*) #1

declare dso_local i32 @kvmppc_save_tm_hv(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @nesting_enabled(%struct.TYPE_15__*) #1

declare dso_local i32 @kvmhv_save_guest_pmu(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmhv_load_host_pmu(...) #1

declare dso_local i32 @kvmppc_subcore_exit_guest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
