; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_handle_abnormal_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_handle_abnormal_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@shadow_mmio_access_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32, i32, i32*)* @handle_abnormal_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_abnormal_pfn(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @is_error_pfn(i32 %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @kvm_handle_bad_page(%struct.kvm_vcpu* %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %13, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %7, align 4
  br label %38

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @is_noslot_pfn(i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @shadow_mmio_access_mask, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @vcpu_cache_mmio_info(%struct.kvm_vcpu* %30, i32 %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_error_pfn(i32) #1

declare dso_local i32 @kvm_handle_bad_page(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @is_noslot_pfn(i32) #1

declare dso_local i32 @vcpu_cache_mmio_info(%struct.kvm_vcpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
