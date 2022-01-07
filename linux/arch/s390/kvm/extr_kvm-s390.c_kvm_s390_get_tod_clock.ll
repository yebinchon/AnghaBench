; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_get_tod_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_get_tod_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.kvm_s390_vm_tod_clock = type { i64, i64 }
%struct.kvm_s390_tod_clock_ext = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_s390_vm_tod_clock*)* @kvm_s390_get_tod_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_s390_get_tod_clock(%struct.kvm* %0, %struct.kvm_s390_vm_tod_clock* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_s390_vm_tod_clock*, align 8
  %5 = alloca %struct.kvm_s390_tod_clock_ext, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_s390_vm_tod_clock* %1, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = bitcast %struct.kvm_s390_tod_clock_ext* %5 to i8*
  %8 = call i32 @get_tod_clock_ext(i8* %7)
  %9 = getelementptr inbounds %struct.kvm_s390_tod_clock_ext, %struct.kvm_s390_tod_clock_ext* %5, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %10, %14
  %16 = load %struct.kvm_s390_vm_tod_clock*, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_s390_vm_tod_clock, %struct.kvm_s390_vm_tod_clock* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.kvm_s390_vm_tod_clock*, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_s390_vm_tod_clock, %struct.kvm_s390_vm_tod_clock* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = call i64 @test_kvm_facility(%struct.kvm* %20, i32 139)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.kvm_s390_tod_clock_ext, %struct.kvm_s390_tod_clock_ext* %5, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = load %struct.kvm_s390_vm_tod_clock*, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_s390_vm_tod_clock, %struct.kvm_s390_vm_tod_clock* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.kvm_s390_vm_tod_clock*, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_vm_tod_clock, %struct.kvm_s390_vm_tod_clock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.kvm_s390_tod_clock_ext, %struct.kvm_s390_tod_clock_ext* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.kvm_s390_vm_tod_clock*, %struct.kvm_s390_vm_tod_clock** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_s390_vm_tod_clock, %struct.kvm_s390_vm_tod_clock* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39, %23
  br label %45

45:                                               ; preds = %44, %2
  %46 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @get_tod_clock_ext(i8*) #1

declare dso_local i64 @test_kvm_facility(%struct.kvm*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
