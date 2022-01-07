; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_enter_pmode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_enter_pmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i64 }

@VCPU_SREG_ES = common dso_local global i64 0, align 8
@VCPU_SREG_DS = common dso_local global i64 0, align 8
@VCPU_SREG_FS = common dso_local global i64 0, align 8
@VCPU_SREG_GS = common dso_local global i64 0, align 8
@VCPU_SREG_SS = common dso_local global i64 0, align 8
@VCPU_SREG_CS = common dso_local global i64 0, align 8
@VCPU_SREG_TR = common dso_local global i64 0, align 8
@GUEST_RFLAGS = common dso_local global i32 0, align 4
@RMODE_GUEST_OWNED_EFLAGS_BITS = common dso_local global i64 0, align 8
@GUEST_CR4 = common dso_local global i32 0, align 4
@X86_CR4_VME = common dso_local global i64 0, align 8
@CR4_READ_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @enter_pmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_pmode(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @VCPU_SREG_ES, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i64, i64* @VCPU_SREG_ES, align 8
  %15 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %7, i32* %13, i64 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @VCPU_SREG_DS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i64, i64* @VCPU_SREG_DS, align 8
  %24 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %16, i32* %22, i64 %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VCPU_SREG_FS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i64, i64* @VCPU_SREG_FS, align 8
  %33 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %25, i32* %31, i64 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @VCPU_SREG_GS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i64, i64* @VCPU_SREG_GS, align 8
  %42 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %34, i32* %40, i64 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @VCPU_SREG_SS, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i64, i64* @VCPU_SREG_SS, align 8
  %51 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %43, i32* %49, i64 %50)
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VCPU_SREG_CS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* @VCPU_SREG_CS, align 8
  %60 = call i32 @vmx_get_segment(%struct.kvm_vcpu* %52, i32* %58, i64 %59)
  %61 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %62 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %65 = call i32 @vmx_segment_cache_clear(%struct.vcpu_vmx* %64)
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %68 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @VCPU_SREG_TR, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i64, i64* @VCPU_SREG_TR, align 8
  %74 = call i32 @vmx_set_segment(%struct.kvm_vcpu* %66, i32* %72, i64 %73)
  %75 = load i32, i32* @GUEST_RFLAGS, align 4
  %76 = call i64 @vmcs_readl(i32 %75)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* @RMODE_GUEST_OWNED_EFLAGS_BITS, align 8
  %78 = load i64, i64* %3, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %3, align 8
  %80 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %81 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RMODE_GUEST_OWNED_EFLAGS_BITS, align 8
  %85 = xor i64 %84, -1
  %86 = and i64 %83, %85
  %87 = load i64, i64* %3, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %3, align 8
  %89 = load i32, i32* @GUEST_RFLAGS, align 4
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @vmcs_writel(i32 %89, i64 %90)
  %92 = load i32, i32* @GUEST_CR4, align 4
  %93 = load i32, i32* @GUEST_CR4, align 4
  %94 = call i64 @vmcs_readl(i32 %93)
  %95 = load i64, i64* @X86_CR4_VME, align 8
  %96 = xor i64 %95, -1
  %97 = and i64 %94, %96
  %98 = load i32, i32* @CR4_READ_SHADOW, align 4
  %99 = call i64 @vmcs_readl(i32 %98)
  %100 = load i64, i64* @X86_CR4_VME, align 8
  %101 = and i64 %99, %100
  %102 = or i64 %97, %101
  %103 = call i32 @vmcs_writel(i32 %92, i64 %102)
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %105 = call i32 @update_exception_bitmap(%struct.kvm_vcpu* %104)
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %107 = load i64, i64* @VCPU_SREG_CS, align 8
  %108 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %109 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @VCPU_SREG_CS, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %106, i64 %107, i32* %113)
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %116 = load i64, i64* @VCPU_SREG_SS, align 8
  %117 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %118 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @VCPU_SREG_SS, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %115, i64 %116, i32* %122)
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %125 = load i64, i64* @VCPU_SREG_ES, align 8
  %126 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %127 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @VCPU_SREG_ES, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %124, i64 %125, i32* %131)
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = load i64, i64* @VCPU_SREG_DS, align 8
  %135 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %136 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @VCPU_SREG_DS, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %133, i64 %134, i32* %140)
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %143 = load i64, i64* @VCPU_SREG_FS, align 8
  %144 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %145 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @VCPU_SREG_FS, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %142, i64 %143, i32* %149)
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %152 = load i64, i64* @VCPU_SREG_GS, align 8
  %153 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %154 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @VCPU_SREG_GS, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = call i32 @fix_pmode_seg(%struct.kvm_vcpu* %151, i64 %152, i32* %158)
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_get_segment(%struct.kvm_vcpu*, i32*, i64) #1

declare dso_local i32 @vmx_segment_cache_clear(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmx_set_segment(%struct.kvm_vcpu*, i32*, i64) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i32 @update_exception_bitmap(%struct.kvm_vcpu*) #1

declare dso_local i32 @fix_pmode_seg(%struct.kvm_vcpu*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
