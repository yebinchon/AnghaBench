; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_emulate.c_kvmppc_core_emulate_op_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_emulate.c_kvmppc_core_emulate_op_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu.0*, i32)*, i32 (%struct.kvm_vcpu.1*, i32)*, i32 (%struct.kvm_vcpu.2*, i32)*, i32 (%struct.kvm_vcpu.3*, i32, i32*)*, i32 (%struct.kvm_vcpu.4*)*, i32 (%struct.kvm_vcpu.5*, i32)*, i32 (%struct.kvm_vcpu.6*, i32, i32)*, i32 (%struct.kvm_vcpu.7*, i32, i32)*, i32 (%struct.kvm_vcpu.8*, i32, i32)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type opaque
%struct.kvm_vcpu.2 = type opaque
%struct.kvm_vcpu.3 = type opaque
%struct.kvm_vcpu.4 = type opaque
%struct.kvm_vcpu.5 = type opaque
%struct.kvm_vcpu.6 = type opaque
%struct.kvm_vcpu.7 = type opaque
%struct.kvm_vcpu.8 = type opaque

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i64 0, align 8
@EV_UNIMPLEMENTED = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@CR0_MASK = common dso_local global i32 0, align 4
@CR0_SHIFT = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@DSISR_ISSTORE = common dso_local global i32 0, align 4
@DSISR_NOHPTE = common dso_local global i32 0, align 4
@DSISR_PROTFAULT = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_DATA_STORAGE = common dso_local global i32 0, align 4
@CPU_FTR_TM = common dso_local global i32 0, align 4
@CR0_TBEGIN_FAILURE = common dso_local global i32 0, align 4
@EMULATE_AGAIN = common dso_local global i32 0, align 4
@EMULATE_EXIT_USER = common dso_local global i32 0, align 4
@FSCR_TM_LG = common dso_local global i32 0, align 4
@KVM_EXIT_PAPR_HCALL = common dso_local global i32 0, align 4
@MSR_HV = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i32 0, align 4
@MSR_TM = common dso_local global i64 0, align 8
@MSR_TS_S = common dso_local global i64 0, align 8
@SPRN_TEXASR = common dso_local global i32 0, align 4
@SRR1_PROGPRIV = common dso_local global i32 0, align 4
@SRR1_PROGTM = common dso_local global i32 0, align 4
@TEXASR_EXACT = common dso_local global i64 0, align 8
@TEXASR_FC_LG = common dso_local global i64 0, align 8
@TEXASR_FS = common dso_local global i64 0, align 8
@TEXASR_HV = common dso_local global i64 0, align 8
@TEXASR_ROT = common dso_local global i64 0, align 8
@TM_CAUSE_EMULATE = common dso_local global i32 0, align 4
@TM_CAUSE_PERSISTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_op_pr(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [8 x i32], align 16
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %6, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %39 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @get_rt(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @get_rs(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @get_ra(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @get_rb(i32 %46)
  store i32 %47, i32* %14, align 4
  store i32 1140850690, i32* %15, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @get_op(i32 %48)
  switch i32 %49, label %499 [
    i32 0, label %50
    i32 19, label %73
    i32 31, label %91
  ]

50:                                               ; preds = %4
  %51 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %53 = call i64 @kvmppc_get_msr(%struct.kvm_vcpu* %52)
  %54 = load i64, i64* @MSR_LE, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @swab32(i32 %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %64 = load i32, i32* @EV_UNIMPLEMENTED, align 4
  %65 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %63, i32 3, i32 %64)
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %68 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %67)
  %69 = add nsw i32 %68, 4
  %70 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %66, i32 %69)
  %71 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %62, %57, %50
  br label %501

73:                                               ; preds = %4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @get_xop(i32 %74)
  switch i32 %75, label %88 [
    i32 151, label %76
    i32 152, label %76
  ]

76:                                               ; preds = %73, %73
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %78 = call i64 @kvmppc_get_srr1(%struct.kvm_vcpu* %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %81 = call i32 @kvmppc_get_srr0(%struct.kvm_vcpu* %80)
  %82 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %79, i32 %81)
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %84 = load i64, i64* %16, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %83, i32 %85)
  %87 = load i32*, i32** %9, align 8
  store i32 0, i32* %87, align 4
  br label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %76
  br label %501

91:                                               ; preds = %4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @get_xop(i32 %92)
  switch i32 %93, label %496 [
    i32 146, label %94
    i32 142, label %101
    i32 143, label %133
    i32 145, label %139
    i32 144, label %163
    i32 141, label %190
    i32 140, label %205
    i32 131, label %222
    i32 130, label %222
    i32 148, label %241
    i32 134, label %242
    i32 137, label %266
    i32 138, label %287
    i32 139, label %305
    i32 136, label %362
    i32 135, label %389
    i32 150, label %416
    i32 149, label %417
  ]

94:                                               ; preds = %91
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %98 = call i64 @kvmppc_get_msr(%struct.kvm_vcpu* %97)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %95, i32 %96, i32 %99)
  br label %498

