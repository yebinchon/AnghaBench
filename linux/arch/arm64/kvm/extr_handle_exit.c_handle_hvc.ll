; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_handle_hvc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_handle_hvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_run = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_run*)* @handle_hvc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hvc(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call i32* @vcpu_pc(%struct.kvm_vcpu* %7)
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @vcpu_get_reg(%struct.kvm_vcpu* %10, i32 0)
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i32 @kvm_vcpu_hvc_get_imm(%struct.kvm_vcpu* %12)
  %14 = call i32 @trace_kvm_hvc_arm64(i32 %9, i32 %11, i32 %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = call i32 @kvm_hvc_call_handler(%struct.kvm_vcpu* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %25, i32 0, i64 -1)
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @trace_kvm_hvc_arm64(i32, i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_get_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_hvc_get_imm(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_hvc_call_handler(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
