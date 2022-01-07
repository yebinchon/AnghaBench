; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.kvm_s390_local_interrupt }
%struct.kvm_s390_local_interrupt = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@KVM_S390_STOP_FLAG_STORE_STATUS = common dso_local global i32 0, align 4
@KVM_S390_STORE_STATUS_NOADDR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stop(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_s390_local_interrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.kvm_s390_local_interrupt* %10, %struct.kvm_s390_local_interrupt** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i64 @kvm_s390_vcpu_has_irq(%struct.kvm_vcpu* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

20:                                               ; preds = %1
  %21 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @kvm_s390_is_stop_irq_pending(%struct.kvm_vcpu* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.kvm_s390_local_interrupt*, %struct.kvm_s390_local_interrupt** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_s390_local_interrupt, %struct.kvm_s390_local_interrupt* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @trace_kvm_s390_stop_request(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %66

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @KVM_S390_STOP_FLAG_STORE_STATUS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load i32, i32* @KVM_S390_STORE_STATUS_NOADDR, align 4
  %48 = call i32 @kvm_s390_vcpu_store_status(%struct.kvm_vcpu* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kvm_s390_user_cpu_state_ctrl(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = call i32 @kvm_s390_vcpu_stop(%struct.kvm_vcpu* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %51, %39, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @kvm_s390_vcpu_has_irq(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_s390_is_stop_irq_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_kvm_s390_stop_request(i32, i32) #1

declare dso_local i32 @kvm_s390_vcpu_store_status(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_user_cpu_state_ctrl(i32) #1

declare dso_local i32 @kvm_s390_vcpu_stop(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
