; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_enter_guest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_enter_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_15__*, i8*, i32, %struct.TYPE_19__, %struct.TYPE_24__*, i64 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_21__*, i32, i32, i32*, i64, %struct.TYPE_18__, i64, i64, %struct.TYPE_17__, i32, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i8*, %struct.TYPE_16__, %struct.TYPE_23__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@KVM_REQ_GET_VMCS12_PAGES = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_14__* null, align 8
@KVM_REQ_MMU_RELOAD = common dso_local global i32 0, align 4
@KVM_REQ_MIGRATE_TIMER = common dso_local global i32 0, align 4
@KVM_REQ_MASTERCLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_GLOBAL_CLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_CLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_MMU_SYNC = common dso_local global i32 0, align 4
@KVM_REQ_LOAD_CR3 = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@KVM_REQ_REPORT_TPR_ACCESS = common dso_local global i32 0, align 4
@KVM_EXIT_TPR_ACCESS = common dso_local global i8* null, align 8
@KVM_REQ_TRIPLE_FAULT = common dso_local global i32 0, align 4
@KVM_EXIT_SHUTDOWN = common dso_local global i8* null, align 8
@KVM_REQ_APF_HALT = common dso_local global i32 0, align 4
@KVM_REQ_STEAL_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_SMI = common dso_local global i32 0, align 4
@KVM_REQ_NMI = common dso_local global i32 0, align 4
@KVM_REQ_PMU = common dso_local global i32 0, align 4
@KVM_REQ_PMI = common dso_local global i32 0, align 4
@KVM_REQ_IOAPIC_EOI_EXIT = common dso_local global i32 0, align 4
@KVM_EXIT_IOAPIC_EOI = common dso_local global i8* null, align 8
@KVM_REQ_SCAN_IOAPIC = common dso_local global i32 0, align 4
@KVM_REQ_LOAD_EOI_EXITMAP = common dso_local global i32 0, align 4
@KVM_REQ_APIC_PAGE_RELOAD = common dso_local global i32 0, align 4
@KVM_REQ_HV_CRASH = common dso_local global i32 0, align 4
@KVM_EXIT_SYSTEM_EVENT = common dso_local global i8* null, align 8
@KVM_SYSTEM_EVENT_CRASH = common dso_local global i32 0, align 4
@KVM_REQ_HV_RESET = common dso_local global i32 0, align 4
@KVM_SYSTEM_EVENT_RESET = common dso_local global i32 0, align 4
@KVM_REQ_HV_EXIT = common dso_local global i32 0, align 4
@KVM_EXIT_HYPERV = common dso_local global i8* null, align 8
@KVM_REQ_HV_STIMER = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@KVM_MP_STATE_INIT_RECEIVED = common dso_local global i64 0, align 8
@IN_GUEST_MODE = common dso_local global i64 0, align 8
@EXITING_GUEST_MODE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@OUTSIDE_GUEST_MODE = common dso_local global i8* null, align 8
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4
@KVM_DEBUGREG_RELOAD = common dso_local global i32 0, align 4
@KVM_DEBUGREG_WONT_EXIT = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@S64_MIN = common dso_local global i64 0, align 8
@prof_on = common dso_local global i64 0, align 8
@KVM_PROFILING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vcpu_enter_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_enter_guest(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i64 @dm_request_for_irq_injection(%struct.kvm_vcpu* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call i64 @kvm_cpu_accept_dm_intr(%struct.kvm_vcpu* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i64 @kvm_request_pending(%struct.kvm_vcpu* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %311

22:                                               ; preds = %16
  %23 = load i32, i32* @KVM_REQ_GET_VMCS12_PAGES, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i64 @kvm_check_request(i32 %23, %struct.kvm_vcpu* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 11
  %30 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %29, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 %30(%struct.kvm_vcpu* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %714

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* @KVM_REQ_MMU_RELOAD, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i64 @kvm_check_request(i32 %41, %struct.kvm_vcpu* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @kvm_mmu_unload(%struct.kvm_vcpu* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @KVM_REQ_MIGRATE_TIMER, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = call i64 @kvm_check_request(i32 %49, %struct.kvm_vcpu* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @__kvm_migrate_timers(%struct.kvm_vcpu* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* @KVM_REQ_MASTERCLOCK_UPDATE, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i64 @kvm_check_request(i32 %57, %struct.kvm_vcpu* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 3
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = call i32 @kvm_gen_update_masterclock(%struct.TYPE_15__* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @KVM_REQ_GLOBAL_CLOCK_UPDATE, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i64 @kvm_check_request(i32 %67, %struct.kvm_vcpu* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @kvm_gen_kvmclock_update(%struct.kvm_vcpu* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = call i64 @kvm_check_request(i32 %75, %struct.kvm_vcpu* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = call i32 @kvm_guest_time_update(%struct.kvm_vcpu* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %714

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* @KVM_REQ_MMU_SYNC, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = call i64 @kvm_check_request(i32 %88, %struct.kvm_vcpu* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = call i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* @KVM_REQ_LOAD_CR3, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = call i64 @kvm_check_request(i32 %96, %struct.kvm_vcpu* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = call i32 @kvm_mmu_load_cr3(%struct.kvm_vcpu* %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = call i64 @kvm_check_request(i32 %104, %struct.kvm_vcpu* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = call i32 @kvm_vcpu_flush_tlb(%struct.kvm_vcpu* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* @KVM_REQ_REPORT_TPR_ACCESS, align 4
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %114 = call i64 @kvm_check_request(i32 %112, %struct.kvm_vcpu* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i8*, i8** @KVM_EXIT_TPR_ACCESS, align 8
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 7
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  store i8* %117, i8** %121, align 8
  store i32 0, i32* %4, align 4
  br label %714

122:                                              ; preds = %111
  %123 = load i32, i32* @KVM_REQ_TRIPLE_FAULT, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = call i64 @kvm_check_request(i32 %123, %struct.kvm_vcpu* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i8*, i8** @KVM_EXIT_SHUTDOWN, align 8
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 7
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  store i8* %128, i8** %132, align 8
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 8
  store i64 0, i64* %134, align 8
  store i32 0, i32* %4, align 4
  br label %714

135:                                              ; preds = %122
  %136 = load i32, i32* @KVM_REQ_APF_HALT, align 4
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = call i64 @kvm_check_request(i32 %136, %struct.kvm_vcpu* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 16
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  store i32 1, i32* %4, align 4
  br label %714

145:                                              ; preds = %135
  %146 = load i32, i32* @KVM_REQ_STEAL_UPDATE, align 4
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = call i64 @kvm_check_request(i32 %146, %struct.kvm_vcpu* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %152 = call i32 @record_steal_time(%struct.kvm_vcpu* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load i32, i32* @KVM_REQ_SMI, align 4
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = call i64 @kvm_check_request(i32 %154, %struct.kvm_vcpu* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %160 = call i32 @process_smi(%struct.kvm_vcpu* %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i32, i32* @KVM_REQ_NMI, align 4
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %164 = call i64 @kvm_check_request(i32 %162, %struct.kvm_vcpu* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %168 = call i32 @process_nmi(%struct.kvm_vcpu* %167)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load i32, i32* @KVM_REQ_PMU, align 4
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = call i64 @kvm_check_request(i32 %170, %struct.kvm_vcpu* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = call i32 @kvm_pmu_handle_event(%struct.kvm_vcpu* %175)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32, i32* @KVM_REQ_PMI, align 4
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %180 = call i64 @kvm_check_request(i32 %178, %struct.kvm_vcpu* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %184 = call i32 @kvm_pmu_deliver_pmi(%struct.kvm_vcpu* %183)
  br label %185

185:                                              ; preds = %182, %177
  %186 = load i32, i32* @KVM_REQ_IOAPIC_EOI_EXIT, align 4
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %188 = call i64 @kvm_check_request(i32 %186, %struct.kvm_vcpu* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %224

190:                                              ; preds = %185
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %194, 255
  %196 = zext i1 %195 to i32
  %197 = call i32 @BUG_ON(i32 %196)
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %199 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %203 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 15
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @test_bit(i32 %201, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %190
  %209 = load i8*, i8** @KVM_EXIT_IOAPIC_EOI, align 8
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 7
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  store i8* %209, i8** %213, align 8
  %214 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %215 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %219 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %218, i32 0, i32 7
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  store i32 %217, i32* %222, align 4
  store i32 0, i32* %4, align 4
  br label %714

223:                                              ; preds = %190
  br label %224

224:                                              ; preds = %223, %185
  %225 = load i32, i32* @KVM_REQ_SCAN_IOAPIC, align 4
  %226 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %227 = call i64 @kvm_check_request(i32 %225, %struct.kvm_vcpu* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %231 = call i32 @vcpu_scan_ioapic(%struct.kvm_vcpu* %230)
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* @KVM_REQ_LOAD_EOI_EXITMAP, align 4
  %234 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %235 = call i64 @kvm_check_request(i32 %233, %struct.kvm_vcpu* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %239 = call i32 @vcpu_load_eoi_exitmap(%struct.kvm_vcpu* %238)
  br label %240

240:                                              ; preds = %237, %232
  %241 = load i32, i32* @KVM_REQ_APIC_PAGE_RELOAD, align 4
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %243 = call i64 @kvm_check_request(i32 %241, %struct.kvm_vcpu* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %247 = call i32 @kvm_vcpu_reload_apic_access_page(%struct.kvm_vcpu* %246)
  br label %248

248:                                              ; preds = %245, %240
  %249 = load i32, i32* @KVM_REQ_HV_CRASH, align 4
  %250 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %251 = call i64 @kvm_check_request(i32 %249, %struct.kvm_vcpu* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i8*, i8** @KVM_EXIT_SYSTEM_EVENT, align 8
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %256 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %255, i32 0, i32 7
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 1
  store i8* %254, i8** %258, align 8
  %259 = load i32, i32* @KVM_SYSTEM_EVENT_CRASH, align 4
  %260 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %261 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %260, i32 0, i32 7
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  store i32 %259, i32* %264, align 8
  store i32 0, i32* %4, align 4
  br label %714

265:                                              ; preds = %248
  %266 = load i32, i32* @KVM_REQ_HV_RESET, align 4
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %268 = call i64 @kvm_check_request(i32 %266, %struct.kvm_vcpu* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load i8*, i8** @KVM_EXIT_SYSTEM_EVENT, align 8
  %272 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %273 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %272, i32 0, i32 7
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  store i8* %271, i8** %275, align 8
  %276 = load i32, i32* @KVM_SYSTEM_EVENT_RESET, align 4
  %277 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %278 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %277, i32 0, i32 7
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  store i32 %276, i32* %281, align 8
  store i32 0, i32* %4, align 4
  br label %714

282:                                              ; preds = %265
  %283 = load i32, i32* @KVM_REQ_HV_EXIT, align 4
  %284 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %285 = call i64 @kvm_check_request(i32 %283, %struct.kvm_vcpu* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %282
  %288 = load i8*, i8** @KVM_EXIT_HYPERV, align 8
  %289 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %290 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %289, i32 0, i32 7
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 1
  store i8* %288, i8** %292, align 8
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %294 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 14
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %299 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %298, i32 0, i32 7
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 0
  store i32 %297, i32* %301, align 8
  store i32 0, i32* %4, align 4
  br label %714

302:                                              ; preds = %282
  %303 = load i32, i32* @KVM_REQ_HV_STIMER, align 4
  %304 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %305 = call i64 @kvm_check_request(i32 %303, %struct.kvm_vcpu* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %309 = call i32 @kvm_hv_process_stimers(%struct.kvm_vcpu* %308)
  br label %310

310:                                              ; preds = %307, %302
  br label %311

311:                                              ; preds = %310, %16
  %312 = load i32, i32* @KVM_REQ_EVENT, align 4
  %313 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %314 = call i64 @kvm_check_request(i32 %312, %struct.kvm_vcpu* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %311
  %317 = load i32, i32* %5, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %401

319:                                              ; preds = %316, %311
  %320 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %321 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  %325 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %326 = call i32 @kvm_apic_accept_events(%struct.kvm_vcpu* %325)
  %327 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %328 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %319
  store i32 1, i32* %4, align 4
  br label %714

334:                                              ; preds = %319
  %335 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %336 = load i32, i32* %5, align 4
  %337 = call i64 @inject_pending_event(%struct.kvm_vcpu* %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  store i32 1, i32* %6, align 4
  br label %391

340:                                              ; preds = %334
  %341 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %342 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 13
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %340
  %347 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %348 = call i32 @is_smm(%struct.kvm_vcpu* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %346
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 10
  %353 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %352, align 8
  %354 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %355 = call i32 %353(%struct.kvm_vcpu* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %350
  store i32 1, i32* %6, align 4
  br label %358

358:                                              ; preds = %357, %350
  br label %359

359:                                              ; preds = %358, %346, %340
  %360 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %361 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 12
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 9
  %368 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %367, align 8
  %369 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %370 = call i32 %368(%struct.kvm_vcpu* %369)
  br label %371

371:                                              ; preds = %365, %359
  %372 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %373 = call i64 @kvm_cpu_has_injectable_intr(%struct.kvm_vcpu* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %371
  %376 = load i32, i32* %5, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %375, %371
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 8
  %381 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %380, align 8
  %382 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %383 = call i32 %381(%struct.kvm_vcpu* %382)
  br label %384

384:                                              ; preds = %378, %375
  %385 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %386 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 11
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @WARN_ON(i32 %389)
  br label %391

391:                                              ; preds = %384, %339
  %392 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %393 = call i64 @kvm_lapic_enabled(%struct.kvm_vcpu* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %391
  %396 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %397 = call i32 @update_cr8_intercept(%struct.kvm_vcpu* %396)
  %398 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %399 = call i32 @kvm_lapic_sync_to_vapic(%struct.kvm_vcpu* %398)
  br label %400

400:                                              ; preds = %395, %391
  br label %401

401:                                              ; preds = %400, %316
  %402 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %403 = call i32 @kvm_mmu_reload(%struct.kvm_vcpu* %402)
  store i32 %403, i32* %4, align 4
  %404 = load i32, i32* %4, align 4
  %405 = call i64 @unlikely(i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %401
  br label %698

408:                                              ; preds = %401
  %409 = call i32 (...) @preempt_disable()
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 7
  %412 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %411, align 8
  %413 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %414 = call i32 %412(%struct.kvm_vcpu* %413)
  %415 = call i32 (...) @local_irq_disable()
  %416 = load i64, i64* @IN_GUEST_MODE, align 8
  %417 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %418 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %417, i32 0, i32 0
  store i64 %416, i64* %418, align 8
  %419 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %420 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %419, i32 0, i32 3
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 0
  %423 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %424 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %423, i32 0, i32 4
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @srcu_read_unlock(i32* %422, i8* %425)
  %427 = call i32 (...) @smp_mb__after_srcu_read_unlock()
  %428 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %429 = call i64 @kvm_lapic_enabled(%struct.kvm_vcpu* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %443

431:                                              ; preds = %408
  %432 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %433 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 10
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %431
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 6
  %440 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %439, align 8
  %441 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %442 = call i32 %440(%struct.kvm_vcpu* %441)
  br label %443

443:                                              ; preds = %437, %431, %408
  %444 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %445 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @EXITING_GUEST_MODE, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %460, label %449

449:                                              ; preds = %443
  %450 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %451 = call i64 @kvm_request_pending(%struct.kvm_vcpu* %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %460, label %453

453:                                              ; preds = %449
  %454 = call i64 (...) @need_resched()
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %460, label %456

456:                                              ; preds = %453
  %457 = load i32, i32* @current, align 4
  %458 = call i64 @signal_pending(i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %475

460:                                              ; preds = %456, %453, %449, %443
  %461 = load i8*, i8** @OUTSIDE_GUEST_MODE, align 8
  %462 = ptrtoint i8* %461 to i64
  %463 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %464 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %463, i32 0, i32 0
  store i64 %462, i64* %464, align 8
  %465 = call i32 (...) @smp_wmb()
  %466 = call i32 (...) @local_irq_enable()
  %467 = call i32 (...) @preempt_enable()
  %468 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %469 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %468, i32 0, i32 3
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 0
  %472 = call i8* @srcu_read_lock(i32* %471)
  %473 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %474 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %473, i32 0, i32 4
  store i8* %472, i8** %474, align 8
  store i32 1, i32* %4, align 4
  br label %698

475:                                              ; preds = %456
  %476 = load i32, i32* %6, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %487

478:                                              ; preds = %475
  %479 = load i32, i32* @KVM_REQ_EVENT, align 4
  %480 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %481 = call i32 @kvm_make_request(i32 %479, %struct.kvm_vcpu* %480)
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 5
  %484 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %483, align 8
  %485 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %486 = call i32 %484(%struct.kvm_vcpu* %485)
  br label %487

487:                                              ; preds = %478, %475
  %488 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %489 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @trace_kvm_entry(i32 %490)
  %492 = call i32 (...) @guest_enter_irqoff()
  %493 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %494 = call i32 @test_thread_flag(i32 %493)
  %495 = call i32 @WARN_ON_ONCE(i32 %494)
  %496 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %497 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = call i64 @unlikely(i32 %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %544

502:                                              ; preds = %487
  %503 = call i32 @set_debugreg(i32 0, i32 7)
  %504 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %505 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 9
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 0
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @set_debugreg(i32 %509, i32 0)
  %511 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %512 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 9
  %514 = load i32*, i32** %513, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 1
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @set_debugreg(i32 %516, i32 1)
  %518 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %519 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %519, i32 0, i32 9
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 2
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @set_debugreg(i32 %523, i32 2)
  %525 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %526 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 9
  %528 = load i32*, i32** %527, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 3
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @set_debugreg(i32 %530, i32 3)
  %532 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %533 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 8
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @set_debugreg(i32 %535, i32 6)
  %537 = load i32, i32* @KVM_DEBUGREG_RELOAD, align 4
  %538 = xor i32 %537, -1
  %539 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %540 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = and i32 %542, %538
  store i32 %543, i32* %541, align 8
  br label %544

544:                                              ; preds = %502, %487
  %545 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %546 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %545, i32 0, i32 4
  %547 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %546, align 8
  %548 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %549 = call i32 %547(%struct.kvm_vcpu* %548)
  %550 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %551 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %550, i32 0, i32 2
  %552 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = load i32, i32* @KVM_DEBUGREG_WONT_EXIT, align 4
  %555 = and i32 %553, %554
  %556 = call i64 @unlikely(i32 %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %583

558:                                              ; preds = %544
  %559 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %560 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %563 = and i32 %561, %562
  %564 = call i32 @WARN_ON(i32 %563)
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 3
  %567 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %566, align 8
  %568 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %569 = call i32 %567(%struct.kvm_vcpu* %568)
  %570 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %571 = call i32 @kvm_update_dr0123(%struct.kvm_vcpu* %570)
  %572 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %573 = call i32 @kvm_update_dr6(%struct.kvm_vcpu* %572)
  %574 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %575 = call i32 @kvm_update_dr7(%struct.kvm_vcpu* %574)
  %576 = load i32, i32* @KVM_DEBUGREG_RELOAD, align 4
  %577 = xor i32 %576, -1
  %578 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %579 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = and i32 %581, %577
  store i32 %582, i32* %580, align 8
  br label %583

583:                                              ; preds = %558, %544
  %584 = call i64 (...) @hw_breakpoint_active()
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %588

586:                                              ; preds = %583
  %587 = call i32 (...) @hw_breakpoint_restore()
  br label %588

588:                                              ; preds = %586, %583
  %589 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %590 = call i32 (...) @rdtsc()
  %591 = call i32 @kvm_read_l1_tsc(%struct.kvm_vcpu* %589, i32 %590)
  %592 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %593 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %592, i32 0, i32 2
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %593, i32 0, i32 7
  store i32 %591, i32* %594, align 8
  %595 = load i8*, i8** @OUTSIDE_GUEST_MODE, align 8
  %596 = ptrtoint i8* %595 to i64
  %597 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %598 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %597, i32 0, i32 0
  store i64 %596, i64* %598, align 8
  %599 = call i32 (...) @smp_wmb()
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 2
  %602 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %601, align 8
  %603 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %604 = call i32 %602(%struct.kvm_vcpu* %603)
  %605 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %606 = call i32 @kvm_before_interrupt(%struct.kvm_vcpu* %605)
  %607 = call i32 (...) @local_irq_enable()
  %608 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %609 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %608, i32 0, i32 6
  %610 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %610, align 4
  %613 = call i32 (...) @local_irq_disable()
  %614 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %615 = call i32 @kvm_after_interrupt(%struct.kvm_vcpu* %614)
  %616 = call i32 (...) @guest_exit_irqoff()
  %617 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %618 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %617)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %645

620:                                              ; preds = %588
  %621 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %622 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %622, i32 0, i32 6
  %624 = load %struct.TYPE_21__*, %struct.TYPE_21__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %7, align 8
  %628 = load i64, i64* %7, align 8
  %629 = load i64, i64* @S64_MIN, align 8
  %630 = icmp ne i64 %628, %629
  br i1 %630, label %631, label %644

631:                                              ; preds = %620
  %632 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %633 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %632, i32 0, i32 5
  %634 = load i32, i32* %633, align 8
  %635 = load i64, i64* %7, align 8
  %636 = call i32 @trace_kvm_wait_lapic_expire(i32 %634, i64 %635)
  %637 = load i64, i64* @S64_MIN, align 8
  %638 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %639 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %638, i32 0, i32 2
  %640 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %639, i32 0, i32 6
  %641 = load %struct.TYPE_21__*, %struct.TYPE_21__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %642, i32 0, i32 0
  store i64 %637, i64* %643, align 8
  br label %644

644:                                              ; preds = %631, %620
  br label %645

645:                                              ; preds = %644, %588
  %646 = call i32 (...) @local_irq_enable()
  %647 = call i32 (...) @preempt_enable()
  %648 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %649 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %648, i32 0, i32 3
  %650 = load %struct.TYPE_15__*, %struct.TYPE_15__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %650, i32 0, i32 0
  %652 = call i8* @srcu_read_lock(i32* %651)
  %653 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %654 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %653, i32 0, i32 4
  store i8* %652, i8** %654, align 8
  %655 = load i64, i64* @prof_on, align 8
  %656 = load i64, i64* @KVM_PROFILING, align 8
  %657 = icmp eq i64 %655, %656
  %658 = zext i1 %657 to i32
  %659 = call i64 @unlikely(i32 %658)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %668

661:                                              ; preds = %645
  %662 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %663 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %662)
  store i64 %663, i64* %8, align 8
  %664 = load i64, i64* @KVM_PROFILING, align 8
  %665 = load i64, i64* %8, align 8
  %666 = inttoptr i64 %665 to i8*
  %667 = call i32 @profile_hit(i64 %664, i8* %666)
  br label %668

668:                                              ; preds = %661, %645
  %669 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %670 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %669, i32 0, i32 2
  %671 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %670, i32 0, i32 3
  %672 = load i32, i32* %671, align 4
  %673 = call i64 @unlikely(i32 %672)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %679

675:                                              ; preds = %668
  %676 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %677 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %678 = call i32 @kvm_make_request(i32 %676, %struct.kvm_vcpu* %677)
  br label %679

679:                                              ; preds = %675, %668
  %680 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %681 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %680, i32 0, i32 2
  %682 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %681, i32 0, i32 4
  %683 = load i32, i32* %682, align 8
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %679
  %686 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %687 = call i32 @kvm_lapic_sync_from_vapic(%struct.kvm_vcpu* %686)
  br label %688

688:                                              ; preds = %685, %679
  %689 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %690 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %689, i32 0, i32 2
  %691 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %690, i32 0, i32 5
  store i32 0, i32* %691, align 4
  %692 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %693 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %692, i32 0, i32 0
  %694 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %693, align 8
  %695 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %696 = call i32 %694(%struct.kvm_vcpu* %695)
  store i32 %696, i32* %4, align 4
  %697 = load i32, i32* %4, align 4
  store i32 %697, i32* %2, align 4
  br label %716

698:                                              ; preds = %460, %407
  %699 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %700 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %699, i32 0, i32 1
  %701 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %700, align 8
  %702 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %703 = call i32 %701(%struct.kvm_vcpu* %702)
  %704 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %705 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %704, i32 0, i32 2
  %706 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %705, i32 0, i32 4
  %707 = load i32, i32* %706, align 8
  %708 = call i64 @unlikely(i32 %707)
  %709 = icmp ne i64 %708, 0
  br i1 %709, label %710, label %713

710:                                              ; preds = %698
  %711 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %712 = call i32 @kvm_lapic_sync_from_vapic(%struct.kvm_vcpu* %711)
  br label %713

713:                                              ; preds = %710, %698
  br label %714

714:                                              ; preds = %713, %333, %287, %270, %253, %208, %140, %127, %116, %85, %38
  %715 = load i32, i32* %4, align 4
  store i32 %715, i32* %2, align 4
  br label %716

716:                                              ; preds = %714, %688
  %717 = load i32, i32* %2, align 4
  ret i32 %717
}

declare dso_local i64 @dm_request_for_irq_injection(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_accept_dm_intr(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_request_pending(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_check_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_mmu_unload(%struct.kvm_vcpu*) #1

declare dso_local i32 @__kvm_migrate_timers(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_gen_update_masterclock(%struct.TYPE_15__*) #1

declare dso_local i32 @kvm_gen_kvmclock_update(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_guest_time_update(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_load_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_flush_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @record_steal_time(%struct.kvm_vcpu*) #1

declare dso_local i32 @process_smi(%struct.kvm_vcpu*) #1

declare dso_local i32 @process_nmi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pmu_handle_event(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pmu_deliver_pmi(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @vcpu_scan_ioapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_load_eoi_exitmap(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_reload_apic_access_page(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_hv_process_stimers(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_apic_accept_events(%struct.kvm_vcpu*) #1

declare dso_local i64 @inject_pending_event(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_has_injectable_intr(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @kvm_lapic_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_cr8_intercept(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_sync_to_vapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reload(%struct.kvm_vcpu*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @srcu_read_unlock(i32*, i8*) #1

declare dso_local i32 @smp_mb__after_srcu_read_unlock(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i8* @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_entry(i32) #1

declare dso_local i32 @guest_enter_irqoff(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @set_debugreg(i32, i32) #1

declare dso_local i32 @kvm_update_dr0123(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr6(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr7(%struct.kvm_vcpu*) #1

declare dso_local i64 @hw_breakpoint_active(...) #1

declare dso_local i32 @hw_breakpoint_restore(...) #1

declare dso_local i32 @kvm_read_l1_tsc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @kvm_before_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_after_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_exit_irqoff(...) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_wait_lapic_expire(i32, i64) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @profile_hit(i64, i8*) #1

declare dso_local i32 @kvm_lapic_sync_from_vapic(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
