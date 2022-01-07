; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_CP0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_CP0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%union.mips_instruction = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64*, i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i64**, i32** }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"!!!COP0_RFE!!!\0A\00", align 1
@MIPS_CP0_COUNT = common dso_local global i64 0, align 8
@MIPS_CP0_ERRCTL = common dso_local global i64 0, align 8
@KVM_TRACE_MFC0 = common dso_local global i32 0, align 4
@KVM_TRACE_DMFC0 = common dso_local global i32 0, align 4
@KVM_TRACE_MTC0 = common dso_local global i32 0, align 4
@MIPS_CP0_TLB_INDEX = common dso_local global i64 0, align 8
@KVM_MIPS_GUEST_TLB_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid TLB Index: %ld\00", align 1
@MIPS_CP0_PRID = common dso_local global i64 0, align 8
@MIPS_CP0_TLB_HI = common dso_local global i64 0, align 8
@MIPS_CP0_COMPARE = common dso_local global i64 0, align 8
@MIPS_CP0_STATUS = common dso_local global i64 0, align 8
@ST0_NMI = common dso_local global i32 0, align 4
@ST0_CU1 = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MIPS_FPIR_F64 = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_MSA = common dso_local global i32 0, align 4
@KVM_MIPS_AUX_FPU = common dso_local global i32 0, align 4
@MIPS_CP0_CONFIG = common dso_local global i64 0, align 8
@MIPS_CONF5_FRE = common dso_local global i32 0, align 4
@MIPS_CONF5_MSAEN = common dso_local global i32 0, align 4
@MIPS_CP0_CAUSE = common dso_local global i64 0, align 8
@CAUSEF_DC = common dso_local global i64 0, align 8
@MIPS_CP0_HWRENA = common dso_local global i64 0, align 8
@MIPS_HWRENA_CPUNUM = common dso_local global i64 0, align 8
@MIPS_HWRENA_SYNCISTEP = common dso_local global i64 0, align 8
@MIPS_HWRENA_CC = common dso_local global i64 0, align 8
@MIPS_HWRENA_CCRES = common dso_local global i64 0, align 8
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_HWRENA_ULR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"!!!!!!![%#lx]dmtc_op: rt: %d, rd: %d, sel: %d!!!!!!\0A\00", align 1
@KVM_TRACE_DMTC0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"[%#lx] mfmc0_op: EI\0A\00", align 1
@ST0_IE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"[%#lx] mfmc0_op: DI\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"WRPGPR[%d][%d] = %#lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"[%#lx]MachEmulateCP0: unsupported COP0, copz: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_CP0(%union.mips_instruction* byval(%union.mips_instruction) align 8 %0, i64* %1, i64 %2, %struct.kvm_run* %3, %struct.kvm_vcpu* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_run*, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca %struct.mips_coproc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kvm_run* %3, %struct.kvm_run** %9, align 8
  store %struct.kvm_vcpu* %4, %struct.kvm_vcpu** %10, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load %struct.mips_coproc*, %struct.mips_coproc** %31, align 8
  store %struct.mips_coproc* %32, %struct.mips_coproc** %11, align 8
  %33 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @update_pc(%struct.kvm_vcpu* %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @EMULATE_FAIL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %698

46:                                               ; preds = %5
  %47 = bitcast %union.mips_instruction* %0 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = bitcast %union.mips_instruction* %0 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %78 [
    i32 132, label %55
    i32 131, label %58
    i32 130, label %61
    i32 133, label %64
    i32 134, label %67
    i32 139, label %69
    i32 129, label %72
    i32 138, label %75
  ]

55:                                               ; preds = %51
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %57 = call i32 @kvm_mips_emul_tlbr(%struct.kvm_vcpu* %56)
  store i32 %57, i32* %12, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %60 = call i32 @kvm_mips_emul_tlbwi(%struct.kvm_vcpu* %59)
  store i32 %60, i32* %12, align 4
  br label %78

61:                                               ; preds = %51
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %63 = call i32 @kvm_mips_emul_tlbwr(%struct.kvm_vcpu* %62)
  store i32 %63, i32* %12, align 4
  br label %78

64:                                               ; preds = %51
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %66 = call i32 @kvm_mips_emul_tlbp(%struct.kvm_vcpu* %65)
  store i32 %66, i32* %12, align 4
  br label %78

67:                                               ; preds = %51
  %68 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %78

69:                                               ; preds = %51
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %71 = call i32 @kvm_mips_emul_eret(%struct.kvm_vcpu* %70)
  store i32 %71, i32* %12, align 4
  br label %696

72:                                               ; preds = %51
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %74 = call i32 @kvm_mips_emul_wait(%struct.kvm_vcpu* %73)
  store i32 %74, i32* %12, align 4
  br label %78

75:                                               ; preds = %51
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %77 = call i32 @kvm_mips_emul_hypcall(%struct.kvm_vcpu* %76, %union.mips_instruction* byval(%union.mips_instruction) align 8 %0)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %51, %75, %72, %67, %64, %61, %58, %55
  br label %685

79:                                               ; preds = %46
  %80 = bitcast %union.mips_instruction* %0 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %13, align 8
  %83 = bitcast %union.mips_instruction* %0 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = bitcast %union.mips_instruction* %0 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %15, align 8
  %89 = bitcast %union.mips_instruction* %0 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %674 [
    i32 137, label %92
    i32 141, label %158
    i32 135, label %187
    i32 140, label %563
    i32 136, label %586
    i32 128, label %623
  ]

92:                                               ; preds = %79
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @MIPS_CP0_COUNT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load i64, i64* %15, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %101 = call i32 @kvm_mips_read_count(%struct.kvm_vcpu* %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %13, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 %104, i64* %110, align 8
  br label %144

111:                                              ; preds = %96, %92
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* @MIPS_CP0_ERRCTL, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i64, i64* %15, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 0, i64* %124, align 8
  br label %143

125:                                              ; preds = %115, %111
  %126 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %127 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %126, i32 0, i32 0
  %128 = load i64**, i64*** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i64*, i64** %128, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %136, i64* %142, align 8
  br label %143

143:                                              ; preds = %125, %118
  br label %144

144:                                              ; preds = %143, %99
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %146 = load i32, i32* @KVM_TRACE_MFC0, align 4
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @KVM_TRACE_COP0(i64 %147, i64 %148)
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %13, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %145, i32 %146, i32 %149, i64 %156)
  br label %684

158:                                              ; preds = %79
  %159 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %160 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %159, i32 0, i32 0
  %161 = load i64**, i64*** %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i64*, i64** %161, i64 %162
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %167, i64* %173, align 8
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %175 = load i32, i32* @KVM_TRACE_DMFC0, align 4
  %176 = load i64, i64* %14, align 8
  %177 = load i64, i64* %15, align 8
  %178 = call i32 @KVM_TRACE_COP0(i64 %176, i64 %177)
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %180 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %174, i32 %175, i32 %178, i64 %185)
  br label %684

