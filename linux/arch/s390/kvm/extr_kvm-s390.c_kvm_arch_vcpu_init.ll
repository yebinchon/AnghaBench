; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@KVM_S390_PFAULT_TOKEN_INVALID = common dso_local global i32 0, align 4
@KVM_SYNC_PREFIX = common dso_local global i32 0, align 4
@KVM_SYNC_GPRS = common dso_local global i32 0, align 4
@KVM_SYNC_ACRS = common dso_local global i32 0, align 4
@KVM_SYNC_CRS = common dso_local global i32 0, align 4
@KVM_SYNC_ARCH0 = common dso_local global i32 0, align 4
@KVM_SYNC_PFAULT = common dso_local global i32 0, align 4
@KVM_SYNC_RICCB = common dso_local global i32 0, align 4
@KVM_SYNC_BPBC = common dso_local global i32 0, align 4
@KVM_SYNC_GSCB = common dso_local global i32 0, align 4
@KVM_SYNC_ETOKEN = common dso_local global i32 0, align 4
@MACHINE_HAS_VX = common dso_local global i64 0, align 8
@KVM_SYNC_VRS = common dso_local global i32 0, align 4
@KVM_SYNC_FPRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = load i32, i32* @KVM_S390_PFAULT_TOKEN_INVALID, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu* %8)
  %10 = load i32, i32* @KVM_SYNC_PREFIX, align 4
  %11 = load i32, i32* @KVM_SYNC_GPRS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @KVM_SYNC_ACRS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @KVM_SYNC_CRS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @KVM_SYNC_ARCH0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @KVM_SYNC_PFAULT, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @kvm_s390_set_prefix(%struct.kvm_vcpu* %25, i32 0)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @test_kvm_facility(i32 %29, i32 64)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load i32, i32* @KVM_SYNC_RICCB, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @test_kvm_facility(i32 %43, i32 82)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @KVM_SYNC_BPBC, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @test_kvm_facility(i32 %57, i32 133)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @KVM_SYNC_GSCB, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %54
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @test_kvm_facility(i32 %71, i32 156)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i32, i32* @KVM_SYNC_ETOKEN, align 4
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i64, i64* @MACHINE_HAS_VX, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @KVM_SYNC_VRS, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  br label %101

93:                                               ; preds = %82
  %94 = load i32, i32* @KVM_SYNC_FPRS, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @kvm_is_ucontrol(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = call i32 @__kvm_ucontrol_vcpu_init(%struct.kvm_vcpu* %108)
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_set_prefix(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i64 @kvm_is_ucontrol(i32) #1

declare dso_local i32 @__kvm_ucontrol_vcpu_init(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
