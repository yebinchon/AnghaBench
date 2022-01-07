; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_pfmf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_pfmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_18__*, %struct.TYPE_16__, i32, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@PGM_OPERATION = common dso_local global i32 0, align 4
@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PFMF_RESERVED = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@PFMF_NQ = common dso_local global i32 0, align 4
@PFMF_SK = common dso_local global i32 0, align 4
@PFMF_MR = common dso_local global i32 0, align 4
@PFMF_MC = common dso_local global i32 0, align 4
@PFMF_KEY = common dso_local global i8 0, align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@PFMF_CF = common dso_local global i32 0, align 4
@PFMF_FSC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@_SEGMENT_SIZE = common dso_local global i32 0, align 4
@PSW_BITS_AMODE_24BIT = common dso_local global i64 0, align 8
@_REGION3_SIZE = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_22__* null, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PSW_BITS_AMODE_64BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_pfmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_pfmf(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %22, i32* %7, i32* %8)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @test_kvm_facility(i32 %26, i32 8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = load i32, i32* @PGM_OPERATION, align 4
  %32 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %495

33:                                               ; preds = %1
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %47 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %495

48:                                               ; preds = %33
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PFMF_RESERVED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load i32, i32* @PGM_SPECIFICATION, align 4
  %66 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %64, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %495

67:                                               ; preds = %48
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PFMF_NQ, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %67
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @test_kvm_facility(i32 %85, i32 14)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load i32, i32* @PGM_SPECIFICATION, align 4
  %91 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %495

92:                                               ; preds = %82, %67
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PFMF_SK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %140

107:                                              ; preds = %92
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @test_kvm_facility(i32 %110, i32 10)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PFMF_MR, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PFMF_MC, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %113, %107, %92
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PFMF_NQ, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 0
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i8, i8* @PFMF_KEY, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %164, %166
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %11, align 1
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* @PAGE_MASK, align 8
  %182 = and i64 %180, %181
  store i64 %182, i64* %9, align 8
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %183, i64 %184)
  store i64 %185, i64* %9, align 8
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PFMF_CF, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %140
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i64 @kvm_s390_check_low_addr_prot_real(%struct.kvm_vcpu* %201, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %208 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %206, i32* %209)
  store i32 %210, i32* %2, align 4
  br label %495

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %140
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %213, i32 0, i32 0
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @PFMF_FSC, align 4
  %225 = and i32 %223, %224
  switch i32 %225, label %281 [
    i32 0, label %226
    i32 4096, label %237
    i32 8192, label %247
  ]

226:                                              ; preds = %212
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %228 = load i64, i64* %9, align 8
  %229 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %227, i64 %228)
  store i64 %229, i64* %9, align 8
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* @PAGE_SIZE, align 8
  %232 = add i64 %230, %231
  %233 = load i64, i64* @PAGE_SIZE, align 8
  %234 = sub i64 %233, 1
  %235 = xor i64 %234, -1
  %236 = and i64 %232, %235
  store i64 %236, i64* %10, align 8
  br label %285

237:                                              ; preds = %212
  %238 = load i64, i64* %9, align 8
  %239 = load i32, i32* @_SEGMENT_SIZE, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %238, %240
  %242 = load i32, i32* @_SEGMENT_SIZE, align 4
  %243 = sub nsw i32 %242, 1
  %244 = xor i32 %243, -1
  %245 = sext i32 %244 to i64
  %246 = and i64 %241, %245
  store i64 %246, i64* %10, align 8
  br label %285

247:                                              ; preds = %212
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %249 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @test_kvm_facility(i32 %250, i32 78)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %247
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @psw_bits(i32 %260)
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %261, i64* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @PSW_BITS_AMODE_24BIT, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %253, %247
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %269 = load i32, i32* @PGM_SPECIFICATION, align 4
  %270 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %268, i32 %269)
  store i32 %270, i32* %2, align 4
  br label %495

271:                                              ; preds = %253
  %272 = load i64, i64* %9, align 8
  %273 = load i32, i32* @_REGION3_SIZE, align 4
  %274 = sext i32 %273 to i64
  %275 = add i64 %272, %274
  %276 = load i32, i32* @_REGION3_SIZE, align 4
  %277 = sub nsw i32 %276, 1
  %278 = xor i32 %277, -1
  %279 = sext i32 %278 to i64
  %280 = and i64 %275, %279
  store i64 %280, i64* %10, align 8
  br label %285

281:                                              ; preds = %212
  %282 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %283 = load i32, i32* @PGM_SPECIFICATION, align 4
  %284 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %282, i32 %283)
  store i32 %284, i32* %2, align 4
  br label %495

285:                                              ; preds = %271, %237, %226
  br label %286

286:                                              ; preds = %414, %407, %285
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %418

290:                                              ; preds = %286
  store i32 0, i32* %14, align 4
  %291 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %292 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i64, i64* %9, align 8
  %295 = call i32 @gpa_to_gfn(i64 %294)
  %296 = call i64 @gfn_to_hva(i32 %293, i32 %295)
  store i64 %296, i64* %13, align 8
  %297 = load i64, i64* %13, align 8
  %298 = call i64 @kvm_is_error_hva(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %290
  %301 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %302 = load i32, i32* @PGM_ADDRESSING, align 4
  %303 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %301, i32 %302)
  store i32 %303, i32* %2, align 4
  br label %495

304:                                              ; preds = %290
  %305 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %306 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %305, i32 0, i32 0
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @PFMF_CF, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %304
  %320 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %321 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* @PAGE_SIZE, align 8
  %325 = call i64 @kvm_clear_guest(i32 %322, i64 %323, i64 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %319
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %329 = load i32, i32* @PGM_ADDRESSING, align 4
  %330 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %328, i32 %329)
  store i32 %330, i32* %2, align 4
  br label %495

