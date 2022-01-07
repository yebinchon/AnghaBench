; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_free_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_free_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vcpu_vmx*, %struct.vcpu_vmx* }

@enable_pml = common dso_local global i64 0, align 8
@x86_fpu_cache = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_free_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_free_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load i64, i64* @enable_pml, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %10 = call i32 @vmx_destroy_pml_buffer(%struct.vcpu_vmx* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @free_vpid(i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i32 @nested_vmx_free_vcpu(%struct.kvm_vcpu* %16)
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free_loaded_vmcs(i32 %20)
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %26)
  %28 = load i32, i32* @x86_fpu_cache, align 4
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %32, align 8
  %34 = call i32 @kmem_cache_free(i32 %28, %struct.vcpu_vmx* %33)
  %35 = load i32, i32* @x86_fpu_cache, align 4
  %36 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %39, align 8
  %41 = call i32 @kmem_cache_free(i32 %35, %struct.vcpu_vmx* %40)
  %42 = load i32, i32* @kvm_vcpu_cache, align 4
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %44 = call i32 @kmem_cache_free(i32 %42, %struct.vcpu_vmx* %43)
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_destroy_pml_buffer(%struct.vcpu_vmx*) #1

declare dso_local i32 @free_vpid(i32) #1

declare dso_local i32 @nested_vmx_free_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_loaded_vmcs(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
