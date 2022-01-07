; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { i32, i32, %struct.kvm*, i32, i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvm_ioapic_eoi_inject_work = common dso_local global i32 0, align 4
@ioapic_mmio_ops = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@IOAPIC_MEM_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ioapic_init(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_ioapic*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %7 = call %struct.kvm_ioapic* @kzalloc(i32 24, i32 %6)
  store %struct.kvm_ioapic* %7, %struct.kvm_ioapic** %4, align 8
  %8 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %9 = icmp ne %struct.kvm_ioapic* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %14, i32 0, i32 4
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %17, i32 0, i32 3
  %19 = load i32, i32* @kvm_ioapic_eoi_inject_work, align 4
  %20 = call i32 @INIT_DELAYED_WORK(i32* %18, i32 %19)
  %21 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %22 = load %struct.kvm*, %struct.kvm** %3, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.kvm_ioapic* %21, %struct.kvm_ioapic** %24, align 8
  %25 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %26 = call i32 @kvm_ioapic_reset(%struct.kvm_ioapic* %25)
  %27 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %27, i32 0, i32 0
  %29 = call i32 @kvm_iodevice_init(i32* %28, i32* @ioapic_mmio_ops)
  %30 = load %struct.kvm*, %struct.kvm** %3, align 8
  %31 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %31, i32 0, i32 2
  store %struct.kvm* %30, %struct.kvm** %32, align 8
  %33 = load %struct.kvm*, %struct.kvm** %3, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = load i32, i32* @KVM_MMIO_BUS, align 4
  %38 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IOAPIC_MEM_LENGTH, align 4
  %42 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %42, i32 0, i32 0
  %44 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %36, i32 %37, i32 %40, i32 %41, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.kvm*, %struct.kvm** %3, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %13
  %51 = load %struct.kvm*, %struct.kvm** %3, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.kvm_ioapic* null, %struct.kvm_ioapic** %53, align 8
  %54 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %55 = call i32 @kfree(%struct.kvm_ioapic* %54)
  br label %56

56:                                               ; preds = %50, %13
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.kvm_ioapic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kvm_ioapic_reset(%struct.kvm_ioapic*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
