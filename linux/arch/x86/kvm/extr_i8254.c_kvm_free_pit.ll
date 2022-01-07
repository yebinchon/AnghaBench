; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_free_pit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_free_pit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_pit* }
%struct.kvm_pit = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@KVM_PIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_free_pit(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_pit*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  store %struct.kvm_pit* %7, %struct.kvm_pit** %3, align 8
  %8 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %9 = icmp ne %struct.kvm_pit* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.kvm*, %struct.kvm** %2, align 8
  %15 = load i32, i32* @KVM_PIO_BUS, align 4
  %16 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %16, i32 0, i32 4
  %18 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %14, i32 %15, i32* %17)
  %19 = load %struct.kvm*, %struct.kvm** %2, align 8
  %20 = load i32, i32* @KVM_PIO_BUS, align 4
  %21 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %21, i32 0, i32 3
  %23 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %19, i32 %20, i32* %22)
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %28 = call i32 @kvm_pit_set_reinject(%struct.kvm_pit* %27, i32 0)
  %29 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @hrtimer_cancel(i32* %31)
  %33 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kthread_destroy_worker(i32 %35)
  %37 = load %struct.kvm*, %struct.kvm** %2, align 8
  %38 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvm_free_irq_source_id(%struct.kvm* %37, i32 %40)
  %42 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %43 = call i32 @kfree(%struct.kvm_pit* %42)
  br label %44

44:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_unregister_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_pit_set_reinject(%struct.kvm_pit*, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kthread_destroy_worker(i32) #1

declare dso_local i32 @kvm_free_irq_source_id(%struct.kvm*, i32) #1

declare dso_local i32 @kfree(%struct.kvm_pit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