187:                                              ; preds = %79
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %189 = load i32, i32* @KVM_TRACE_MTC0, align 4
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @KVM_TRACE_COP0(i64 %190, i64 %191)
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %194 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %13, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %188, i32 %189, i32 %192, i64 %199)
  %201 = load i64, i64* %14, align 8
  %202 = load i64, i64* @MIPS_CP0_TLB_INDEX, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %187
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %206 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = load i64, i64* %13, align 8
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @KVM_MIPS_GUEST_TLB_SIZE, align 8
  %213 = icmp uge i64 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %204
  %215 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %216 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* %13, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %221)
  %223 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %223, i32* %12, align 4
  br label %684

224:                                              ; preds = %204, %187
  %225 = load i64, i64* %14, align 8
  %226 = load i64, i64* @MIPS_CP0_PRID, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = load i64, i64* %15, align 8
  %230 = icmp eq i64 %229, 1
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %234 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* %13, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @kvm_change_c0_guest_ebase(%struct.mips_coproc* %232, i32 536866816, i64 %239)
  br label %562

241:                                              ; preds = %228, %224
  %242 = load i64, i64* %14, align 8
  %243 = load i64, i64* @MIPS_CP0_TLB_HI, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %241
  %246 = load i64, i64* %15, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %250 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %251 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = load i64, i64* %13, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @kvm_mips_change_entryhi(%struct.kvm_vcpu* %249, i64 %256)
  br label %561

258:                                              ; preds = %245, %241
  %259 = load i64, i64* %14, align 8
  %260 = load i64, i64* @MIPS_CP0_COUNT, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %258
  %263 = load i64, i64* %15, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %262
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %268 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* %13, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @kvm_mips_write_count(%struct.kvm_vcpu* %266, i64 %273)
  br label %686

