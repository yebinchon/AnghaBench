; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_store_local_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_store_local_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_s390_local_interrupt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvm_s390_irq = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@KVM_S390_MCHK = common dso_local global i32 0, align 4
@KVM_S390_PROGRAM_INT = common dso_local global i32 0, align 4
@KVM_S390_INT_PFAULT_INIT = common dso_local global i32 0, align 4
@KVM_S390_INT_EXTERNAL_CALL = common dso_local global i32 0, align 4
@KVM_S390_INT_CLOCK_COMP = common dso_local global i32 0, align 4
@KVM_S390_INT_CPU_TIMER = common dso_local global i32 0, align 4
@KVM_S390_SIGP_STOP = common dso_local global i32 0, align 4
@KVM_S390_RESTART = common dso_local global i32 0, align 4
@KVM_S390_SIGP_SET_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_s390_local_interrupt*, %struct.kvm_s390_irq*, i64)* @store_local_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_local_irq(%struct.kvm_s390_local_interrupt* %0, %struct.kvm_s390_irq* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_s390_local_interrupt*, align 8
  %5 = alloca %struct.kvm_s390_irq*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_s390_local_interrupt* %0, %struct.kvm_s390_local_interrupt** %4, align 8
  store %struct.kvm_s390_irq* %1, %struct.kvm_s390_irq** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  switch i64 %7, label %86 [
    i64 134, label %8
    i64 133, label %8
    i64 131, label %19
    i64 132, label %30
    i64 135, label %41
    i64 137, label %52
    i64 136, label %56
    i64 128, label %60
    i64 130, label %71
    i64 129, label %75
  ]

8:                                                ; preds = %3, %3
  %9 = load i32, i32* @KVM_S390_MCHK, align 4
  %10 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load i32, i32* @KVM_S390_PROGRAM_INT, align 4
  %21 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  br label %86

30:                                               ; preds = %3
  %31 = load i32, i32* @KVM_S390_INT_PFAULT_INIT, align 4
  %32 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  br label %86

41:                                               ; preds = %3
  %42 = load i32, i32* @KVM_S390_INT_EXTERNAL_CALL, align 4
  %43 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %86

52:                                               ; preds = %3
  %53 = load i32, i32* @KVM_S390_INT_CLOCK_COMP, align 4
  %54 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %86

56:                                               ; preds = %3
  %57 = load i32, i32* @KVM_S390_INT_CPU_TIMER, align 4
  %58 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %86

60:                                               ; preds = %3
  %61 = load i32, i32* @KVM_S390_SIGP_STOP, align 4
  %62 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %86

71:                                               ; preds = %3
  %72 = load i32, i32* @KVM_S390_RESTART, align 4
  %73 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %86

75:                                               ; preds = %3
  %76 = load i32, i32* @KVM_S390_SIGP_SET_PREFIX, align 4
  %77 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %78 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kvm_s390_irq*, %struct.kvm_s390_irq** %5, align 8
  %84 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %3, %75, %71, %60, %56, %52, %41, %30, %19, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
