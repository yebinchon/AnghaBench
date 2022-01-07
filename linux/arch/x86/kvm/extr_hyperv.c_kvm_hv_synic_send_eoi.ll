; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_synic_send_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_synic_send_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_vcpu_hv_synic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_hv_synic_send_eoi(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu* %7)
  store %struct.kvm_vcpu_hv_synic* %8, %struct.kvm_vcpu_hv_synic** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @trace_kvm_hv_synic_send_eoi(i32 %11, i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic* %22, i32 %23)
  %25 = call i32 @synic_get_sint_vector(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @kvm_hv_notify_acked_sint(%struct.kvm_vcpu* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  ret void
}

declare dso_local %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hv_synic_send_eoi(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @synic_get_sint_vector(i32) #1

declare dso_local i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic*, i32) #1

declare dso_local i32 @kvm_hv_notify_acked_sint(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