275:                                              ; preds = %262, %258
  %276 = load i64, i64* %14, align 8
  %277 = load i64, i64* @MIPS_CP0_COMPARE, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %275
  %280 = load i64, i64* %15, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %284 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %285 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* %13, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @kvm_mips_write_compare(%struct.kvm_vcpu* %283, i64 %290, i32 1)
  br label %559

292:                                              ; preds = %279, %275
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* @MIPS_CP0_STATUS, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %391

296:                                              ; preds = %292
  %297 = load i64, i64* %15, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %391

299:                                              ; preds = %296
  %300 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %301 = call i8* @kvm_read_c0_guest_status(%struct.mips_coproc* %300)
  %302 = ptrtoint i8* %301 to i32
  store i32 %302, i32* %17, align 4
  %303 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %304 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %18, align 4
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* %17, align 4
  %313 = xor i32 %311, %312
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* @ST0_NMI, align 4
  %315 = xor i32 %314, -1
  %316 = load i32, i32* %18, align 4
  %317 = and i32 %316, %315
  store i32 %317, i32* %18, align 4
  %318 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %319 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %318, i32 0, i32 0
  %320 = call i32 @kvm_mips_guest_has_fpu(%struct.TYPE_9__* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %299
  %323 = load i32, i32* @ST0_CU1, align 4
  %324 = load i32, i32* @ST0_FR, align 4
  %325 = or i32 %323, %324
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %18, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %18, align 4
  br label %329

329:                                              ; preds = %322, %299
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @current_cpu_data, i32 0, i32 0), align 4
  %331 = load i32, i32* @MIPS_FPIR_F64, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %329
  %335 = load i32, i32* @ST0_FR, align 4
  %336 = xor i32 %335, -1
  %337 = load i32, i32* %18, align 4
  %338 = and i32 %337, %336
  store i32 %338, i32* %18, align 4
  br label %339

339:                                              ; preds = %334, %329
  %340 = call i32 (...) @preempt_disable()
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* @ST0_FR, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %347 = call i32 @kvm_drop_fpu(%struct.kvm_vcpu* %346)
  br label %348

348:                                              ; preds = %345, %339
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* @ST0_CU1, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %369

353:                                              ; preds = %348
  %354 = load i32, i32* %18, align 4
  %355 = load i32, i32* @ST0_FR, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %369, label %358

358:                                              ; preds = %353
  %359 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %360 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %358
  %367 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %368 = call i32 @kvm_lose_fpu(%struct.kvm_vcpu* %367)
  br label %369

369:                                              ; preds = %366, %358, %353, %348
  %370 = load i32, i32* %19, align 4
  %371 = load i32, i32* @ST0_CU1, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %369
  %375 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %376 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %374
  %383 = load i32, i32* @ST0_CU1, align 4
  %384 = load i32, i32* %18, align 4
  %385 = call i32 @change_c0_status(i32 %383, i32 %384)
  br label %386

386:                                              ; preds = %382, %374, %369
  %387 = call i32 (...) @preempt_enable()
  %388 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %389 = load i32, i32* %18, align 4
  %390 = call i32 @kvm_write_c0_guest_status(%struct.mips_coproc* %388, i32 %389)
  br label %558

391:                                              ; preds = %296, %292
  %392 = load i64, i64* %14, align 8
  %393 = load i64, i64* @MIPS_CP0_CONFIG, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %458

395:                                              ; preds = %391
  %396 = load i64, i64* %15, align 8
  %397 = icmp eq i64 %396, 5
  br i1 %397, label %398, label %458

398:                                              ; preds = %395
  %399 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %400 = call i32 @kvm_read_c0_guest_config5(%struct.mips_coproc* %399)
  store i32 %400, i32* %20, align 4
  %401 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %402 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = load i64*, i64** %403, align 8
  %405 = load i64, i64* %13, align 8
  %406 = getelementptr inbounds i64, i64* %404, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %21, align 4
  %409 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %410 = call i32 @kvm_mips_config5_wrmask(%struct.kvm_vcpu* %409)
  store i32 %410, i32* %23, align 4
  %411 = load i32, i32* %21, align 4
  %412 = load i32, i32* %20, align 4
  %413 = xor i32 %411, %412
  %414 = load i32, i32* %23, align 4
  %415 = and i32 %413, %414
  store i32 %415, i32* %22, align 4
  %416 = load i32, i32* %20, align 4
  %417 = load i32, i32* %22, align 4
  %418 = xor i32 %416, %417
  store i32 %418, i32* %21, align 4
  %419 = call i32 (...) @preempt_disable()
  %420 = load i32, i32* %22, align 4
  %421 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %436

