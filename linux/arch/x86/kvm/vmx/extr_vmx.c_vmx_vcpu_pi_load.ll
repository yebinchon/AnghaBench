; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_pi_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_pi_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.pi_desc = type { i64, i64, i32, i64 }

@POSTED_INTR_WAKEUP_VECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @vmx_vcpu_pi_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_vcpu_pi_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pi_desc*, align 8
  %6 = alloca %struct.pi_desc, align 8
  %7 = alloca %struct.pi_desc, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.pi_desc* @vcpu_to_pi_desc(%struct.kvm_vcpu* %9)
  store %struct.pi_desc* %10, %struct.pi_desc** %5, align 8
  %11 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %12 = call i32 @pi_test_sn(%struct.pi_desc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %77

21:                                               ; preds = %14, %2
  %22 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %23 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @POSTED_INTR_WAKEUP_VECTOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %35 = call i32 @pi_clear_sn(%struct.pi_desc* %34)
  br label %69

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %57, %36
  %38 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %39 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %7, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %6, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cpu_physical_id(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = call i64 (...) @x2apic_enabled()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  br label %55

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 8
  %53 = and i32 %52, 65280
  %54 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %7, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %7, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55
  %58 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %59 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @cmpxchg64(i64* %59, i64 %61, i64 %63)
  %65 = getelementptr inbounds %struct.pi_desc, %struct.pi_desc* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %37, label %68

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %33
  %70 = call i32 (...) @smp_mb__after_atomic()
  %71 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %72 = call i32 @pi_is_pir_empty(%struct.pi_desc* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.pi_desc*, %struct.pi_desc** %5, align 8
  %76 = call i32 @pi_set_on(%struct.pi_desc* %75)
  br label %77

77:                                               ; preds = %20, %74, %69
  ret void
}

declare dso_local %struct.pi_desc* @vcpu_to_pi_desc(%struct.kvm_vcpu*) #1

declare dso_local i32 @pi_test_sn(%struct.pi_desc*) #1

declare dso_local i32 @pi_clear_sn(%struct.pi_desc*) #1

declare dso_local i32 @cpu_physical_id(i32) #1

declare dso_local i64 @x2apic_enabled(...) #1

declare dso_local i64 @cmpxchg64(i64*, i64, i64) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @pi_is_pir_empty(%struct.pi_desc*) #1

declare dso_local i32 @pi_set_on(%struct.pi_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
