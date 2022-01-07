; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_free_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_free_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32*, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@KVM_REQ_GET_VMCS12_PAGES = common dso_local global i32 0, align 4
@enable_shadow_vmcs = common dso_local global i64 0, align 8
@KVM_MMU_ROOTS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @free_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_nested(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %116

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @KVM_REQ_GET_VMCS12_PAGES, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call i32 @kvm_clear_request(i32 %20, %struct.kvm_vcpu* %21)
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @free_vpid(i32 %33)
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %39 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i64 -1, i64* %40, align 8
  %41 = load i64, i64* @enable_shadow_vmcs, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %19
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = call i32 @vmx_disable_shadow_vmcs(%struct.vcpu_vmx* %44)
  %46 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %47 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @vmcs_clear(i32* %49)
  %51 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %52 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free_vmcs(i32* %54)
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %57 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %43, %19
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %61 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %66 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 9
  store i32* null, i32** %67, align 8
  %68 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %69 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %74 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 8
  store i32* null, i32** %75, align 8
  %76 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %77 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %59
  %82 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %83 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kvm_release_page_dirty(i32* %85)
  %87 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %88 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %81, %59
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %92 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %93 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  %95 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %91, i32* %94, i32 1)
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %97 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %98 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  %100 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %96, i32* %99, i32 1)
  %101 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %102 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  store i32* null, i32** %103, align 8
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* @KVM_MMU_ROOTS_ALL, align 4
  %109 = call i32 @kvm_mmu_free_roots(%struct.kvm_vcpu* %104, i32* %107, i32 %108)
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %111 = call i32 @nested_release_evmcs(%struct.kvm_vcpu* %110)
  %112 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %113 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = call i32 @free_loaded_vmcs(i32* %114)
  br label %116

116:                                              ; preds = %90, %18
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @free_vpid(i32) #1

declare dso_local i32 @vmx_disable_shadow_vmcs(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmcs_clear(i32*) #1

declare dso_local i32 @free_vmcs(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @kvm_release_page_dirty(i32*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, i32*, i32) #1

declare dso_local i32 @kvm_mmu_free_roots(%struct.kvm_vcpu*, i32*, i32) #1

declare dso_local i32 @nested_release_evmcs(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_loaded_vmcs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