101:                                              ; preds = %91
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %102, i32 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 65536
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %101
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %110 = call i64 @kvmppc_get_msr(%struct.kvm_vcpu* %109)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* @MSR_RI, align 4
  %113 = load i32, i32* @MSR_EE, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %18, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @MSR_RI, align 4
  %120 = load i32, i32* @MSR_EE, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = load i32, i32* %18, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %18, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @kvmppc_set_msr_fast(%struct.kvm_vcpu* %125, i32 %126)
  br label %132

128:                                              ; preds = %101
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %108
  br label %498

133:                                              ; preds = %91
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %135, i32 %136)
  %138 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %134, i32 %137)
  br label %498

139:                                              ; preds = %91
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @kvmppc_get_field(i32 %140, i32 44, i32 47)
  store i32 %141, i32* %19, align 4
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32 (%struct.kvm_vcpu.0*, i32)*, i32 (%struct.kvm_vcpu.0*, i32)** %145, align 8
  %147 = icmp ne i32 (%struct.kvm_vcpu.0*, i32)* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %139
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (%struct.kvm_vcpu.0*, i32)*, i32 (%struct.kvm_vcpu.0*, i32)** %152, align 8
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %155 = bitcast %struct.kvm_vcpu* %154 to %struct.kvm_vcpu.0*
  %156 = load i32, i32* %19, align 4
  %157 = call i32 %153(%struct.kvm_vcpu.0* %155, i32 %156)
  store i32 %157, i32* %20, align 4
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %148, %139
  br label %498

163:                                              ; preds = %91
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %164, i32 %165)
  %167 = ashr i32 %166, 28
  %168 = and i32 %167, 15
  store i32 %168, i32* %21, align 4
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32 (%struct.kvm_vcpu.0*, i32)*, i32 (%struct.kvm_vcpu.0*, i32)** %172, align 8
  %174 = icmp ne i32 (%struct.kvm_vcpu.0*, i32)* %173, null
  br i1 %174, label %175, label %189

175:                                              ; preds = %163
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32 (%struct.kvm_vcpu.0*, i32)*, i32 (%struct.kvm_vcpu.0*, i32)** %179, align 8
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %182 = bitcast %struct.kvm_vcpu* %181 to %struct.kvm_vcpu.0*
  %183 = load i32, i32* %21, align 4
  %184 = call i32 %180(%struct.kvm_vcpu.0* %182, i32 %183)
  store i32 %184, i32* %22, align 4
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %22, align 4
  %188 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %175, %163
  br label %498

190:                                              ; preds = %91
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 8
  %195 = load i32 (%struct.kvm_vcpu.8*, i32, i32)*, i32 (%struct.kvm_vcpu.8*, i32, i32)** %194, align 8
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %197 = bitcast %struct.kvm_vcpu* %196 to %struct.kvm_vcpu.8*
  %198 = load i32, i32* %8, align 4
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 15
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %201, i32 %202)
  %204 = call i32 %195(%struct.kvm_vcpu.8* %197, i32 %200, i32 %203)
  br label %498

205:                                              ; preds = %91
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %207 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 8
  %210 = load i32 (%struct.kvm_vcpu.8*, i32, i32)*, i32 (%struct.kvm_vcpu.8*, i32, i32)** %209, align 8
  %211 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %212 = bitcast %struct.kvm_vcpu* %211 to %struct.kvm_vcpu.8*
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %213, i32 %214)
  %216 = ashr i32 %215, 28
  %217 = and i32 %216, 15
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %218, i32 %219)
  %221 = call i32 %210(%struct.kvm_vcpu.8* %212, i32 %217, i32 %220)
  br label %498

