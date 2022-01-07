; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_check_extension.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_check_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm = type { i32 }

@hpage = common dso_local global i32 0, align 4
@MEM_OP_MAX_SIZE = common dso_local global i32 0, align 4
@KVM_S390_BSCA_CPU_SLOTS = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KVM_S390_ESCA_CPU_SLOTS = common dso_local global i32 0, align 4
@MACHINE_HAS_ESOP = common dso_local global i32 0, align 4
@MACHINE_HAS_VX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_check_extension(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  switch i64 %6, label %45 [
    i64 138, label %7
    i64 145, label %7
    i64 130, label %7
    i64 161, label %7
    i64 129, label %7
    i64 152, label %7
    i64 159, label %7
    i64 146, label %7
    i64 157, label %7
    i64 160, label %7
    i64 141, label %7
    i64 128, label %7
    i64 154, label %7
    i64 158, label %7
    i64 142, label %7
    i64 133, label %7
    i64 132, label %7
    i64 136, label %7
    i64 140, label %7
    i64 134, label %7
    i64 148, label %7
    i64 151, label %7
    i64 150, label %7
    i64 143, label %8
    i64 139, label %17
    i64 153, label %19
    i64 156, label %19
    i64 155, label %19
    i64 147, label %35
    i64 131, label %37
    i64 137, label %39
    i64 144, label %41
    i64 149, label %43
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %5, align 4
  br label %46

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @hpage, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = call i32 @kvm_is_ucontrol(%struct.kvm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %11, %8
  br label %46

17:                                               ; preds = %2
  %18 = load i32, i32* @MEM_OP_MAX_SIZE, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %2, %2, %2
  %20 = load i32, i32* @KVM_S390_BSCA_CPU_SLOTS, align 4
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @kvm_s390_use_sca_entries()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @KVM_MAX_VCPUS, align 4
  store i32 %24, i32* %5, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp, i32 0, i32 1), align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @KVM_S390_ESCA_CPU_SLOTS, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %28, %25
  br label %34

34:                                               ; preds = %33, %23
  br label %46

35:                                               ; preds = %2
  %36 = load i32, i32* @MACHINE_HAS_ESOP, align 4
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load i32, i32* @MACHINE_HAS_VX, align 4
  store i32 %38, i32* %5, align 4
  br label %46

39:                                               ; preds = %2
  %40 = call i32 @test_facility(i32 64)
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %2
  %42 = call i32 @test_facility(i32 133)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %2
  %44 = call i32 @test_facility(i32 82)
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %43, %41, %39, %37, %35, %34, %17, %16, %7
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @kvm_is_ucontrol(%struct.kvm*) #1

declare dso_local i32 @kvm_s390_use_sca_entries(...) #1

declare dso_local i32 @test_facility(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
