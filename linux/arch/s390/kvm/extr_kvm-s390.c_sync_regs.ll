; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sync_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sync_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.gs_cb*, %struct.TYPE_17__ }
%struct.gs_cb = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_20__*, %struct.TYPE_14__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.gs_cb*, %struct.TYPE_16__, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.kvm_run = type { i32, %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.runtime_instr_cb = type { i64 }

@KVM_SYNC_PREFIX = common dso_local global i32 0, align 4
@KVM_SYNC_CRS = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@KVM_SYNC_ARCH0 = common dso_local global i32 0, align 4
@KVM_SYNC_PFAULT = common dso_local global i32 0, align 4
@KVM_S390_PFAULT_TOKEN_INVALID = common dso_local global i64 0, align 8
@KVM_SYNC_RICCB = common dso_local global i32 0, align 4
@ECB3_RI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ENABLE: RI (sync_regs)\00", align 1
@KVM_SYNC_GSCB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ENABLE: GS (sync_regs)\00", align 1
@ECB_GS = common dso_local global i32 0, align 4
@ECD_HOSTREGMGMT = common dso_local global i32 0, align 4
@KVM_SYNC_BPBC = common dso_local global i32 0, align 4
@FPF_BPBC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_15__* null, align 8
@MACHINE_HAS_VX = common dso_local global i64 0, align 8
@MACHINE_HAS_GS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_run*)* @sync_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_regs(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.runtime_instr_cb*, align 8
  %6 = alloca %struct.gs_cb*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %7 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 12
  %11 = bitcast i32* %10 to %struct.runtime_instr_cb*
  store %struct.runtime_instr_cb* %11, %struct.runtime_instr_cb** %5, align 8
  %12 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 11
  %16 = bitcast i32* %15 to %struct.gs_cb*
  store %struct.gs_cb* %16, %struct.gs_cb** %6, align 8
  %17 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  store i32 %19, i32* %25, align 4
  %26 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 4
  %35 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @KVM_SYNC_PREFIX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kvm_s390_set_prefix(%struct.kvm_vcpu* %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %2
  %50 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %51 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KVM_SYNC_CRS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 8
  %62 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 9
  %66 = call i32 @memcpy(i32* %61, i32* %65, i32 128)
  %67 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @kvm_make_request(i32 %67, %struct.kvm_vcpu* %68)
  br label %70

70:                                               ; preds = %56, %49
  %71 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @KVM_SYNC_ARCH0, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %70
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @kvm_s390_set_cpu_timer(%struct.kvm_vcpu* %78, i32 %83)
  %85 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %86 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 7
  store i32 %89, i32* %94, align 4
  %95 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %96 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 6
  store i32 %99, i32* %104, align 4
  %105 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 5
  store i32 %109, i32* %114, align 4
  %115 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %116 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %121 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %77, %70
  %126 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %127 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @KVM_SYNC_PFAULT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %167

132:                                              ; preds = %125
  %133 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %134 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  %141 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %142 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 7
  store i32 %145, i32* %148, align 4
  %149 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %150 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 6
  store i32 %153, i32* %156, align 8
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @KVM_S390_PFAULT_TOKEN_INVALID, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %132
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = call i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu* %164)
  br label %166

166:                                              ; preds = %163, %132
  br label %167

167:                                              ; preds = %166, %125
  %168 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %169 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @KVM_SYNC_RICCB, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %206

174:                                              ; preds = %167
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @test_kvm_facility(i32 %177, i32 64)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %174
  %181 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %5, align 8
  %182 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %180
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ECB3_RI, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %185
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %197 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %196, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i32, i32* @ECB3_RI, align 4
  %199 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %200 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %198
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %195, %185, %180, %174, %167
  %207 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %208 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @KVM_SYNC_GSCB, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %206
  %214 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %215 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @test_kvm_facility(i32 %216, i32 133)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %213
  %220 = load %struct.gs_cb*, %struct.gs_cb** %6, align 8
  %221 = getelementptr inbounds %struct.gs_cb, %struct.gs_cb* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %219
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %252, label %230

230:                                              ; preds = %224
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %231, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %233 = load i32, i32* @ECB_GS, align 4
  %234 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %235 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %233
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* @ECD_HOSTREGMGMT, align 4
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %243 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %241
  store i32 %248, i32* %246, align 4
  %249 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %250 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  store i32 1, i32* %251, align 8
  br label %252

252:                                              ; preds = %230, %224, %219, %213, %206
  %253 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %254 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @KVM_SYNC_BPBC, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %293

259:                                              ; preds = %252
  %260 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %261 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @test_kvm_facility(i32 %262, i32 82)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %293

265:                                              ; preds = %259
  %266 = load i32, i32* @FPF_BPBC, align 4
  %267 = xor i32 %266, -1
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %269 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %267
  store i32 %274, i32* %272, align 4
  %275 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %276 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %265
  %282 = load i32, i32* @FPF_BPBC, align 4
  br label %284

283:                                              ; preds = %265
  br label %284

284:                                              ; preds = %283, %281
  %285 = phi i32 [ %282, %281 ], [ 0, %283 ]
  %286 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %287 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %285
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %284, %259, %252
  %294 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %295 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @save_access_regs(i32 %297)
  %299 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %300 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %299, i32 0, i32 0
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @restore_access_regs(i32 %305)
  %307 = call i32 (...) @save_fpu_regs()
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %314 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  store i64 %312, i64* %316, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %323 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  store i32 %321, i32* %325, align 8
  %326 = load i64, i64* @MACHINE_HAS_VX, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %293
  %329 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %330 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %329, i32 0, i32 0
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 1
  store i32 %335, i32* %339, align 8
  br label %352

340:                                              ; preds = %293
  %341 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %342 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %341, i32 0, i32 0
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 1
  store i32 %347, i32* %351, align 8
  br label %352

352:                                              ; preds = %340, %328
  %353 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %354 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %353, i32 0, i32 0
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  store i64 %359, i64* %363, align 8
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = call i64 @test_fp_ctl(i64 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %352
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 0
  store i64 0, i64* %375, align 8
  br label %376

376:                                              ; preds = %371, %352
  %377 = load i64, i64* @MACHINE_HAS_GS, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %424

379:                                              ; preds = %376
  %380 = call i32 (...) @preempt_disable()
  %381 = call i32 @__ctl_set_bit(i32 2, i32 4)
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 0
  %385 = load %struct.gs_cb*, %struct.gs_cb** %384, align 8
  %386 = icmp ne %struct.gs_cb* %385, null
  br i1 %386, label %387, label %400

387:                                              ; preds = %379
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 0
  %391 = load %struct.gs_cb*, %struct.gs_cb** %390, align 8
  %392 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %393 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 2
  store %struct.gs_cb* %391, %struct.gs_cb** %394, align 8
  %395 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %396 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 2
  %398 = load %struct.gs_cb*, %struct.gs_cb** %397, align 8
  %399 = call i32 @save_gs_cb(%struct.gs_cb* %398)
  br label %400

400:                                              ; preds = %387, %379
  %401 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %402 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %422

406:                                              ; preds = %400
  %407 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %408 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %407, i32 0, i32 0
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %413 = bitcast i32* %412 to %struct.gs_cb*
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 0
  store %struct.gs_cb* %413, %struct.gs_cb** %416, align 8
  %417 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current, align 8
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 0
  %420 = load %struct.gs_cb*, %struct.gs_cb** %419, align 8
  %421 = call i32 @restore_gs_cb(%struct.gs_cb* %420)
  br label %422

422:                                              ; preds = %406, %400
  %423 = call i32 (...) @preempt_enable()
  br label %424

424:                                              ; preds = %422, %376
  %425 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %426 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %425, i32 0, i32 0
  store i32 0, i32* %426, align 8
  ret void
}

declare dso_local i32 @kvm_s390_set_prefix(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_set_cpu_timer(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i8*) #1

declare dso_local i32 @save_access_regs(i32) #1

declare dso_local i32 @restore_access_regs(i32) #1

declare dso_local i32 @save_fpu_regs(...) #1

declare dso_local i64 @test_fp_ctl(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

declare dso_local i32 @save_gs_cb(%struct.gs_cb*) #1

declare dso_local i32 @restore_gs_cb(%struct.gs_cb*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