222:                                              ; preds = %91, %91
  %223 = load i32, i32* %8, align 4
  %224 = and i32 %223, 2097152
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  store i32 %227, i32* %23, align 4
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %228, i32 %229)
  store i32 %230, i32* %24, align 4
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 7
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 7
  %235 = load i32 (%struct.kvm_vcpu.7*, i32, i32)*, i32 (%struct.kvm_vcpu.7*, i32, i32)** %234, align 8
  %236 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %237 = bitcast %struct.kvm_vcpu* %236 to %struct.kvm_vcpu.7*
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* %23, align 4
  %240 = call i32 %235(%struct.kvm_vcpu.7* %237, i32 %238, i32 %239)
  br label %498

241:                                              ; preds = %91
  br label %498

242:                                              ; preds = %91
  %243 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %244 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 6
  %247 = load i32 (%struct.kvm_vcpu.6*, i32, i32)*, i32 (%struct.kvm_vcpu.6*, i32, i32)** %246, align 8
  %248 = icmp ne i32 (%struct.kvm_vcpu.6*, i32, i32)* %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %242
  %250 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %250, i32* %5, align 4
  br label %511

251:                                              ; preds = %242
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %253 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 6
  %256 = load i32 (%struct.kvm_vcpu.6*, i32, i32)*, i32 (%struct.kvm_vcpu.6*, i32, i32)** %255, align 8
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %258 = bitcast %struct.kvm_vcpu* %257 to %struct.kvm_vcpu.6*
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %260 = load i32, i32* %12, align 4
  %261 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %259, i32 %260)
  %262 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %262, i32 %263)
  %265 = call i32 %256(%struct.kvm_vcpu.6* %258, i32 %261, i32 %264)
  br label %498

266:                                              ; preds = %91
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %268 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 7
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 5
  %271 = load i32 (%struct.kvm_vcpu.5*, i32)*, i32 (%struct.kvm_vcpu.5*, i32)** %270, align 8
  %272 = icmp ne i32 (%struct.kvm_vcpu.5*, i32)* %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %266
  %274 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %274, i32* %5, align 4
  br label %511

275:                                              ; preds = %266
  %276 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %277 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 5
  %280 = load i32 (%struct.kvm_vcpu.5*, i32)*, i32 (%struct.kvm_vcpu.5*, i32)** %279, align 8
  %281 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %282 = bitcast %struct.kvm_vcpu* %281 to %struct.kvm_vcpu.5*
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %283, i32 %284)
  %286 = call i32 %280(%struct.kvm_vcpu.5* %282, i32 %285)
  br label %498

287:                                              ; preds = %91
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %289 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 4
  %292 = load i32 (%struct.kvm_vcpu.4*)*, i32 (%struct.kvm_vcpu.4*)** %291, align 8
  %293 = icmp ne i32 (%struct.kvm_vcpu.4*)* %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %287
  %295 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %295, i32* %5, align 4
  br label %511

296:                                              ; preds = %287
  %297 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %298 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 4
  %301 = load i32 (%struct.kvm_vcpu.4*)*, i32 (%struct.kvm_vcpu.4*)** %300, align 8
  %302 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %303 = bitcast %struct.kvm_vcpu* %302 to %struct.kvm_vcpu.4*
  %304 = call i32 %301(%struct.kvm_vcpu.4* %303)
  br label %498

305:                                              ; preds = %91
  %306 = load i32, i32* %8, align 4
  %307 = and i32 %306, 1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %311 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 7
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 3
  %314 = load i32 (%struct.kvm_vcpu.3*, i32, i32*)*, i32 (%struct.kvm_vcpu.3*, i32, i32*)** %313, align 8
  %315 = icmp ne i32 (%struct.kvm_vcpu.3*, i32, i32*)* %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %309, %305
  %317 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %317, i32* %5, align 4
  br label %511

318:                                              ; preds = %309
  %319 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %320 = call i32 @kvmppc_get_cr(%struct.kvm_vcpu* %319)
  %321 = load i32, i32* @CR0_MASK, align 4
  %322 = xor i32 %321, -1
  %323 = and i32 %320, %322
  store i32 %323, i32* %27, align 4
  %324 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %325 = load i32, i32* %14, align 4
  %326 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %324, i32 %325)
  store i32 %326, i32* %25, align 4
  %327 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %328 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i32 (%struct.kvm_vcpu.3*, i32, i32*)*, i32 (%struct.kvm_vcpu.3*, i32, i32*)** %330, align 8
  %332 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %333 = bitcast %struct.kvm_vcpu* %332 to %struct.kvm_vcpu.3*
  %334 = load i32, i32* %25, align 4
  %335 = call i32 %331(%struct.kvm_vcpu.3* %333, i32 %334, i32* %26)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %318
  %338 = load i32, i32* @CR0_SHIFT, align 4
  %339 = shl i32 2, %338
  %340 = load i32, i32* %27, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %27, align 4
  br label %342

