; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64*, i64, i64, i32, i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.vcpu_vmx = type { i32, i64, i32, i32, %struct.TYPE_15__*, i64, %struct.TYPE_14__, i64, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@enable_vnmi = common dso_local global i32 0, align 4
@PLE_WINDOW = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i64 0, align 8
@GUEST_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RIP = common dso_local global i64 0, align 8
@GUEST_RIP = common dso_local global i32 0, align 4
@HOST_CR3 = common dso_local global i32 0, align 4
@HOST_CR4 = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@X86_FEATURE_PKU = common dso_local global i32 0, align 4
@X86_CR4_PKE = common dso_local global i32 0, align 4
@enable_preemption_timer = common dso_local global i64 0, align 8
@vmx_l1d_should_flush = common dso_local global i32 0, align 4
@mds_user_clear = common dso_local global i32 0, align 4
@MSR_IA32_SPEC_CTRL = common dso_local global i32 0, align 4
@enable_evmcs = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL = common dso_local global i32 0, align 4
@current_evmcs = common dso_local global %struct.TYPE_16__* null, align 8
@ds = common dso_local global i32 0, align 4
@__USER_DS = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@VCPU_EXREG_RFLAGS = common dso_local global i32 0, align 4
@VCPU_EXREG_PDPTR = common dso_local global i32 0, align 4
@VCPU_EXREG_SEGMENTS = common dso_local global i32 0, align 4
@VCPU_EXREG_CR3 = common dso_local global i32 0, align 4
@VM_EXIT_REASON = common dso_local global i32 0, align 4
@EXIT_REASON_MCE_DURING_VMENTRY = common dso_local global i64 0, align 8
@VMX_EXIT_REASONS_FAILED_VMENTRY = common dso_local global i32 0, align 4
@IDT_VECTORING_INFO_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_vcpu_run(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %3, align 8
  %8 = load i32, i32* @enable_vnmi, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i32 (...) @ktime_get()
  %24 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %25 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %24, i32 0, i32 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %410

34:                                               ; preds = %28
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @PLE_WINDOW, align 4
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vmcs_write32(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %49 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %55 = call i32 @nested_sync_vmcs12_to_shadow(%struct.kvm_vcpu* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i64, i64* @VCPU_REGS_RSP, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = call i64 @test_bit(i64 %57, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* @GUEST_RSP, align 4
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @VCPU_REGS_RSP, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @vmcs_writel(i32 %64, i64 %71)
  br label %73

73:                                               ; preds = %63, %56
  %74 = load i64, i64* @VCPU_REGS_RIP, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = call i64 @test_bit(i64 %74, i64* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i32, i32* @GUEST_RIP, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @VCPU_REGS_RIP, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @vmcs_writel(i32 %81, i64 %88)
  br label %90

90:                                               ; preds = %80, %73
  %91 = call i64 (...) @__get_current_cr3_fast()
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %94 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %93, i32 0, i32 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %92, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load i32, i32* @HOST_CR3, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @vmcs_writel(i32 %104, i64 %105)
  %107 = load i64, i64* %4, align 8
  %108 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %109 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %108, i32 0, i32 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i64 %107, i64* %112, align 8
  br label %113

113:                                              ; preds = %103, %90
  %114 = call i64 (...) @cr4_read_shadow()
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %117 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %116, i32 0, i32 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %115, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %113
  %127 = load i32, i32* @HOST_CR4, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @vmcs_writel(i32 %127, i64 %128)
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %132 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %131, i32 0, i32 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store i64 %130, i64* %135, align 8
  br label %136

136:                                              ; preds = %126, %113
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %145 = call i32 @vmx_set_interrupt_shadow(%struct.kvm_vcpu* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %148 = call i32 @kvm_load_guest_xcr0(%struct.kvm_vcpu* %147)
  %149 = load i32, i32* @X86_FEATURE_PKU, align 4
  %150 = call i64 @static_cpu_has(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %154 = load i32, i32* @X86_CR4_PKE, align 4
  %155 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %163 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @__write_pkru(i64 %170)
  br label %172

172:                                              ; preds = %166, %157, %152, %146
  %173 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %174 = call i32 @pt_guest_enter(%struct.vcpu_vmx* %173)
  %175 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %176 = call i32 @atomic_switch_perf_msrs(%struct.vcpu_vmx* %175)
  %177 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %178 = call i32 @atomic_switch_umwait_control_msr(%struct.vcpu_vmx* %177)
  %179 = load i64, i64* @enable_preemption_timer, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %183 = call i32 @vmx_update_hv_timer(%struct.kvm_vcpu* %182)
  br label %184

184:                                              ; preds = %181, %172
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %186 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %190 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %199 = call i32 @kvm_wait_lapic_expire(%struct.kvm_vcpu* %198)
  br label %200

200:                                              ; preds = %197, %188, %184
  %201 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %202 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @x86_spec_ctrl_set_guest(i32 %203, i32 0)
  %205 = call i64 @static_branch_unlikely(i32* @vmx_l1d_should_flush)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %209 = call i32 @vmx_l1d_flush(%struct.kvm_vcpu* %208)
  br label %216

210:                                              ; preds = %200
  %211 = call i64 @static_branch_unlikely(i32* @mds_user_clear)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = call i32 (...) @mds_clear_cpu_buffers()
  br label %215

215:                                              ; preds = %213, %210
  br label %216

216:                                              ; preds = %215, %207
  %217 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %218 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = call i64 (...) @read_cr2()
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @write_cr2(i64 %227)
  br label %229

229:                                              ; preds = %223, %216
  %230 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = bitcast i64** %233 to i64*
  %235 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %236 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %235, i32 0, i32 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @__vmx_vcpu_run(%struct.vcpu_vmx* %230, i64* %234, i32 %239)
  %241 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %242 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %241, i32 0, i32 5
  store i64 %240, i64* %242, align 8
  %243 = call i64 (...) @read_cr2()
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %245 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  store i64 %243, i64* %246, align 8
  %247 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %248 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %249 = call i32 @msr_write_intercepted(%struct.kvm_vcpu* %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i64 @unlikely(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %229
  %256 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %257 = call i32 @native_read_msr(i32 %256)
  %258 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %259 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %258, i32 0, i32 8
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %255, %229
  %261 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %262 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @x86_spec_ctrl_restore_host(i32 %263, i32 0)
  %265 = call i64 @static_branch_unlikely(i32* @enable_evmcs)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %260
  %268 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_evmcs, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %267, %260
  %274 = call i64 @static_branch_unlikely(i32* @enable_evmcs)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %278 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_evmcs, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %276, %273
  %285 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %286 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %285, i32 0, i32 7
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %291 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @update_debugctlmsr(i64 %292)
  br label %294

294:                                              ; preds = %289, %284
  %295 = load i32, i32* @ds, align 4
  %296 = load i32, i32* @__USER_DS, align 4
  %297 = call i32 @loadsegment(i32 %295, i32 %296)
  %298 = load i32, i32* @es, align 4
  %299 = load i32, i32* @__USER_DS, align 4
  %300 = call i32 @loadsegment(i32 %298, i32 %299)
  %301 = load i64, i64* @VCPU_REGS_RIP, align 8
  %302 = trunc i64 %301 to i32
  %303 = shl i32 1, %302
  %304 = load i64, i64* @VCPU_REGS_RSP, align 8
  %305 = trunc i64 %304 to i32
  %306 = shl i32 1, %305
  %307 = or i32 %303, %306
  %308 = load i32, i32* @VCPU_EXREG_RFLAGS, align 4
  %309 = shl i32 1, %308
  %310 = or i32 %307, %309
  %311 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %312 = shl i32 1, %311
  %313 = or i32 %310, %312
  %314 = load i32, i32* @VCPU_EXREG_SEGMENTS, align 4
  %315 = shl i32 1, %314
  %316 = or i32 %313, %315
  %317 = load i32, i32* @VCPU_EXREG_CR3, align 4
  %318 = shl i32 1, %317
  %319 = or i32 %316, %318
  %320 = xor i32 %319, -1
  %321 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %322 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 3
  store i32 %320, i32* %323, align 8
  %324 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %325 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 4
  store i64 0, i64* %326, align 8
  %327 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %328 = call i32 @pt_guest_exit(%struct.vcpu_vmx* %327)
  %329 = load i32, i32* @X86_FEATURE_PKU, align 4
  %330 = call i64 @static_cpu_has(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %356

332:                                              ; preds = %294
  %333 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %334 = load i32, i32* @X86_CR4_PKE, align 4
  %335 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %333, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %356

337:                                              ; preds = %332
  %338 = call i64 (...) @rdpkru()
  %339 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %340 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 1
  store i64 %338, i64* %341, align 8
  %342 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %343 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %347 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %345, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %337
  %351 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %352 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = call i32 @__write_pkru(i64 %353)
  br label %355

355:                                              ; preds = %350, %337
  br label %356

356:                                              ; preds = %355, %332, %294
  %357 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %358 = call i32 @kvm_put_guest_xcr0(%struct.kvm_vcpu* %357)
  %359 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %360 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %359, i32 0, i32 6
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  store i64 0, i64* %361, align 8
  %362 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %363 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %362, i32 0, i32 2
  store i32 0, i32* %363, align 8
  %364 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %365 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %356
  br label %372

369:                                              ; preds = %356
  %370 = load i32, i32* @VM_EXIT_REASON, align 4
  %371 = call i32 @vmcs_read32(i32 %370)
  br label %372

372:                                              ; preds = %369, %368
  %373 = phi i32 [ 57005, %368 ], [ %371, %369 ]
  %374 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %375 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %374, i32 0, i32 3
  store i32 %373, i32* %375, align 4
  %376 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %377 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = load i64, i64* @EXIT_REASON_MCE_DURING_VMENTRY, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %372
  %383 = call i32 (...) @kvm_machine_check()
  br label %384

384:                                              ; preds = %382, %372
  %385 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %386 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %385, i32 0, i32 5
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %396, label %389

389:                                              ; preds = %384
  %390 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %391 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @VMX_EXIT_REASONS_FAILED_VMENTRY, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %389, %384
  br label %410

397:                                              ; preds = %389
  %398 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %399 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %398, i32 0, i32 4
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %400, i32 0, i32 0
  store i32 1, i32* %401, align 8
  %402 = load i32, i32* @IDT_VECTORING_INFO_FIELD, align 4
  %403 = call i32 @vmcs_read32(i32 %402)
  %404 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %405 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %404, i32 0, i32 2
  store i32 %403, i32* %405, align 8
  %406 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %407 = call i32 @vmx_recover_nmi_blocking(%struct.vcpu_vmx* %406)
  %408 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %409 = call i32 @vmx_complete_interrupts(%struct.vcpu_vmx* %408)
  br label %410

410:                                              ; preds = %397, %396, %33
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @nested_sync_vmcs12_to_shadow(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i64 @__get_current_cr3_fast(...) #1

declare dso_local i64 @cr4_read_shadow(...) #1

declare dso_local i32 @vmx_set_interrupt_shadow(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_load_guest_xcr0(%struct.kvm_vcpu*) #1

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__write_pkru(i64) #1

declare dso_local i32 @pt_guest_enter(%struct.vcpu_vmx*) #1

declare dso_local i32 @atomic_switch_perf_msrs(%struct.vcpu_vmx*) #1

declare dso_local i32 @atomic_switch_umwait_control_msr(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmx_update_hv_timer(%struct.kvm_vcpu*) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_wait_lapic_expire(%struct.kvm_vcpu*) #1

declare dso_local i32 @x86_spec_ctrl_set_guest(i32, i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @vmx_l1d_flush(%struct.kvm_vcpu*) #1

declare dso_local i32 @mds_clear_cpu_buffers(...) #1

declare dso_local i64 @read_cr2(...) #1

declare dso_local i32 @write_cr2(i64) #1

declare dso_local i64 @__vmx_vcpu_run(%struct.vcpu_vmx*, i64*, i32) #1

declare dso_local i32 @msr_write_intercepted(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @native_read_msr(i32) #1

declare dso_local i32 @x86_spec_ctrl_restore_host(i32, i32) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @pt_guest_exit(%struct.vcpu_vmx*) #1

declare dso_local i64 @rdpkru(...) #1

declare dso_local i32 @kvm_put_guest_xcr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @kvm_machine_check(...) #1

declare dso_local i32 @vmx_recover_nmi_blocking(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmx_complete_interrupts(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