424:                                              ; preds = %398
  %425 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %426 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @KVM_MIPS_AUX_FPU, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %424
  %433 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %434 = load i32, i32* %21, align 4
  %435 = call i32 @change_c0_config5(i32 %433, i32 %434)
  br label %436

436:                                              ; preds = %432, %424, %398
  %437 = load i32, i32* %22, align 4
  %438 = load i32, i32* @MIPS_CONF5_MSAEN, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %453

441:                                              ; preds = %436
  %442 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %443 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @KVM_MIPS_AUX_MSA, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %441
  %450 = load i32, i32* @MIPS_CONF5_MSAEN, align 4
  %451 = load i32, i32* %21, align 4
  %452 = call i32 @change_c0_config5(i32 %450, i32 %451)
  br label %453

453:                                              ; preds = %449, %441, %436
  %454 = call i32 (...) @preempt_enable()
  %455 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %456 = load i32, i32* %21, align 4
  %457 = call i32 @kvm_write_c0_guest_config5(%struct.mips_coproc* %455, i32 %456)
  br label %557

458:                                              ; preds = %395, %391
  %459 = load i64, i64* %14, align 8
  %460 = load i64, i64* @MIPS_CP0_CAUSE, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %497

462:                                              ; preds = %458
  %463 = load i64, i64* %15, align 8
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %497

465:                                              ; preds = %462
  %466 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %467 = call i64 @kvm_read_c0_guest_cause(%struct.mips_coproc* %466)
  store i64 %467, i64* %24, align 8
  %468 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %469 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 1
  %471 = load i64*, i64** %470, align 8
  %472 = load i64, i64* %13, align 8
  %473 = getelementptr inbounds i64, i64* %471, i64 %472
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %25, align 8
  %475 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %476 = load i64, i64* %25, align 8
  %477 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %475, i32 142607104, i64 %476)
  %478 = load i64, i64* %24, align 8
  %479 = load i64, i64* %25, align 8
  %480 = xor i64 %478, %479
  %481 = load i64, i64* @CAUSEF_DC, align 8
  %482 = and i64 %480, %481
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %465
  %485 = load i64, i64* %25, align 8
  %486 = load i64, i64* @CAUSEF_DC, align 8
  %487 = and i64 %485, %486
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %484
  %490 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %491 = call i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu* %490)
  br label %495

492:                                              ; preds = %484
  %493 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %494 = call i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu* %493)
  br label %495

495:                                              ; preds = %492, %489
  br label %496

496:                                              ; preds = %495, %465
  br label %556

497:                                              ; preds = %462, %458
  %498 = load i64, i64* %14, align 8
  %499 = load i64, i64* @MIPS_CP0_HWRENA, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %539

501:                                              ; preds = %497
  %502 = load i64, i64* %15, align 8
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %539

504:                                              ; preds = %501
  %505 = load i64, i64* @MIPS_HWRENA_CPUNUM, align 8
  %506 = load i64, i64* @MIPS_HWRENA_SYNCISTEP, align 8
  %507 = or i64 %505, %506
  %508 = load i64, i64* @MIPS_HWRENA_CC, align 8
  %509 = or i64 %507, %508
  %510 = load i64, i64* @MIPS_HWRENA_CCRES, align 8
  %511 = or i64 %509, %510
  store i64 %511, i64* %26, align 8
  %512 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %513 = call i32 @kvm_read_c0_guest_config3(%struct.mips_coproc* %512)
  %514 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %504
  %518 = load i64, i64* @MIPS_HWRENA_ULR, align 8
  %519 = load i64, i64* %26, align 8
  %520 = or i64 %519, %518
  store i64 %520, i64* %26, align 8
  br label %521

