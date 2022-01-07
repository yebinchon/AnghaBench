; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_sync_vmcs02_to_vmcs12_rare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_sync_vmcs02_to_vmcs12_rare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

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
@GUEST_PENDING_DBG_EXCEPTIONS = common dso_local global i32 0, align 4
@GUEST_BNDCFGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vmcs12*)* @sync_vmcs02_to_vmcs12_rare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %5, align 8
  %8 = load i32, i32* @GUEST_ES_SELECTOR, align 4
  %9 = call i8* @vmcs_read16(i32 %8)
  %10 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %11 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %10, i32 0, i32 35
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %13 = call i8* @vmcs_read16(i32 %12)
  %14 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %15 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %14, i32 0, i32 34
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @GUEST_SS_SELECTOR, align 4
  %17 = call i8* @vmcs_read16(i32 %16)
  %18 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %19 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %18, i32 0, i32 33
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @GUEST_DS_SELECTOR, align 4
  %21 = call i8* @vmcs_read16(i32 %20)
  %22 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %23 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %22, i32 0, i32 32
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @GUEST_FS_SELECTOR, align 4
  %25 = call i8* @vmcs_read16(i32 %24)
  %26 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %27 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %26, i32 0, i32 31
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @GUEST_GS_SELECTOR, align 4
  %29 = call i8* @vmcs_read16(i32 %28)
  %30 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %31 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %30, i32 0, i32 30
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @GUEST_LDTR_SELECTOR, align 4
  %33 = call i8* @vmcs_read16(i32 %32)
  %34 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %35 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %34, i32 0, i32 29
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @GUEST_TR_SELECTOR, align 4
  %37 = call i8* @vmcs_read16(i32 %36)
  %38 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %39 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %38, i32 0, i32 28
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @GUEST_ES_LIMIT, align 4
  %41 = call i8* @vmcs_read32(i32 %40)
  %42 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %43 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %42, i32 0, i32 27
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @GUEST_CS_LIMIT, align 4
  %45 = call i8* @vmcs_read32(i32 %44)
  %46 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %47 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %46, i32 0, i32 26
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @GUEST_SS_LIMIT, align 4
  %49 = call i8* @vmcs_read32(i32 %48)
  %50 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %51 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %50, i32 0, i32 25
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @GUEST_DS_LIMIT, align 4
  %53 = call i8* @vmcs_read32(i32 %52)
  %54 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %55 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %54, i32 0, i32 24
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @GUEST_FS_LIMIT, align 4
  %57 = call i8* @vmcs_read32(i32 %56)
  %58 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %59 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %58, i32 0, i32 23
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @GUEST_GS_LIMIT, align 4
  %61 = call i8* @vmcs_read32(i32 %60)
  %62 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %63 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %62, i32 0, i32 22
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @GUEST_LDTR_LIMIT, align 4
  %65 = call i8* @vmcs_read32(i32 %64)
  %66 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %67 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %66, i32 0, i32 21
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @GUEST_TR_LIMIT, align 4
  %69 = call i8* @vmcs_read32(i32 %68)
  %70 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %71 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %70, i32 0, i32 20
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @GUEST_GDTR_LIMIT, align 4
  %73 = call i8* @vmcs_read32(i32 %72)
  %74 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %75 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %74, i32 0, i32 19
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @GUEST_IDTR_LIMIT, align 4
  %77 = call i8* @vmcs_read32(i32 %76)
  %78 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %79 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %78, i32 0, i32 18
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @GUEST_ES_AR_BYTES, align 4
  %81 = call i8* @vmcs_read32(i32 %80)
  %82 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %83 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %82, i32 0, i32 17
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @GUEST_DS_AR_BYTES, align 4
  %85 = call i8* @vmcs_read32(i32 %84)
  %86 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %87 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %86, i32 0, i32 16
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @GUEST_FS_AR_BYTES, align 4
  %89 = call i8* @vmcs_read32(i32 %88)
  %90 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %91 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %90, i32 0, i32 15
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @GUEST_GS_AR_BYTES, align 4
  %93 = call i8* @vmcs_read32(i32 %92)
  %94 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %95 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %94, i32 0, i32 14
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @GUEST_LDTR_AR_BYTES, align 4
  %97 = call i8* @vmcs_read32(i32 %96)
  %98 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %99 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %98, i32 0, i32 13
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @GUEST_TR_AR_BYTES, align 4
  %101 = call i8* @vmcs_read32(i32 %100)
  %102 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %103 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %102, i32 0, i32 12
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @GUEST_ES_BASE, align 4
  %105 = call i8* @vmcs_readl(i32 %104)
  %106 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %107 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %106, i32 0, i32 11
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @GUEST_CS_BASE, align 4
  %109 = call i8* @vmcs_readl(i32 %108)
  %110 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %111 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %110, i32 0, i32 10
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @GUEST_SS_BASE, align 4
  %113 = call i8* @vmcs_readl(i32 %112)
  %114 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %115 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %114, i32 0, i32 9
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @GUEST_DS_BASE, align 4
  %117 = call i8* @vmcs_readl(i32 %116)
  %118 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %119 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @GUEST_FS_BASE, align 4
  %121 = call i8* @vmcs_readl(i32 %120)
  %122 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %123 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @GUEST_GS_BASE, align 4
  %125 = call i8* @vmcs_readl(i32 %124)
  %126 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %127 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @GUEST_LDTR_BASE, align 4
  %129 = call i8* @vmcs_readl(i32 %128)
  %130 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %131 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @GUEST_TR_BASE, align 4
  %133 = call i8* @vmcs_readl(i32 %132)
  %134 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %135 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @GUEST_GDTR_BASE, align 4
  %137 = call i8* @vmcs_readl(i32 %136)
  %138 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %139 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @GUEST_IDTR_BASE, align 4
  %141 = call i8* @vmcs_readl(i32 %140)
  %142 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %143 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* @GUEST_PENDING_DBG_EXCEPTIONS, align 4
  %145 = call i8* @vmcs_readl(i32 %144)
  %146 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %147 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = call i64 (...) @kvm_mpx_supported()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %2
  %151 = load i32, i32* @GUEST_BNDCFGS, align 4
  %152 = call i32 @vmcs_read64(i32 %151)
  %153 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %154 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %2
  %156 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %157 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 4
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_read16(i32) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i8* @vmcs_readl(i32) #1

declare dso_local i64 @kvm_mpx_supported(...) #1

declare dso_local i32 @vmcs_read64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