342:                                              ; preds = %337, %318
  %343 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %26, align 4
  %346 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %343, i32 %344, i32 %345)
  %347 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %348 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, -2147483648
  %353 = load i32, i32* @CR0_SHIFT, align 4
  %354 = sub nsw i32 31, %353
  %355 = lshr i32 %352, %354
  %356 = load i32, i32* %27, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %27, align 4
  %358 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %359 = load i32, i32* %27, align 4
  %360 = call i32 @kvmppc_set_cr(%struct.kvm_vcpu* %358, i32 %359)
  br label %361

361:                                              ; preds = %342
  br label %498

362:                                              ; preds = %91
  %363 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %364 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 7
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = load i32 (%struct.kvm_vcpu.1*, i32)*, i32 (%struct.kvm_vcpu.1*, i32)** %366, align 8
  %368 = icmp ne i32 (%struct.kvm_vcpu.1*, i32)* %367, null
  br i1 %368, label %371, label %369

369:                                              ; preds = %362
  %370 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %370, i32* %10, align 4
  br label %388

371:                                              ; preds = %362
  %372 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %373 = load i32, i32* %14, align 4
  %374 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %372, i32 %373)
  store i32 %374, i32* %29, align 4
  %375 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %376 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  %379 = load i32 (%struct.kvm_vcpu.1*, i32)*, i32 (%struct.kvm_vcpu.1*, i32)** %378, align 8
  %380 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %381 = bitcast %struct.kvm_vcpu* %380 to %struct.kvm_vcpu.1*
  %382 = load i32, i32* %29, align 4
  %383 = call i32 %379(%struct.kvm_vcpu.1* %381, i32 %382)
  store i32 %383, i32* %28, align 4
  %384 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* %28, align 4
  %387 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %384, i32 %385, i32 %386)
  br label %388

388:                                              ; preds = %371, %369
  br label %498

389:                                              ; preds = %91
  %390 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %391 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 2
  %394 = load i32 (%struct.kvm_vcpu.2*, i32)*, i32 (%struct.kvm_vcpu.2*, i32)** %393, align 8
  %395 = icmp ne i32 (%struct.kvm_vcpu.2*, i32)* %394, null
  br i1 %395, label %398, label %396

396:                                              ; preds = %389
  %397 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %397, i32* %10, align 4
  br label %415

398:                                              ; preds = %389
  %399 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %400 = load i32, i32* %14, align 4
  %401 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %399, i32 %400)
  store i32 %401, i32* %31, align 4
  %402 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %403 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 7
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 2
  %406 = load i32 (%struct.kvm_vcpu.2*, i32)*, i32 (%struct.kvm_vcpu.2*, i32)** %405, align 8
  %407 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %408 = bitcast %struct.kvm_vcpu* %407 to %struct.kvm_vcpu.2*
  %409 = load i32, i32* %31, align 4
  %410 = call i32 %406(%struct.kvm_vcpu.2* %408, i32 %409)
  store i32 %410, i32* %30, align 4
  %411 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %30, align 4
  %414 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %411, i32 %412, i32 %413)
  br label %415

415:                                              ; preds = %398, %396
  br label %498

416:                                              ; preds = %91
  br label %498

417:                                              ; preds = %91
  %418 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %419 = load i32, i32* %14, align 4
  %420 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %418, i32 %419)
  store i32 %420, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %421 = bitcast [8 x i32]* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %421, i8 0, i64 32, i1 false)
  %422 = load i32, i32* %13, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %417
  %425 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %426 = load i32, i32* %13, align 4
  %427 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %425, i32 %426)
  store i32 %427, i32* %33, align 4
  br label %428

428:                                              ; preds = %424, %417
  %429 = load i32, i32* %33, align 4
  %430 = load i32, i32* %32, align 4
  %431 = add nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = and i64 %432, -32
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %34, align 4
  %435 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %436 = call i64 @kvmppc_get_msr(%struct.kvm_vcpu* %435)
  %437 = load i64, i64* @MSR_SF, align 8
  %438 = and i64 %436, %437
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %428
  %441 = load i32, i32* %34, align 4
  store i32 %441, i32* %34, align 4
  br label %442

