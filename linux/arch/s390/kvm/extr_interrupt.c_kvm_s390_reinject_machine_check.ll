; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_reinject_machine_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_reinject_machine_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.mcck_volatile_info = type { i32, i32, i32 }
%struct.kvm_s390_interrupt_info = type { i8*, %struct.kvm_s390_mchk_info }
%struct.kvm_s390_mchk_info = type { i32, i32, i32, i32 }
%struct.kvm_s390_irq = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_s390_mchk_info }
%union.mci = type { i64 }

@CR14_RECOVERY_SUBMASK = common dso_local global i32 0, align 4
@CR14_DEGRADATION_SUBMASK = common dso_local global i32 0, align 4
@CR14_WARNING_SUBMASK = common dso_local global i32 0, align 4
@KVM_S390_MCHK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_s390_reinject_machine_check(%struct.kvm_vcpu* %0, %struct.mcck_volatile_info* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.mcck_volatile_info*, align 8
  %5 = alloca %struct.kvm_s390_interrupt_info, align 8
  %6 = alloca %struct.kvm_s390_irq, align 8
  %7 = alloca %struct.kvm_s390_mchk_info*, align 8
  %8 = alloca %union.mci, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.mcck_volatile_info* %1, %struct.mcck_volatile_info** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.mcck_volatile_info*, %struct.mcck_volatile_info** %4, align 8
  %12 = getelementptr inbounds %struct.mcck_volatile_info, %struct.mcck_volatile_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.mci* %8 to i32*
  store i32 %13, i32* %14, align 8
  %15 = bitcast %union.mci* %8 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @CR14_RECOVERY_SUBMASK, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = bitcast %union.mci* %8 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @CR14_DEGRADATION_SUBMASK, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = bitcast %union.mci* %8 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @CR14_WARNING_SUBMASK, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = bitcast %union.mci* %8 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %5, i32 0, i32 1
  br label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %6, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi %struct.kvm_s390_mchk_info* [ %43, %42 ], [ %46, %44 ]
  store %struct.kvm_s390_mchk_info* %48, %struct.kvm_s390_mchk_info** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.kvm_s390_mchk_info*, %struct.kvm_s390_mchk_info** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_s390_mchk_info, %struct.kvm_s390_mchk_info* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mcck_volatile_info*, %struct.mcck_volatile_info** %4, align 8
  %53 = getelementptr inbounds %struct.mcck_volatile_info, %struct.mcck_volatile_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_s390_mchk_info*, %struct.kvm_s390_mchk_info** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_s390_mchk_info, %struct.kvm_s390_mchk_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mcck_volatile_info*, %struct.mcck_volatile_info** %4, align 8
  %58 = getelementptr inbounds %struct.mcck_volatile_info, %struct.mcck_volatile_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kvm_s390_mchk_info*, %struct.kvm_s390_mchk_info** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_s390_mchk_info, %struct.kvm_s390_mchk_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mcck_volatile_info*, %struct.mcck_volatile_info** %4, align 8
  %63 = getelementptr inbounds %struct.mcck_volatile_info, %struct.mcck_volatile_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_s390_mchk_info*, %struct.kvm_s390_mchk_info** %7, align 8
  %66 = getelementptr inbounds %struct.kvm_s390_mchk_info, %struct.kvm_s390_mchk_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = bitcast %union.mci* %8 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %47
  %71 = load i8*, i8** @KVM_S390_MCHK, align 8
  %72 = getelementptr inbounds %struct.kvm_s390_interrupt_info, %struct.kvm_s390_interrupt_info* %5, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__inject_vm(i32 %75, %struct.kvm_s390_interrupt_info* %5)
  store i32 %76, i32* %10, align 4
  br label %82

77:                                               ; preds = %47
  %78 = load i8*, i8** @KVM_S390_MCHK, align 8
  %79 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %6, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = call i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu* %80, %struct.kvm_s390_irq* %6)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @WARN_ON_ONCE(i32 %83)
  ret void
}

declare dso_local i32 @__inject_vm(i32, %struct.kvm_s390_interrupt_info*) #1

declare dso_local i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu*, %struct.kvm_s390_irq*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