331:                                              ; preds = %319
  br label %332

332:                                              ; preds = %331, %304
  %333 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %334 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %333, i32 0, i32 0
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @PFMF_SK, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %414

347:                                              ; preds = %332
  %348 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %349 = call i32 @kvm_s390_skey_check_enable(%struct.kvm_vcpu* %348)
  store i32 %349, i32* %15, align 4
  %350 = load i32, i32* %15, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = load i32, i32* %15, align 4
  store i32 %353, i32* %2, align 4
  br label %495

354:                                              ; preds = %347
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 0
  %359 = call i32 @down_read(i32* %358)
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %361, align 8
  %363 = load i64, i64* %13, align 8
  %364 = load i8, i8* %11, align 1
  %365 = load i32, i32* %6, align 4
  %366 = load i32, i32* %4, align 4
  %367 = load i32, i32* %5, align 4
  %368 = call i32 @cond_set_guest_storage_key(%struct.TYPE_13__* %362, i64 %363, i8 zeroext %364, i32* null, i32 %365, i32 %366, i32 %367)
  store i32 %368, i32* %15, align 4
  %369 = load i32, i32* %15, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %388

371:                                              ; preds = %354
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %374, align 8
  %376 = load i64, i64* %13, align 8
  %377 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %378 = call i32 @fixup_user_fault(%struct.TYPE_22__* %372, %struct.TYPE_13__* %375, i64 %376, i32 %377, i32* %14)
  store i32 %378, i32* %15, align 4
  %379 = load i32, i32* %15, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %371
  %382 = load i32, i32* @EAGAIN, align 4
  %383 = sub nsw i32 0, %382
  br label %386

384:                                              ; preds = %371
  %385 = load i32, i32* %15, align 4
  br label %386

386:                                              ; preds = %384, %381
  %387 = phi i32 [ %383, %381 ], [ %385, %384 ]
  store i32 %387, i32* %15, align 4
  br label %388

388:                                              ; preds = %386, %354
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** @current, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 0
  %393 = call i32 @up_read(i32* %392)
  %394 = load i32, i32* %15, align 4
  %395 = load i32, i32* @EFAULT, align 4
  %396 = sub nsw i32 0, %395
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %388
  %399 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %400 = load i32, i32* @PGM_ADDRESSING, align 4
  %401 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %399, i32 %400)
  store i32 %401, i32* %2, align 4
  br label %495

402:                                              ; preds = %388
  %403 = load i32, i32* %15, align 4
  %404 = load i32, i32* @EAGAIN, align 4
  %405 = sub nsw i32 0, %404
  %406 = icmp eq i32 %403, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %402
  br label %286

408:                                              ; preds = %402
  %409 = load i32, i32* %15, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %408
  %412 = load i32, i32* %15, align 4
  store i32 %412, i32* %2, align 4
  br label %495

413:                                              ; preds = %408
  br label %414

414:                                              ; preds = %413, %332
  %415 = load i64, i64* @PAGE_SIZE, align 8
  %416 = load i64, i64* %9, align 8
  %417 = add i64 %416, %415
  store i64 %417, i64* %9, align 8
  br label %286

418:                                              ; preds = %286
  %419 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %420 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %419, i32 0, i32 0
  %421 = load %struct.TYPE_18__*, %struct.TYPE_18__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %7, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @PFMF_FSC, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %494

433:                                              ; preds = %418
  %434 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %435 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i64 @psw_bits(i32 %440)
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %441, i64* %442, align 8
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @PSW_BITS_AMODE_64BIT, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %460

447:                                              ; preds = %433
  %448 = load i64, i64* %10, align 8
  %449 = trunc i64 %448 to i32
  %450 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %451 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %450, i32 0, i32 0
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  store i32 %449, i32* %459, align 4
  br label %493

460:                                              ; preds = %433
  %461 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %462 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %461, i32 0, i32 0
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 0
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  %473 = and i64 %472, -4294967296
  %474 = trunc i64 %473 to i32
  store i32 %474, i32* %470, align 4
  %475 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %476 = load i64, i64* %10, align 8
  %477 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %475, i64 %476)
  store i64 %477, i64* %10, align 8
  %478 = load i64, i64* %10, align 8
  %479 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %480 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %479, i32 0, i32 0
  %481 = load %struct.TYPE_18__*, %struct.TYPE_18__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = or i64 %490, %478
  %492 = trunc i64 %491 to i32
  store i32 %492, i32* %488, align 4
  br label %493

493:                                              ; preds = %460, %447
  br label %494

494:                                              ; preds = %493, %418
  store i32 0, i32* %2, align 4
  br label %495

495:                                              ; preds = %494, %411, %398, %352, %327, %300, %281, %267, %205, %88, %63, %44, %29
  %496 = load i32, i32* %2, align 4
  ret i32 %496
}

declare dso_local i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_s390_check_low_addr_prot_real(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu*, i32*) #1

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @psw_bits(i32) #1

declare dso_local i64 @gfn_to_hva(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i64 @kvm_clear_guest(i32, i64, i64) #1

declare dso_local i32 @kvm_s390_skey_check_enable(%struct.kvm_vcpu*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @cond_set_guest_storage_key(%struct.TYPE_13__*, i64, i8 zeroext, i32*, i32, i32, i32) #1

declare dso_local i32 @fixup_user_fault(%struct.TYPE_22__*, %struct.TYPE_13__*, i64, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
