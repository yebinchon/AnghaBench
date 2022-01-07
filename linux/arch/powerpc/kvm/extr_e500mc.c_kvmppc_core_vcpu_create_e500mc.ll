; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_create_e500mc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_create_e500mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.kvm = type { i32 }
%struct.kvmppc_vcpu_e500 = type { %struct.kvm_vcpu }

@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvm*, i32)* @kvmppc_core_vcpu_create_e500mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @kvmppc_core_vcpu_create_e500mc(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @kvm_vcpu_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kvmppc_vcpu_e500* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.kvmppc_vcpu_e500* %11, %struct.kvmppc_vcpu_e500** %6, align 8
  %12 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %13 = icmp ne %struct.kvmppc_vcpu_e500* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %18, i32 0, i32 0
  store %struct.kvm_vcpu* %19, %struct.kvm_vcpu** %7, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %23, %struct.kvm* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %61

30:                                               ; preds = %17
  %31 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %32 = call i32 @kvmppc_e500_tlb_init(%struct.kvmppc_vcpu_e500* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %58

36:                                               ; preds = %30
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @__GFP_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @__get_free_page(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %55

53:                                               ; preds = %36
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_vcpu* %54, %struct.kvm_vcpu** %3, align 8
  br label %68

55:                                               ; preds = %50
  %56 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %57 = call i32 @kvmppc_e500_tlb_uninit(%struct.kvmppc_vcpu_e500* %56)
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %60 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load i32, i32* @kvm_vcpu_cache, align 4
  %63 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %64 = call i32 @kmem_cache_free(i32 %62, %struct.kvmppc_vcpu_e500* %63)
  br label %65

65:                                               ; preds = %61, %14
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.kvm_vcpu* @ERR_PTR(i32 %66)
  store %struct.kvm_vcpu* %67, %struct.kvm_vcpu** %3, align 8
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %69
}

declare dso_local %struct.kvmppc_vcpu_e500* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @kvmppc_e500_tlb_init(%struct.kvmppc_vcpu_e500*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kvmppc_e500_tlb_uninit(%struct.kvmppc_vcpu_e500*) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvmppc_vcpu_e500*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
