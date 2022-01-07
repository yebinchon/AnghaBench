; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_set_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_set_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, %struct.msr_data*)* }
%struct.kvm_vcpu = type { i32 }
%struct.msr_data = type { i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32)* @__kvm_set_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_set_msr(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msr_data, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %24 [
    i32 133, label %12
    i32 132, label %12
    i32 129, label %12
    i32 134, label %12
    i32 128, label %12
    i32 131, label %19
    i32 130, label %19
  ]

12:                                               ; preds = %4, %4, %4, %4, %4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %15 = call i32 @is_noncanonical_address(i32 %13, %struct.kvm_vcpu* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %36

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %4, %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %22 = call i32 @vcpu_virt_addr_bits(%struct.kvm_vcpu* %21)
  %23 = call i32 @get_canonical(i32 %20, i32 %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %4, %18
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %10, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.kvm_vcpu*, %struct.msr_data*)*, i32 (%struct.kvm_vcpu*, %struct.msr_data*)** %32, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = call i32 %33(%struct.kvm_vcpu* %34, %struct.msr_data* %10)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %24, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @is_noncanonical_address(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @get_canonical(i32, i32) #1

declare dso_local i32 @vcpu_virt_addr_bits(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
