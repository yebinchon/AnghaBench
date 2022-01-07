; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_expiration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_stimer*)* @stimer_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stimer_expiration(%struct.kvm_vcpu_hv_stimer* %0) #0 {
  %2 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %5 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %15 = call i32 @stimer_send_msg(%struct.kvm_vcpu_hv_stimer* %14)
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %18 = call i32 @stimer_notify_direct(%struct.kvm_vcpu_hv_stimer* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %21 = call %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @trace_kvm_hv_stimer_expiration(i32 %23, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %19
  %33 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %32
  br label %45

45:                                               ; preds = %44, %19
  ret void
}

declare dso_local i32 @stimer_send_msg(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_notify_direct(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @trace_kvm_hv_stimer_expiration(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