521:                                              ; preds = %517, %504
  %522 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %523 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 1
  %525 = load i64*, i64** %524, align 8
  %526 = load i64, i64* %13, align 8
  %527 = getelementptr inbounds i64, i64* %525, i64 %526
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* %26, align 8
  %530 = and i64 %528, %529
  %531 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %532 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %531, i32 0, i32 0
  %533 = load i64**, i64*** %532, align 8
  %534 = load i64, i64* %14, align 8
  %535 = getelementptr inbounds i64*, i64** %533, i64 %534
  %536 = load i64*, i64** %535, align 8
  %537 = load i64, i64* %15, align 8
  %538 = getelementptr inbounds i64, i64* %536, i64 %537
  store i64 %530, i64* %538, align 8
  br label %555

539:                                              ; preds = %501, %497
  %540 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %541 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 1
  %543 = load i64*, i64** %542, align 8
  %544 = load i64, i64* %13, align 8
  %545 = getelementptr inbounds i64, i64* %543, i64 %544
  %546 = load i64, i64* %545, align 8
  %547 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %548 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %547, i32 0, i32 0
  %549 = load i64**, i64*** %548, align 8
  %550 = load i64, i64* %14, align 8
  %551 = getelementptr inbounds i64*, i64** %549, i64 %550
  %552 = load i64*, i64** %551, align 8
  %553 = load i64, i64* %15, align 8
  %554 = getelementptr inbounds i64, i64* %552, i64 %553
  store i64 %546, i64* %554, align 8
  br label %555

555:                                              ; preds = %539, %521
  br label %556

556:                                              ; preds = %555, %496
  br label %557

557:                                              ; preds = %556, %453
  br label %558

558:                                              ; preds = %557, %386
  br label %559

559:                                              ; preds = %558, %282
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560, %248
  br label %562

562:                                              ; preds = %561, %231
  br label %684

563:                                              ; preds = %79
  %564 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %565 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* %13, align 8
  %569 = load i64, i64* %14, align 8
  %570 = load i64, i64* %15, align 8
  %571 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %567, i64 %568, i64 %569, i64 %570)
  %572 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %573 = load i32, i32* @KVM_TRACE_DMTC0, align 4
  %574 = load i64, i64* %14, align 8
  %575 = load i64, i64* %15, align 8
  %576 = call i32 @KVM_TRACE_COP0(i64 %574, i64 %575)
  %577 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %578 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %578, i32 0, i32 1
  %580 = load i64*, i64** %579, align 8
  %581 = load i64, i64* %13, align 8
  %582 = getelementptr inbounds i64, i64* %580, i64 %581
  %583 = load i64, i64* %582, align 8
  %584 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %572, i32 %573, i32 %576, i64 %583)
  %585 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %585, i32* %12, align 4
  br label %684

586:                                              ; preds = %79
  %587 = load i64, i64* %13, align 8
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %599

589:                                              ; preds = %586
  %590 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %591 = call i8* @kvm_read_c0_guest_status(%struct.mips_coproc* %590)
  %592 = ptrtoint i8* %591 to i64
  %593 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %594 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %594, i32 0, i32 1
  %596 = load i64*, i64** %595, align 8
  %597 = load i64, i64* %13, align 8
  %598 = getelementptr inbounds i64, i64* %596, i64 %597
  store i64 %592, i64* %598, align 8
  br label %599

599:                                              ; preds = %589, %586
  %600 = bitcast %union.mips_instruction* %0 to %struct.TYPE_6__*
  %601 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %613

604:                                              ; preds = %599
  %605 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %606 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = call i32 (i8*, i64, ...) @kvm_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %608)
  %610 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %611 = load i32, i32* @ST0_IE, align 4
  %612 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %610, i32 %611)
  br label %622

613:                                              ; preds = %599
  %614 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %615 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = call i32 (i8*, i64, ...) @kvm_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %617)
  %619 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %620 = load i32, i32* @ST0_IE, align 4
  %621 = call i32 @kvm_clear_c0_guest_status(%struct.mips_coproc* %619, i32 %620)
  br label %622

622:                                              ; preds = %613, %604
  br label %684

