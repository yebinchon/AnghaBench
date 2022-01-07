; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_init_vmcb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_init_vmcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_18__ = type { %struct.vmcb_control_area, %struct.vmcb_save_area }
%struct.vmcb_control_area = type { i32, i32, i32, i64, i64, i8*, i8* }
%struct.vmcb_save_area = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, i64, i32 }
%struct.TYPE_15__ = type { i64 }

@INTERCEPT_CR0_READ = common dso_local global i32 0, align 4
@INTERCEPT_CR3_READ = common dso_local global i32 0, align 4
@INTERCEPT_CR4_READ = common dso_local global i32 0, align 4
@INTERCEPT_CR0_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_CR3_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_CR4_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_CR8_WRITE = common dso_local global i32 0, align 4
@PF_VECTOR = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@MC_VECTOR = common dso_local global i32 0, align 4
@AC_VECTOR = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@enable_vmware_backdoor = common dso_local global i64 0, align 8
@GP_VECTOR = common dso_local global i32 0, align 4
@INTERCEPT_INTR = common dso_local global i32 0, align 4
@INTERCEPT_NMI = common dso_local global i32 0, align 4
@INTERCEPT_SMI = common dso_local global i32 0, align 4
@INTERCEPT_SELECTIVE_CR0 = common dso_local global i32 0, align 4
@INTERCEPT_RDPMC = common dso_local global i32 0, align 4
@INTERCEPT_CPUID = common dso_local global i32 0, align 4
@INTERCEPT_INVD = common dso_local global i32 0, align 4
@INTERCEPT_INVLPG = common dso_local global i32 0, align 4
@INTERCEPT_INVLPGA = common dso_local global i32 0, align 4
@INTERCEPT_IOIO_PROT = common dso_local global i32 0, align 4
@INTERCEPT_MSR_PROT = common dso_local global i32 0, align 4
@INTERCEPT_TASK_SWITCH = common dso_local global i32 0, align 4
@INTERCEPT_SHUTDOWN = common dso_local global i32 0, align 4
@INTERCEPT_VMRUN = common dso_local global i32 0, align 4
@INTERCEPT_VMMCALL = common dso_local global i32 0, align 4
@INTERCEPT_VMLOAD = common dso_local global i32 0, align 4
@INTERCEPT_VMSAVE = common dso_local global i32 0, align 4
@INTERCEPT_STGI = common dso_local global i32 0, align 4
@INTERCEPT_CLGI = common dso_local global i32 0, align 4
@INTERCEPT_SKINIT = common dso_local global i32 0, align 4
@INTERCEPT_WBINVD = common dso_local global i32 0, align 4
@INTERCEPT_XSETBV = common dso_local global i32 0, align 4
@INTERCEPT_RDPRU = common dso_local global i32 0, align 4
@INTERCEPT_RSM = common dso_local global i32 0, align 4
@INTERCEPT_MONITOR = common dso_local global i32 0, align 4
@INTERCEPT_MWAIT = common dso_local global i32 0, align 4
@INTERCEPT_HLT = common dso_local global i32 0, align 4
@iopm_base = common dso_local global i32 0, align 4
@V_INTR_MASKING_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_READ_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_P_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_S_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_CODE_MASK = common dso_local global i32 0, align 4
@SEG_TYPE_LDT = common dso_local global i32 0, align 4
@SEG_TYPE_BUSY_TSS16 = common dso_local global i32 0, align 4
@VCPU_REGS_RIP = common dso_local global i64 0, align 8
@X86_CR0_NW = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i32 0, align 4
@X86_CR0_ET = common dso_local global i32 0, align 4
@X86_CR4_PAE = common dso_local global i64 0, align 8
@npt_enabled = common dso_local global i64 0, align 8
@SVM_NESTED_CTL_NP_ENABLE = common dso_local global i32 0, align 4
@pause_filter_count = common dso_local global i64 0, align 8
@pause_filter_thresh = common dso_local global i64 0, align 8
@INTERCEPT_PAUSE = common dso_local global i32 0, align 4
@vls = common dso_local global i64 0, align 8
@VIRTUAL_VMLOAD_VMSAVE_ENABLE_MASK = common dso_local global i32 0, align 4
@vgif = common dso_local global i64 0, align 8
@V_GIF_ENABLE_MASK = common dso_local global i32 0, align 4
@SVM_NESTED_CTL_SEV_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @init_vmcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vmcb(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.vmcb_control_area*, align 8
  %4 = alloca %struct.vmcb_save_area*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 0
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store %struct.vmcb_control_area* %8, %struct.vmcb_control_area** %3, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store %struct.vmcb_save_area* %12, %struct.vmcb_save_area** %4, align 8
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %18 = load i32, i32* @INTERCEPT_CR0_READ, align 4
  %19 = call i32 @set_cr_intercept(%struct.vcpu_svm* %17, i32 %18)
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %21 = load i32, i32* @INTERCEPT_CR3_READ, align 4
  %22 = call i32 @set_cr_intercept(%struct.vcpu_svm* %20, i32 %21)
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %24 = load i32, i32* @INTERCEPT_CR4_READ, align 4
  %25 = call i32 @set_cr_intercept(%struct.vcpu_svm* %23, i32 %24)
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %27 = load i32, i32* @INTERCEPT_CR0_WRITE, align 4
  %28 = call i32 @set_cr_intercept(%struct.vcpu_svm* %26, i32 %27)
  %29 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %30 = load i32, i32* @INTERCEPT_CR3_WRITE, align 4
  %31 = call i32 @set_cr_intercept(%struct.vcpu_svm* %29, i32 %30)
  %32 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %33 = load i32, i32* @INTERCEPT_CR4_WRITE, align 4
  %34 = call i32 @set_cr_intercept(%struct.vcpu_svm* %32, i32 %33)
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %36 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %35, i32 0, i32 1
  %37 = call i64 @kvm_vcpu_apicv_active(%struct.TYPE_17__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %41 = load i32, i32* @INTERCEPT_CR8_WRITE, align 4
  %42 = call i32 @set_cr_intercept(%struct.vcpu_svm* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %45 = call i32 @set_dr_intercepts(%struct.vcpu_svm* %44)
  %46 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %47 = load i32, i32* @PF_VECTOR, align 4
  %48 = call i32 @set_exception_intercept(%struct.vcpu_svm* %46, i32 %47)
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %50 = load i32, i32* @UD_VECTOR, align 4
  %51 = call i32 @set_exception_intercept(%struct.vcpu_svm* %49, i32 %50)
  %52 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %53 = load i32, i32* @MC_VECTOR, align 4
  %54 = call i32 @set_exception_intercept(%struct.vcpu_svm* %52, i32 %53)
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %56 = load i32, i32* @AC_VECTOR, align 4
  %57 = call i32 @set_exception_intercept(%struct.vcpu_svm* %55, i32 %56)
  %58 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %59 = load i32, i32* @DB_VECTOR, align 4
  %60 = call i32 @set_exception_intercept(%struct.vcpu_svm* %58, i32 %59)
  %61 = load i64, i64* @enable_vmware_backdoor, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %43
  %64 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %65 = load i32, i32* @GP_VECTOR, align 4
  %66 = call i32 @set_exception_intercept(%struct.vcpu_svm* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %43
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %69 = load i32, i32* @INTERCEPT_INTR, align 4
  %70 = call i32 @set_intercept(%struct.vcpu_svm* %68, i32 %69)
  %71 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %72 = load i32, i32* @INTERCEPT_NMI, align 4
  %73 = call i32 @set_intercept(%struct.vcpu_svm* %71, i32 %72)
  %74 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %75 = load i32, i32* @INTERCEPT_SMI, align 4
  %76 = call i32 @set_intercept(%struct.vcpu_svm* %74, i32 %75)
  %77 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %78 = load i32, i32* @INTERCEPT_SELECTIVE_CR0, align 4
  %79 = call i32 @set_intercept(%struct.vcpu_svm* %77, i32 %78)
  %80 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %81 = load i32, i32* @INTERCEPT_RDPMC, align 4
  %82 = call i32 @set_intercept(%struct.vcpu_svm* %80, i32 %81)
  %83 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %84 = load i32, i32* @INTERCEPT_CPUID, align 4
  %85 = call i32 @set_intercept(%struct.vcpu_svm* %83, i32 %84)
  %86 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %87 = load i32, i32* @INTERCEPT_INVD, align 4
  %88 = call i32 @set_intercept(%struct.vcpu_svm* %86, i32 %87)
  %89 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %90 = load i32, i32* @INTERCEPT_INVLPG, align 4
  %91 = call i32 @set_intercept(%struct.vcpu_svm* %89, i32 %90)
  %92 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %93 = load i32, i32* @INTERCEPT_INVLPGA, align 4
  %94 = call i32 @set_intercept(%struct.vcpu_svm* %92, i32 %93)
  %95 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %96 = load i32, i32* @INTERCEPT_IOIO_PROT, align 4
  %97 = call i32 @set_intercept(%struct.vcpu_svm* %95, i32 %96)
  %98 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %99 = load i32, i32* @INTERCEPT_MSR_PROT, align 4
  %100 = call i32 @set_intercept(%struct.vcpu_svm* %98, i32 %99)
  %101 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %102 = load i32, i32* @INTERCEPT_TASK_SWITCH, align 4
  %103 = call i32 @set_intercept(%struct.vcpu_svm* %101, i32 %102)
  %104 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %105 = load i32, i32* @INTERCEPT_SHUTDOWN, align 4
  %106 = call i32 @set_intercept(%struct.vcpu_svm* %104, i32 %105)
  %107 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %108 = load i32, i32* @INTERCEPT_VMRUN, align 4
  %109 = call i32 @set_intercept(%struct.vcpu_svm* %107, i32 %108)
  %110 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %111 = load i32, i32* @INTERCEPT_VMMCALL, align 4
  %112 = call i32 @set_intercept(%struct.vcpu_svm* %110, i32 %111)
  %113 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %114 = load i32, i32* @INTERCEPT_VMLOAD, align 4
  %115 = call i32 @set_intercept(%struct.vcpu_svm* %113, i32 %114)
  %116 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %117 = load i32, i32* @INTERCEPT_VMSAVE, align 4
  %118 = call i32 @set_intercept(%struct.vcpu_svm* %116, i32 %117)
  %119 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %120 = load i32, i32* @INTERCEPT_STGI, align 4
  %121 = call i32 @set_intercept(%struct.vcpu_svm* %119, i32 %120)
  %122 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %123 = load i32, i32* @INTERCEPT_CLGI, align 4
  %124 = call i32 @set_intercept(%struct.vcpu_svm* %122, i32 %123)
  %125 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %126 = load i32, i32* @INTERCEPT_SKINIT, align 4
  %127 = call i32 @set_intercept(%struct.vcpu_svm* %125, i32 %126)
  %128 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %129 = load i32, i32* @INTERCEPT_WBINVD, align 4
  %130 = call i32 @set_intercept(%struct.vcpu_svm* %128, i32 %129)
  %131 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %132 = load i32, i32* @INTERCEPT_XSETBV, align 4
  %133 = call i32 @set_intercept(%struct.vcpu_svm* %131, i32 %132)
  %134 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %135 = load i32, i32* @INTERCEPT_RDPRU, align 4
  %136 = call i32 @set_intercept(%struct.vcpu_svm* %134, i32 %135)
  %137 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %138 = load i32, i32* @INTERCEPT_RSM, align 4
  %139 = call i32 @set_intercept(%struct.vcpu_svm* %137, i32 %138)
  %140 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %141 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @kvm_mwait_in_guest(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %67
  %147 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %148 = load i32, i32* @INTERCEPT_MONITOR, align 4
  %149 = call i32 @set_intercept(%struct.vcpu_svm* %147, i32 %148)
  %150 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %151 = load i32, i32* @INTERCEPT_MWAIT, align 4
  %152 = call i32 @set_intercept(%struct.vcpu_svm* %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %67
  %154 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %155 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @kvm_hlt_in_guest(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %153
  %161 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %162 = load i32, i32* @INTERCEPT_HLT, align 4
  %163 = call i32 @set_intercept(%struct.vcpu_svm* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %153
  %165 = load i32, i32* @iopm_base, align 4
  %166 = call i8* @__sme_set(i32 %165)
  %167 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %168 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %167, i32 0, i32 6
  store i8* %166, i8** %168, align 8
  %169 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %170 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @__pa(i32 %171)
  %173 = call i8* @__sme_set(i32 %172)
  %174 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %175 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %177 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %178 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %180 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %179, i32 0, i32 14
  %181 = call i32 @init_seg(i32* %180)
  %182 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %183 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %182, i32 0, i32 13
  %184 = call i32 @init_seg(i32* %183)
  %185 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %186 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %185, i32 0, i32 12
  %187 = call i32 @init_seg(i32* %186)
  %188 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %189 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %188, i32 0, i32 11
  %190 = call i32 @init_seg(i32* %189)
  %191 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %192 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %191, i32 0, i32 10
  %193 = call i32 @init_seg(i32* %192)
  %194 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %195 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  store i32 61440, i32* %196, align 4
  %197 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %198 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  store i32 -65536, i32* %199, align 4
  %200 = load i32, i32* @SVM_SELECTOR_READ_MASK, align 4
  %201 = load i32, i32* @SVM_SELECTOR_P_MASK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @SVM_SELECTOR_S_MASK, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @SVM_SELECTOR_CODE_MASK, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %208 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %207, i32 0, i32 9
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 4
  %210 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %211 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %210, i32 0, i32 9
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  store i32 65535, i32* %212, align 4
  %213 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %214 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 65535, i32* %215, align 8
  %216 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %217 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i32 65535, i32* %218, align 4
  %219 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %220 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %219, i32 0, i32 6
  %221 = load i32, i32* @SEG_TYPE_LDT, align 4
  %222 = call i32 @init_sys_seg(i32* %220, i32 %221)
  %223 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %224 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %223, i32 0, i32 5
  %225 = load i32, i32* @SEG_TYPE_BUSY_TSS16, align 4
  %226 = call i32 @init_sys_seg(i32* %224, i32 %225)
  %227 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %228 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %227, i32 0, i32 1
  %229 = call i32 @svm_set_efer(%struct.TYPE_17__* %228, i32 0)
  %230 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %231 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %230, i32 0, i32 0
  store i32 -61456, i32* %231, align 8
  %232 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %233 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %232, i32 0, i32 1
  %234 = call i32 @kvm_set_rflags(%struct.TYPE_17__* %233, i32 2)
  %235 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %236 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %235, i32 0, i32 1
  store i32 65520, i32* %236, align 4
  %237 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %238 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %241 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @VCPU_REGS_RIP, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %239, i32* %246, align 4
  %247 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %248 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %247, i32 0, i32 1
  %249 = load i32, i32* @X86_CR0_NW, align 4
  %250 = load i32, i32* @X86_CR0_CD, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @X86_CR0_ET, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @svm_set_cr0(%struct.TYPE_17__* %248, i32 %253)
  %255 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %256 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %255, i32 0, i32 1
  %257 = call i32 @kvm_mmu_reset_context(%struct.TYPE_17__* %256)
  %258 = load i64, i64* @X86_CR4_PAE, align 8
  %259 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %260 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %259, i32 0, i32 2
  store i64 %258, i64* %260, align 8
  %261 = load i64, i64* @npt_enabled, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %292

263:                                              ; preds = %164
  %264 = load i32, i32* @SVM_NESTED_CTL_NP_ENABLE, align 4
  %265 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %266 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %270 = load i32, i32* @INTERCEPT_INVLPG, align 4
  %271 = call i32 @clr_intercept(%struct.vcpu_svm* %269, i32 %270)
  %272 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %273 = load i32, i32* @PF_VECTOR, align 4
  %274 = call i32 @clr_exception_intercept(%struct.vcpu_svm* %272, i32 %273)
  %275 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %276 = load i32, i32* @INTERCEPT_CR3_READ, align 4
  %277 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %275, i32 %276)
  %278 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %279 = load i32, i32* @INTERCEPT_CR3_WRITE, align 4
  %280 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %278, i32 %279)
  %281 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %282 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %287 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 8
  %288 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %289 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %288, i32 0, i32 3
  store i64 0, i64* %289, align 8
  %290 = load %struct.vmcb_save_area*, %struct.vmcb_save_area** %4, align 8
  %291 = getelementptr inbounds %struct.vmcb_save_area, %struct.vmcb_save_area* %290, i32 0, i32 2
  store i64 0, i64* %291, align 8
  br label %292

292:                                              ; preds = %263, %164
  %293 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %294 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %293, i32 0, i32 3
  store i64 0, i64* %294, align 8
  %295 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %296 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i64 0, i64* %297, align 8
  %298 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %299 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  store i64 0, i64* %301, align 8
  %302 = load i64, i64* @pause_filter_count, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %318

304:                                              ; preds = %292
  %305 = load i64, i64* @pause_filter_count, align 8
  %306 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %307 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %306, i32 0, i32 4
  store i64 %305, i64* %307, align 8
  %308 = load i64, i64* @pause_filter_thresh, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load i64, i64* @pause_filter_thresh, align 8
  %312 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %3, align 8
  %313 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %312, i32 0, i32 3
  store i64 %311, i64* %313, align 8
  br label %314

314:                                              ; preds = %310, %304
  %315 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %316 = load i32, i32* @INTERCEPT_PAUSE, align 4
  %317 = call i32 @set_intercept(%struct.vcpu_svm* %315, i32 %316)
  br label %322

318:                                              ; preds = %292
  %319 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %320 = load i32, i32* @INTERCEPT_PAUSE, align 4
  %321 = call i32 @clr_intercept(%struct.vcpu_svm* %319, i32 %320)
  br label %322

322:                                              ; preds = %318, %314
  %323 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %324 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %323, i32 0, i32 1
  %325 = call i64 @kvm_vcpu_apicv_active(%struct.TYPE_17__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %329 = call i32 @avic_init_vmcb(%struct.vcpu_svm* %328)
  br label %330

330:                                              ; preds = %327, %322
  %331 = load i64, i64* @vls, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %348

333:                                              ; preds = %330
  %334 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %335 = load i32, i32* @INTERCEPT_VMLOAD, align 4
  %336 = call i32 @clr_intercept(%struct.vcpu_svm* %334, i32 %335)
  %337 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %338 = load i32, i32* @INTERCEPT_VMSAVE, align 4
  %339 = call i32 @clr_intercept(%struct.vcpu_svm* %337, i32 %338)
  %340 = load i32, i32* @VIRTUAL_VMLOAD_VMSAVE_ENABLE_MASK, align 4
  %341 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %342 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %341, i32 0, i32 0
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %340
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %333, %330
  %349 = load i64, i64* @vgif, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %366

351:                                              ; preds = %348
  %352 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %353 = load i32, i32* @INTERCEPT_STGI, align 4
  %354 = call i32 @clr_intercept(%struct.vcpu_svm* %352, i32 %353)
  %355 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %356 = load i32, i32* @INTERCEPT_CLGI, align 4
  %357 = call i32 @clr_intercept(%struct.vcpu_svm* %355, i32 %356)
  %358 = load i32, i32* @V_GIF_ENABLE_MASK, align 4
  %359 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %360 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %359, i32 0, i32 0
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %358
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %351, %348
  %367 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %368 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i64 @sev_guest(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %385

373:                                              ; preds = %366
  %374 = load i32, i32* @SVM_NESTED_CTL_SEV_ENABLE, align 4
  %375 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %376 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %375, i32 0, i32 0
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %374
  store i32 %381, i32* %379, align 8
  %382 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %383 = load i32, i32* @UD_VECTOR, align 4
  %384 = call i32 @clr_exception_intercept(%struct.vcpu_svm* %382, i32 %383)
  br label %385

385:                                              ; preds = %373, %366
  %386 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %387 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %386, i32 0, i32 0
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %387, align 8
  %389 = call i32 @mark_all_dirty(%struct.TYPE_18__* %388)
  %390 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %391 = call i32 @enable_gif(%struct.vcpu_svm* %390)
  ret void
}

declare dso_local i32 @set_cr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i64 @kvm_vcpu_apicv_active(%struct.TYPE_17__*) #1

declare dso_local i32 @set_dr_intercepts(%struct.vcpu_svm*) #1

declare dso_local i32 @set_exception_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @set_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @kvm_mwait_in_guest(i32) #1

declare dso_local i32 @kvm_hlt_in_guest(i32) #1

declare dso_local i8* @__sme_set(i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @init_seg(i32*) #1

declare dso_local i32 @init_sys_seg(i32*, i32) #1

declare dso_local i32 @svm_set_efer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @svm_set_cr0(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.TYPE_17__*) #1

declare dso_local i32 @clr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @clr_exception_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @clr_cr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @avic_init_vmcb(%struct.vcpu_svm*) #1

declare dso_local i64 @sev_guest(i32) #1

declare dso_local i32 @mark_all_dirty(%struct.TYPE_18__*) #1

declare dso_local i32 @enable_gif(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
