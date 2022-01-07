; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_exception_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_exception_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_13__, %struct.kvm_run* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.kvm_run = type { %struct.TYPE_18__, i32, %struct.TYPE_17__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.vcpu_vmx = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@VM_EXIT_INTR_ERROR_CODE = common dso_local global i32 0, align 4
@enable_vmware_backdoor = common dso_local global i32 0, align 4
@GP_VECTOR = common dso_local global i32 0, align 4
@EMULTYPE_VMWARE_GP = common dso_local global i32 0, align 4
@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KVM_INTERNAL_ERROR_SIMUL_EX = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@INTR_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DR_TRAP_BITS = common dso_local global i64 0, align 8
@DR6_RTM = common dso_local global i64 0, align 8
@DR6_FIXED_1 = common dso_local global i64 0, align 8
@GUEST_DR7 = common dso_local global i32 0, align 4
@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@KVM_EXIT_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_exception_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exception_nmi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %13)
  store %struct.vcpu_vmx* %14, %struct.vcpu_vmx** %4, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  %17 = load %struct.kvm_run*, %struct.kvm_run** %16, align 8
  store %struct.kvm_run* %17, %struct.kvm_run** %5, align 8
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @is_machine_check(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @is_nmi(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %1
  store i32 1, i32* %2, align 4
  br label %271

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @is_invalid_opcode(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @handle_ud(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %2, align 4
  br label %271

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @VM_EXIT_INTR_ERROR_CODE, align 4
  %46 = call i8* @vmcs_read32(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %50 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @is_gp_fault(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32, i32* @enable_vmware_backdoor, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON_ONCE(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = load i32, i32* @GP_VECTOR, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %67, i32 %68, i32 %69)
  store i32 1, i32* %2, align 4
  br label %271

71:                                               ; preds = %58
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = load i32, i32* @EMULTYPE_VMWARE_GP, align 4
  %74 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %271

75:                                               ; preds = %54, %48
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %130

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @is_page_fault(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %84, %80
  %90 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 2
  %93 = load %struct.kvm_run*, %struct.kvm_run** %92, align 8
  %94 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* @KVM_INTERNAL_ERROR_SIMUL_EX, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 2
  %98 = load %struct.kvm_run*, %struct.kvm_run** %97, align 8
  %99 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %95, i32* %100, align 8
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 2
  %103 = load %struct.kvm_run*, %struct.kvm_run** %102, align 8
  %104 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 3, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 2
  %109 = load %struct.kvm_run*, %struct.kvm_run** %108, align 8
  %110 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 2
  %117 = load %struct.kvm_run*, %struct.kvm_run** %116, align 8
  %118 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 2
  %125 = load %struct.kvm_run*, %struct.kvm_run** %124, align 8
  %126 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %122, i32* %129, align 4
  store i32 0, i32* %2, align 4
  br label %271

130:                                              ; preds = %84, %75
  %131 = load i32, i32* %6, align 4
  %132 = call i64 @is_page_fault(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %136 = call i64 @vmcs_readl(i32 %135)
  store i64 %136, i64* %9, align 8
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %134
  %144 = load i64, i64* @enable_ept, align 8
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %143, %134
  %147 = phi i1 [ false, %134 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @WARN_ON_ONCE(i32 %148)
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i64, i64* %9, align 8
  %153 = call i32 @kvm_handle_page_fault(%struct.kvm_vcpu* %150, i32 %151, i64 %152, i32* null, i32 0)
  store i32 %153, i32* %2, align 4
  br label %271

154:                                              ; preds = %130
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %7, align 4
  %158 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %159 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %154
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @rmode_exception(%struct.kvm_vcpu* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @handle_rmode_exception(%struct.kvm_vcpu* %169, i32 %170, i32 %171)
  store i32 %172, i32* %2, align 4
  br label %271

173:                                              ; preds = %163, %154
  %174 = load i32, i32* %7, align 4
  switch i32 %174, label %258 [
    i32 130, label %175
    i32 128, label %179
    i32 129, label %233
  ]

175:                                              ; preds = %173
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %176, i32 130, i32 %177)
  store i32 1, i32* %2, align 4
  br label %271

179:                                              ; preds = %173
  %180 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %181 = call i64 @vmcs_readl(i32 %180)
  store i64 %181, i64* %11, align 8
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %186 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %219, label %190

190:                                              ; preds = %179
  %191 = load i64, i64* @DR_TRAP_BITS, align 8
  %192 = xor i64 %191, -1
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = and i64 %196, %192
  store i64 %197, i64* %195, align 8
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* @DR6_RTM, align 8
  %200 = or i64 %198, %199
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %202 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = or i64 %204, %200
  store i64 %205, i64* %203, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @is_icebp(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %190
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %211 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %210)
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i32 @WARN_ON(i32 %214)
  br label %216

216:                                              ; preds = %209, %190
  %217 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %218 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %217, i32 128)
  store i32 1, i32* %2, align 4
  br label %271

219:                                              ; preds = %179
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* @DR6_FIXED_1, align 8
  %222 = or i64 %220, %221
  %223 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %224 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  store i64 %222, i64* %226, align 8
  %227 = load i32, i32* @GUEST_DR7, align 4
  %228 = call i64 @vmcs_readl(i32 %227)
  %229 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %230 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  store i64 %228, i64* %232, align 8
  br label %233

233:                                              ; preds = %173, %219
  %234 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %235 = call i8* @vmcs_read32(i32 %234)
  %236 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %237 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  store i8* %235, i8** %239, align 8
  %240 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %241 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %242 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %244 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %243)
  store i64 %244, i64* %10, align 8
  %245 = load i32, i32* @GUEST_CS_BASE, align 4
  %246 = call i64 @vmcs_readl(i32 %245)
  %247 = load i64, i64* %10, align 8
  %248 = add i64 %246, %247
  %249 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %250 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  store i64 %248, i64* %252, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %255 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 3
  store i32 %253, i32* %257, align 8
  br label %270

258:                                              ; preds = %173
  %259 = load i32, i32* @KVM_EXIT_EXCEPTION, align 4
  %260 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %261 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %264 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %268 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  br label %270

270:                                              ; preds = %258, %233
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %216, %175, %168, %146, %89, %71, %66, %36, %31
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_machine_check(i32) #1

declare dso_local i64 @is_nmi(i32) #1

declare dso_local i64 @is_invalid_opcode(i32) #1

declare dso_local i32 @handle_ud(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i64 @is_gp_fault(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_page_fault(i32) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @kvm_handle_page_fault(%struct.kvm_vcpu*, i32, i64, i32*, i32) #1

declare dso_local i64 @rmode_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @handle_rmode_exception(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @is_icebp(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