623:                                              ; preds = %79
  %624 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %625 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %624, i32 0, i32 0
  %626 = load i64**, i64*** %625, align 8
  %627 = load i64, i64* @MIPS_CP0_STATUS, align 8
  %628 = getelementptr inbounds i64*, i64** %626, i64 %627
  %629 = load i64*, i64** %628, align 8
  %630 = getelementptr inbounds i64, i64* %629, i64 2
  %631 = load i64, i64* %630, align 8
  %632 = and i64 %631, 15
  store i64 %632, i64* %27, align 8
  %633 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  %634 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %633, i32 0, i32 0
  %635 = load i64**, i64*** %634, align 8
  %636 = load i64, i64* @MIPS_CP0_STATUS, align 8
  %637 = getelementptr inbounds i64*, i64** %635, i64 %636
  %638 = load i64*, i64** %637, align 8
  %639 = getelementptr inbounds i64, i64* %638, i64 2
  %640 = load i64, i64* %639, align 8
  %641 = lshr i64 %640, 6
  %642 = and i64 %641, 15
  store i64 %642, i64* %28, align 8
  %643 = load i64, i64* %27, align 8
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %623
  %646 = load i64, i64* %28, align 8
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %650

648:                                              ; preds = %645, %623
  %649 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %649, i32* %12, align 4
  br label %684

650:                                              ; preds = %645
  %651 = load i64, i64* %28, align 8
  %652 = load i64, i64* %14, align 8
  %653 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %654 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %654, i32 0, i32 1
  %656 = load i64*, i64** %655, align 8
  %657 = load i64, i64* %13, align 8
  %658 = getelementptr inbounds i64, i64* %656, i64 %657
  %659 = load i64, i64* %658, align 8
  %660 = call i32 (i8*, i64, ...) @kvm_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %651, i64 %652, i64 %659)
  %661 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %662 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 1
  %664 = load i64*, i64** %663, align 8
  %665 = load i64, i64* %13, align 8
  %666 = getelementptr inbounds i64, i64* %664, i64 %665
  %667 = load i64, i64* %666, align 8
  %668 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %669 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %669, i32 0, i32 1
  %671 = load i64*, i64** %670, align 8
  %672 = load i64, i64* %14, align 8
  %673 = getelementptr inbounds i64, i64* %671, i64 %672
  store i64 %667, i64* %673, align 8
  br label %684

674:                                              ; preds = %79
  %675 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %676 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %676, i32 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = bitcast %union.mips_instruction* %0 to %struct.TYPE_8__*
  %680 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %679, i32 0, i32 3
  %681 = load i32, i32* %680, align 8
  %682 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %678, i32 %681)
  %683 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %683, i32* %12, align 4
  br label %684

684:                                              ; preds = %674, %650, %648, %622, %563, %562, %214, %158, %144
  br label %685

685:                                              ; preds = %684, %78
  br label %686

686:                                              ; preds = %685, %265
  %687 = load i32, i32* %12, align 4
  %688 = load i32, i32* @EMULATE_FAIL, align 4
  %689 = icmp eq i32 %687, %688
  br i1 %689, label %690, label %695

690:                                              ; preds = %686
  %691 = load i64, i64* %16, align 8
  %692 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %693 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %693, i32 0, i32 0
  store i64 %691, i64* %694, align 8
  br label %695

695:                                              ; preds = %690, %686
  br label %696

696:                                              ; preds = %695, %69
  %697 = load i32, i32* %12, align 4
  store i32 %697, i32* %6, align 4
  br label %698

698:                                              ; preds = %696, %44
  %699 = load i32, i32* %6, align 4
  ret i32 %699
}

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mips_emul_tlbr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emul_tlbwi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emul_tlbwr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emul_tlbp(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, ...) #1

declare dso_local i32 @kvm_mips_emul_eret(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emul_wait(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emul_hypcall(%struct.kvm_vcpu*, %union.mips_instruction* byval(%union.mips_instruction) align 8) #1

declare dso_local i32 @kvm_mips_read_count(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hwr(%struct.kvm_vcpu*, i32, i32, i64) #1

declare dso_local i32 @KVM_TRACE_COP0(i64, i64) #1

declare dso_local i32 @kvm_change_c0_guest_ebase(%struct.mips_coproc*, i32, i64) #1

declare dso_local i32 @kvm_mips_change_entryhi(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mips_write_count(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mips_write_compare(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i8* @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_guest_has_fpu(%struct.TYPE_9__*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @kvm_drop_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lose_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @change_c0_status(i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kvm_write_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_config5_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @change_c0_config5(i32, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config5(%struct.mips_coproc*, i32) #1

declare dso_local i64 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i64) #1

declare dso_local i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_c0_guest_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_debug(i8*, i64, ...) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_status(%struct.mips_coproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
