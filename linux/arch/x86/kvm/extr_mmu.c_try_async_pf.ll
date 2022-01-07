; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_try_async_pf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_try_async_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@KVM_PFN_NOSLOT = common dso_local global i32 0, align 4
@KVM_REQ_APF_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32, i32*, i32, i32*)* @try_async_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_async_pf(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.kvm_memory_slot*, align 8
  %17 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %19 = call i64 @is_guest_mode(%struct.kvm_vcpu* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %7
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @kvm_is_visible_gfn(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @KVM_PFN_NOSLOT, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %8, align 4
  br label %82

31:                                               ; preds = %21, %7
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu* %32, i32 %33)
  store %struct.kvm_memory_slot* %34, %struct.kvm_memory_slot** %16, align 8
  store i32 0, i32* %17, align 4
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot* %35, i32 %36, i32 0, i32* %17, i32 %37, i32* %38)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %82

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %49 = call i64 @kvm_can_do_async_pf(%struct.kvm_vcpu* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @trace_kvm_try_async_get_page(i32 %52, i32 %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @kvm_find_async_pf_gfn(%struct.kvm_vcpu* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @trace_kvm_async_pf_doublefault(i32 %60, i32 %61)
  %63 = load i32, i32* @KVM_REQ_APF_HALT, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %65 = call i32 @kvm_make_request(i32 %63, %struct.kvm_vcpu* %64)
  store i32 1, i32* %8, align 4
  br label %82

66:                                               ; preds = %51
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @kvm_arch_setup_async_pf(%struct.kvm_vcpu* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %82

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %47, %44
  %76 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot* %76, i32 %77, i32 0, i32* null, i32 %78, i32* %79)
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %75, %72, %59, %43, %28
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_is_visible_gfn(i32, i32) #1

declare dso_local %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__gfn_to_pfn_memslot(%struct.kvm_memory_slot*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @kvm_can_do_async_pf(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_try_async_get_page(i32, i32) #1

declare dso_local i64 @kvm_find_async_pf_gfn(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_async_pf_doublefault(i32, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_arch_setup_async_pf(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
