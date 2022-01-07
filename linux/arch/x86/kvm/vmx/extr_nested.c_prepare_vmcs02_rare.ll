; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_rare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_rare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.hv_enlightened_vmcs* }
%struct.hv_enlightened_vmcs = type { i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2 = common dso_local global i32 0, align 4
@GUEST_ES_SELECTOR = common dso_local global i32 0, align 4
@GUEST_CS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_SS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_DS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_FS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_GS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_LDTR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_TR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_ES_LIMIT = common dso_local global i32 0, align 4
@GUEST_CS_LIMIT = common dso_local global i32 0, align 4
@GUEST_SS_LIMIT = common dso_local global i32 0, align 4
@GUEST_DS_LIMIT = common dso_local global i32 0, align 4
@GUEST_FS_LIMIT = common dso_local global i32 0, align 4
@GUEST_GS_LIMIT = common dso_local global i32 0, align 4
@GUEST_LDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_TR_LIMIT = common dso_local global i32 0, align 4
@GUEST_GDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_IDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_CS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_SS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_ES_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_DS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_FS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_GS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_LDTR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_TR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_ES_BASE = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@GUEST_SS_BASE = common dso_local global i32 0, align 4
@GUEST_DS_BASE = common dso_local global i32 0, align 4
@GUEST_FS_BASE = common dso_local global i32 0, align 4
@GUEST_GS_BASE = common dso_local global i32 0, align 4
@GUEST_LDTR_BASE = common dso_local global i32 0, align 4
@GUEST_TR_BASE = common dso_local global i32 0, align 4
@GUEST_GDTR_BASE = common dso_local global i32 0, align 4
@GUEST_IDTR_BASE = common dso_local global i32 0, align 4
@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 = common dso_local global i32 0, align 4
@GUEST_SYSENTER_CS = common dso_local global i32 0, align 4
@GUEST_PENDING_DBG_EXCEPTIONS = common dso_local global i32 0, align 4
@GUEST_SYSENTER_ESP = common dso_local global i32 0, align 4
@GUEST_SYSENTER_EIP = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@GUEST_PDPTR0 = common dso_local global i32 0, align 4
@GUEST_PDPTR1 = common dso_local global i32 0, align 4
@GUEST_PDPTR2 = common dso_local global i32 0, align 4
@GUEST_PDPTR3 = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_BNDCFGS = common dso_local global i32 0, align 4
@GUEST_BNDCFGS = common dso_local global i32 0, align 4
@XSS_EXIT_BITMAP = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MASK = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MATCH = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP0 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP1 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP2 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP3 = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, %struct.vmcs12*)* @prepare_vmcs02_rare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vmcs02_rare(%struct.vcpu_vmx* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.hv_enlightened_vmcs*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %8, align 8
  store %struct.hv_enlightened_vmcs* %9, %struct.hv_enlightened_vmcs** %5, align 8
  %10 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %5, align 8
  %11 = icmp ne %struct.hv_enlightened_vmcs* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %5, align 8
  %14 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %200, label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @GUEST_ES_SELECTOR, align 4
  %21 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %22 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %21, i32 0, i32 52
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vmcs_write16(i32 %20, i32 %23)
  %25 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %26 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %27 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %26, i32 0, i32 51
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vmcs_write16(i32 %25, i32 %28)
  %30 = load i32, i32* @GUEST_SS_SELECTOR, align 4
  %31 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 50
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vmcs_write16(i32 %30, i32 %33)
  %35 = load i32, i32* @GUEST_DS_SELECTOR, align 4
  %36 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %37 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %36, i32 0, i32 49
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vmcs_write16(i32 %35, i32 %38)
  %40 = load i32, i32* @GUEST_FS_SELECTOR, align 4
  %41 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %42 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %41, i32 0, i32 48
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vmcs_write16(i32 %40, i32 %43)
  %45 = load i32, i32* @GUEST_GS_SELECTOR, align 4
  %46 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %47 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %46, i32 0, i32 47
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vmcs_write16(i32 %45, i32 %48)
  %50 = load i32, i32* @GUEST_LDTR_SELECTOR, align 4
  %51 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %52 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %51, i32 0, i32 46
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vmcs_write16(i32 %50, i32 %53)
  %55 = load i32, i32* @GUEST_TR_SELECTOR, align 4
  %56 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %57 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %56, i32 0, i32 45
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vmcs_write16(i32 %55, i32 %58)
  %60 = load i32, i32* @GUEST_ES_LIMIT, align 4
  %61 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %62 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %61, i32 0, i32 44
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vmcs_write32(i32 %60, i32 %63)
  %65 = load i32, i32* @GUEST_CS_LIMIT, align 4
  %66 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %67 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %66, i32 0, i32 43
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vmcs_write32(i32 %65, i32 %68)
  %70 = load i32, i32* @GUEST_SS_LIMIT, align 4
  %71 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %72 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %71, i32 0, i32 42
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vmcs_write32(i32 %70, i32 %73)
  %75 = load i32, i32* @GUEST_DS_LIMIT, align 4
  %76 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %77 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %76, i32 0, i32 41
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @vmcs_write32(i32 %75, i32 %78)
  %80 = load i32, i32* @GUEST_FS_LIMIT, align 4
  %81 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %82 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %81, i32 0, i32 40
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @vmcs_write32(i32 %80, i32 %83)
  %85 = load i32, i32* @GUEST_GS_LIMIT, align 4
  %86 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %87 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %86, i32 0, i32 39
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vmcs_write32(i32 %85, i32 %88)
  %90 = load i32, i32* @GUEST_LDTR_LIMIT, align 4
  %91 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %92 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %91, i32 0, i32 38
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vmcs_write32(i32 %90, i32 %93)
  %95 = load i32, i32* @GUEST_TR_LIMIT, align 4
  %96 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %97 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %96, i32 0, i32 37
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vmcs_write32(i32 %95, i32 %98)
  %100 = load i32, i32* @GUEST_GDTR_LIMIT, align 4
  %101 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %102 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %101, i32 0, i32 36
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vmcs_write32(i32 %100, i32 %103)
  %105 = load i32, i32* @GUEST_IDTR_LIMIT, align 4
  %106 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %107 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %106, i32 0, i32 35
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vmcs_write32(i32 %105, i32 %108)
  %110 = load i32, i32* @GUEST_CS_AR_BYTES, align 4
  %111 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %112 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %111, i32 0, i32 34
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @vmcs_write32(i32 %110, i32 %113)
  %115 = load i32, i32* @GUEST_SS_AR_BYTES, align 4
  %116 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %117 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %116, i32 0, i32 33
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @vmcs_write32(i32 %115, i32 %118)
  %120 = load i32, i32* @GUEST_ES_AR_BYTES, align 4
  %121 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %122 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %121, i32 0, i32 32
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @vmcs_write32(i32 %120, i32 %123)
  %125 = load i32, i32* @GUEST_DS_AR_BYTES, align 4
  %126 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %127 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %126, i32 0, i32 31
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vmcs_write32(i32 %125, i32 %128)
  %130 = load i32, i32* @GUEST_FS_AR_BYTES, align 4
  %131 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %132 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %131, i32 0, i32 30
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vmcs_write32(i32 %130, i32 %133)
  %135 = load i32, i32* @GUEST_GS_AR_BYTES, align 4
  %136 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %137 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %136, i32 0, i32 29
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @vmcs_write32(i32 %135, i32 %138)
  %140 = load i32, i32* @GUEST_LDTR_AR_BYTES, align 4
  %141 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %142 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %141, i32 0, i32 28
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @vmcs_write32(i32 %140, i32 %143)
  %145 = load i32, i32* @GUEST_TR_AR_BYTES, align 4
  %146 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %147 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %146, i32 0, i32 27
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @vmcs_write32(i32 %145, i32 %148)
  %150 = load i32, i32* @GUEST_ES_BASE, align 4
  %151 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %152 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %151, i32 0, i32 26
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @vmcs_writel(i32 %150, i32 %153)
  %155 = load i32, i32* @GUEST_CS_BASE, align 4
  %156 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %157 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %156, i32 0, i32 25
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @vmcs_writel(i32 %155, i32 %158)
  %160 = load i32, i32* @GUEST_SS_BASE, align 4
  %161 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %162 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %161, i32 0, i32 24
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @vmcs_writel(i32 %160, i32 %163)
  %165 = load i32, i32* @GUEST_DS_BASE, align 4
  %166 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %167 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %166, i32 0, i32 23
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @vmcs_writel(i32 %165, i32 %168)
  %170 = load i32, i32* @GUEST_FS_BASE, align 4
  %171 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %172 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %171, i32 0, i32 22
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @vmcs_writel(i32 %170, i32 %173)
  %175 = load i32, i32* @GUEST_GS_BASE, align 4
  %176 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %177 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %176, i32 0, i32 21
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @vmcs_writel(i32 %175, i32 %178)
  %180 = load i32, i32* @GUEST_LDTR_BASE, align 4
  %181 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %182 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %181, i32 0, i32 20
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @vmcs_writel(i32 %180, i32 %183)
  %185 = load i32, i32* @GUEST_TR_BASE, align 4
  %186 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %187 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %186, i32 0, i32 19
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @vmcs_writel(i32 %185, i32 %188)
  %190 = load i32, i32* @GUEST_GDTR_BASE, align 4
  %191 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %192 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @vmcs_writel(i32 %190, i32 %193)
  %195 = load i32, i32* @GUEST_IDTR_BASE, align 4
  %196 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %197 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %196, i32 0, i32 17
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @vmcs_writel(i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %19, %12
  %201 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %5, align 8
  %202 = icmp ne %struct.hv_enlightened_vmcs* %201, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %5, align 8
  %205 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %277, label %210

210:                                              ; preds = %203, %200
  %211 = load i32, i32* @GUEST_SYSENTER_CS, align 4
  %212 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %213 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %212, i32 0, i32 16
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vmcs_write32(i32 %211, i32 %214)
  %216 = load i32, i32* @GUEST_PENDING_DBG_EXCEPTIONS, align 4
  %217 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %218 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %217, i32 0, i32 15
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @vmcs_writel(i32 %216, i32 %219)
  %221 = load i32, i32* @GUEST_SYSENTER_ESP, align 4
  %222 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %223 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %222, i32 0, i32 14
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @vmcs_writel(i32 %221, i32 %224)
  %226 = load i32, i32* @GUEST_SYSENTER_EIP, align 4
  %227 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %228 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @vmcs_writel(i32 %226, i32 %229)
  %231 = load i64, i64* @enable_ept, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %254

233:                                              ; preds = %210
  %234 = load i32, i32* @GUEST_PDPTR0, align 4
  %235 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %236 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @vmcs_write64(i32 %234, i32 %237)
  %239 = load i32, i32* @GUEST_PDPTR1, align 4
  %240 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %241 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %240, i32 0, i32 11
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @vmcs_write64(i32 %239, i32 %242)
  %244 = load i32, i32* @GUEST_PDPTR2, align 4
  %245 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %246 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @vmcs_write64(i32 %244, i32 %247)
  %249 = load i32, i32* @GUEST_PDPTR3, align 4
  %250 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %251 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @vmcs_write64(i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %233, %210
  %255 = call i64 (...) @kvm_mpx_supported()
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %259 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %257
  %264 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %265 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @VM_ENTRY_LOAD_BNDCFGS, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load i32, i32* @GUEST_BNDCFGS, align 4
  %272 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %273 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @vmcs_write64(i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %270, %263, %257, %254
  br label %277

277:                                              ; preds = %276, %203
  %278 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %279 = call i64 @nested_cpu_has_xsaves(%struct.vmcs12* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32, i32* @XSS_EXIT_BITMAP, align 4
  %283 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %284 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @vmcs_write64(i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %281, %277
  %288 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MASK, align 4
  %289 = load i64, i64* @enable_ept, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %293 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  br label %296

295:                                              ; preds = %287
  br label %296

296:                                              ; preds = %295, %291
  %297 = phi i32 [ %294, %291 ], [ 0, %295 ]
  %298 = call i32 @vmcs_write32(i32 %288, i32 %297)
  %299 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MATCH, align 4
  %300 = load i64, i64* @enable_ept, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %304 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  br label %307

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %306, %302
  %308 = phi i32 [ %305, %302 ], [ 0, %306 ]
  %309 = call i32 @vmcs_write32(i32 %299, i32 %308)
  %310 = call i64 (...) @cpu_has_vmx_apicv()
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %333

312:                                              ; preds = %307
  %313 = load i32, i32* @EOI_EXIT_BITMAP0, align 4
  %314 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %315 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @vmcs_write64(i32 %313, i32 %316)
  %318 = load i32, i32* @EOI_EXIT_BITMAP1, align 4
  %319 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %320 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @vmcs_write64(i32 %318, i32 %321)
  %323 = load i32, i32* @EOI_EXIT_BITMAP2, align 4
  %324 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %325 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @vmcs_write64(i32 %323, i32 %326)
  %328 = load i32, i32* @EOI_EXIT_BITMAP3, align 4
  %329 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %330 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @vmcs_write64(i32 %328, i32 %331)
  br label %333

333:                                              ; preds = %312, %307
  %334 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %335 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %336 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @vmcs_write32(i32 %334, i32 %339)
  %341 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %342 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %343 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @vmcs_write32(i32 %341, i32 %346)
  %348 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %349 = call i32 @set_cr4_guest_host_mask(%struct.vcpu_vmx* %348)
  ret void
}

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i64 @kvm_mpx_supported(...) #1

declare dso_local i64 @nested_cpu_has_xsaves(%struct.vmcs12*) #1

declare dso_local i64 @cpu_has_vmx_apicv(...) #1

declare dso_local i32 @set_cr4_guest_host_mask(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
