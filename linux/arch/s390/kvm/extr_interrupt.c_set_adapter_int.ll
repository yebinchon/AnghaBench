; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_set_adapter_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_set_adapter_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.s390_io_adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_kernel_irq_routing_entry*, %struct.kvm*, i32, i32, i32)* @set_adapter_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_adapter_int(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.s390_io_adapter*, align 8
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  store %struct.kvm* %1, %struct.kvm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

17:                                               ; preds = %5
  %18 = load %struct.kvm*, %struct.kvm** %8, align 8
  %19 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.s390_io_adapter* @get_io_adapter(%struct.kvm* %18, i32 %22)
  store %struct.s390_io_adapter* %23, %struct.s390_io_adapter** %13, align 8
  %24 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %25 = icmp ne %struct.s390_io_adapter* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %29 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %28, i32 0, i32 1
  %30 = call i32 @down_read(i32* %29)
  %31 = load %struct.kvm*, %struct.kvm** %8, align 8
  %32 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %33 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %33, i32 0, i32 0
  %35 = call i32 @adapter_indicators_set(%struct.kvm* %31, %struct.s390_io_adapter* %32, %struct.TYPE_2__* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %37 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %36, i32 0, i32 1
  %38 = call i32 @up_read(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %27
  %42 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %43 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.kvm*, %struct.kvm** %8, align 8
  %48 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %13, align 8
  %49 = call i32 @kvm_s390_inject_airq(%struct.kvm* %47, %struct.s390_io_adapter* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %41, %27
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %26, %16
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.s390_io_adapter* @get_io_adapter(%struct.kvm*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @adapter_indicators_set(%struct.kvm*, %struct.s390_io_adapter*, %struct.TYPE_2__*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kvm_s390_inject_airq(%struct.kvm*, %struct.s390_io_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
