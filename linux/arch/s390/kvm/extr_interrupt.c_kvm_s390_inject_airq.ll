; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_inject_airq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_inject_airq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_s390_float_interrupt }
%struct.kvm_s390_float_interrupt = type { i32, i32, i32 }
%struct.s390_io_adapter = type { i32, i32, i32 }
%struct.kvm_s390_interrupt = type { i32, i32, i32 }

@KVM_S390_AIS_MODE_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.s390_io_adapter*)* @kvm_s390_inject_airq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_inject_airq(%struct.kvm* %0, %struct.s390_io_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.s390_io_adapter*, align 8
  %6 = alloca %struct.kvm_s390_float_interrupt*, align 8
  %7 = alloca %struct.kvm_s390_interrupt, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.s390_io_adapter* %1, %struct.s390_io_adapter** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.kvm_s390_float_interrupt* %11, %struct.kvm_s390_float_interrupt** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_s390_interrupt, %struct.kvm_s390_interrupt* %7, i32 0, i32 0
  %13 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @isc_to_int_word(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds %struct.kvm_s390_interrupt, %struct.kvm_s390_interrupt* %7, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.kvm_s390_interrupt, %struct.kvm_s390_interrupt* %7, i32 0, i32 2
  %19 = call i32 @KVM_S390_INT_IO(i32 1, i32 0, i32 0, i32 0)
  store i32 %19, i32* %18, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.kvm*, %struct.kvm** %4, align 8
  %21 = call i32 @test_kvm_facility(%struct.kvm* %20, i32 72)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.kvm*, %struct.kvm** %4, align 8
  %30 = call i32 @kvm_s390_inject_vm(%struct.kvm* %29, %struct.kvm_s390_interrupt* %7)
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %23
  %32 = load %struct.kvm_s390_float_interrupt*, %struct.kvm_s390_float_interrupt** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_s390_float_interrupt, %struct.kvm_s390_float_interrupt* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.kvm_s390_float_interrupt*, %struct.kvm_s390_float_interrupt** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_s390_float_interrupt, %struct.kvm_s390_float_interrupt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @AIS_MODE_MASK(i32 %40)
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @trace_kvm_s390_airq_suppressed(i32 %47, i32 %50)
  br label %82

52:                                               ; preds = %31
  %53 = load %struct.kvm*, %struct.kvm** %4, align 8
  %54 = call i32 @kvm_s390_inject_vm(%struct.kvm* %53, %struct.kvm_s390_interrupt* %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %52
  %58 = load %struct.kvm_s390_float_interrupt*, %struct.kvm_s390_float_interrupt** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_s390_float_interrupt, %struct.kvm_s390_float_interrupt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AIS_MODE_MASK(i32 %63)
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @AIS_MODE_MASK(i32 %70)
  %72 = load %struct.kvm_s390_float_interrupt*, %struct.kvm_s390_float_interrupt** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_s390_float_interrupt, %struct.kvm_s390_float_interrupt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @KVM_S390_AIS_MODE_SINGLE, align 4
  %80 = call i32 @trace_kvm_s390_modify_ais_mode(i32 %78, i32 %79, i32 2)
  br label %81

81:                                               ; preds = %67, %57, %52
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.kvm_s390_float_interrupt*, %struct.kvm_s390_float_interrupt** %6, align 8
  %84 = getelementptr inbounds %struct.kvm_s390_float_interrupt, %struct.kvm_s390_float_interrupt* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @isc_to_int_word(i32) #1

declare dso_local i32 @KVM_S390_INT_IO(i32, i32, i32, i32) #1

declare dso_local i32 @test_kvm_facility(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s390_inject_vm(%struct.kvm*, %struct.kvm_s390_interrupt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @AIS_MODE_MASK(i32) #1

declare dso_local i32 @trace_kvm_s390_airq_suppressed(i32, i32) #1

declare dso_local i32 @trace_kvm_s390_modify_ais_mode(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
