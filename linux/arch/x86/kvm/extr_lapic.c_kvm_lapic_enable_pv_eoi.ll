; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_enable_pv_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_enable_pv_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.gfn_to_hva_cache }
%struct.gfn_to_hva_cache = type { i64, i64 }

@KVM_MSR_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_lapic_enable_pv_eoi(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gfn_to_hva_cache*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @KVM_MSR_ENABLED, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store %struct.gfn_to_hva_cache* %18, %struct.gfn_to_hva_cache** %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @IS_ALIGNED(i64 %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = call i32 @pv_eoi_enabled(%struct.kvm_vcpu* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %9, align 8
  %36 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %9, align 8
  %42 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ule i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %9, align 8
  %47 = getelementptr inbounds %struct.gfn_to_hva_cache, %struct.gfn_to_hva_cache* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  br label %51

49:                                               ; preds = %39, %33
  %50 = load i64, i64* %7, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.gfn_to_hva_cache*, %struct.gfn_to_hva_cache** %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @kvm_gfn_to_hva_cache_init(i32 %54, %struct.gfn_to_hva_cache* %55, i64 %56, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %32, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @pv_eoi_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_gfn_to_hva_cache_init(i32, %struct.gfn_to_hva_cache*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