442:                                              ; preds = %440, %428
  %443 = load i32, i32* %34, align 4
  store i32 %443, i32* %35, align 4
  %444 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %445 = getelementptr inbounds [8 x i32], [8 x i32]* %36, i64 0, i64 0
  %446 = call i32 @kvmppc_st(%struct.kvm_vcpu* %444, i32* %34, i32 32, i32* %445, i32 1)
  store i32 %446, i32* %38, align 4
  %447 = load i32, i32* %38, align 4
  %448 = load i32, i32* @ENOENT, align 4
  %449 = sub nsw i32 0, %448
  %450 = icmp eq i32 %447, %449
  br i1 %450, label %456, label %451

451:                                              ; preds = %442
  %452 = load i32, i32* %38, align 4
  %453 = load i32, i32* @EPERM, align 4
  %454 = sub nsw i32 0, %453
  %455 = icmp eq i32 %452, %454
  br i1 %455, label %456, label %495

456:                                              ; preds = %451, %442
  %457 = load i32*, i32** %9, align 8
  store i32 0, i32* %457, align 4
  %458 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %459 = load i32, i32* %35, align 4
  %460 = call i32 @kvmppc_set_dar(%struct.kvm_vcpu* %458, i32 %459)
  %461 = load i32, i32* %35, align 4
  %462 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %463 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  store i32 %461, i32* %464, align 4
  %465 = load i32, i32* @DSISR_ISSTORE, align 4
  store i32 %465, i32* %37, align 4
  %466 = load i32, i32* %38, align 4
  %467 = load i32, i32* @ENOENT, align 4
  %468 = sub nsw i32 0, %467
  %469 = icmp eq i32 %466, %468
  br i1 %469, label %470, label %474

470:                                              ; preds = %456
  %471 = load i32, i32* @DSISR_NOHPTE, align 4
  %472 = load i32, i32* %37, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %37, align 4
  br label %484

474:                                              ; preds = %456
  %475 = load i32, i32* %38, align 4
  %476 = load i32, i32* @EPERM, align 4
  %477 = sub nsw i32 0, %476
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %479, label %483

479:                                              ; preds = %474
  %480 = load i32, i32* @DSISR_PROTFAULT, align 4
  %481 = load i32, i32* %37, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %37, align 4
  br label %483

483:                                              ; preds = %479, %474
  br label %484

484:                                              ; preds = %483, %470
  %485 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %486 = load i32, i32* %37, align 4
  %487 = call i32 @kvmppc_set_dsisr(%struct.kvm_vcpu* %485, i32 %486)
  %488 = load i32, i32* %37, align 4
  %489 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %490 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 2
  store i32 %488, i32* %491, align 8
  %492 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %493 = load i32, i32* @BOOK3S_INTERRUPT_DATA_STORAGE, align 4
  %494 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %492, i32 %493)
  br label %495

495:                                              ; preds = %484, %451
  br label %498

496:                                              ; preds = %91
  %497 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %497, i32* %10, align 4
  br label %498

498:                                              ; preds = %496, %495, %416, %415, %388, %361, %296, %275, %251, %241, %222, %205, %190, %189, %162, %133, %132, %94
  br label %501

499:                                              ; preds = %4
  %500 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %500, i32* %10, align 4
  br label %501

501:                                              ; preds = %499, %498, %90, %72
  %502 = load i32, i32* %10, align 4
  %503 = load i32, i32* @EMULATE_FAIL, align 4
  %504 = icmp eq i32 %502, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %501
  %506 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %507 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %508 = call i32 @kvmppc_emulate_paired_single(%struct.kvm_run* %506, %struct.kvm_vcpu* %507)
  store i32 %508, i32* %10, align 4
  br label %509

509:                                              ; preds = %505, %501
  %510 = load i32, i32* %10, align 4
  store i32 %510, i32* %5, align 4
  br label %511

511:                                              ; preds = %509, %316, %294, %273, %249
  %512 = load i32, i32* %5, align 4
  ret i32 %512
}

declare dso_local i32 @get_rt(i32) #1

declare dso_local i32 @get_rs(i32) #1

declare dso_local i32 @get_ra(i32) #1

declare dso_local i32 @get_rb(i32) #1

declare dso_local i32 @get_op(i32) #1

declare dso_local i64 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i64 @kvmppc_get_srr1(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_srr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_msr_fast(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_field(i32, i32, i32) #1

declare dso_local i32 @kvmppc_get_cr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_cr(%struct.kvm_vcpu*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kvmppc_st(%struct.kvm_vcpu*, i32*, i32, i32*, i32) #1

declare dso_local i32 @kvmppc_set_dar(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_dsisr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_emulate_paired_single(%struct.kvm_run*, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
