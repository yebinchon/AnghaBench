; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_accept_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_accept_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.kvm_lapic* }
%struct.kvm_lapic = type { i64, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_MP_STATE_INIT_RECEIVED = common dso_local global i64 0, align 8
@KVM_APIC_SIPI = common dso_local global i32 0, align 4
@KVM_APIC_INIT = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_apic_accept_events(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  store %struct.kvm_lapic* %9, %struct.kvm_lapic** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %101

19:                                               ; preds = %13
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = call i64 @is_smm(%struct.kvm_vcpu* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %25, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = call i64 %26(%struct.kvm_vcpu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %23, %19
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  %39 = load i32, i32* @KVM_APIC_SIPI, align 4
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load i32, i32* @KVM_APIC_SIPI, align 4
  %46 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i64* %47)
  br label %49

49:                                               ; preds = %44, %30
  br label %101

50:                                               ; preds = %23
  %51 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %51, i32 0, i32 0
  %53 = call i64 @xchg(i64* %52, i32 0)
  store i64 %53, i64* %5, align 8
  %54 = load i32, i32* @KVM_APIC_INIT, align 4
  %55 = call i64 @test_bit(i32 %54, i64* %5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = call i32 @kvm_vcpu_reset(%struct.kvm_vcpu* %58, i32 1)
  %60 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @kvm_vcpu_is_bsp(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i8*, i8** @KVM_MP_STATE_RUNNABLE, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %76

71:                                               ; preds = %57
  %72 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i32, i32* @KVM_APIC_SIPI, align 4
  %79 = call i64 @test_bit(i32 %78, i64* %5)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @KVM_MP_STATE_INIT_RECEIVED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = call i32 (...) @smp_rmb()
  %90 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %4, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @kvm_vcpu_deliver_sipi_vector(%struct.kvm_vcpu* %93, i32 %94)
  %96 = load i8*, i8** @KVM_MP_STATE_RUNNABLE, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %18, %49, %88, %81, %77
  ret void
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i64 @xchg(i64*, i32) #1

declare dso_local i32 @kvm_vcpu_reset(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_is_bsp(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @kvm_vcpu_deliver_sipi_vector(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
