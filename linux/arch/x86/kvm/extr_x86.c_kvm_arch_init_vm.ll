; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_init_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm*)* }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_USERSPACE_IRQ_SOURCE_ID = common dso_local global i32 0, align 4
@KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID = common dso_local global i32 0, align 4
@kvmclock_update_fn = common dso_local global i32 0, align 4
@kvmclock_sync_fn = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_init_vm(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %89

11:                                               ; preds = %2
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 13
  %15 = call i32 @INIT_HLIST_HEAD(i32* %14)
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 12
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.kvm*, %struct.kvm** %4, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 11
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.kvm*, %struct.kvm** %4, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 9
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 8
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load i32, i32* @KVM_USERSPACE_IRQ_SOURCE_ID, align 4
  %37 = load %struct.kvm*, %struct.kvm** %4, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  %40 = call i32 @set_bit(i32 %36, i32* %39)
  %41 = load i32, i32* @KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID, align 4
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  %45 = call i32 @set_bit(i32 %41, i32* %44)
  %46 = load %struct.kvm*, %struct.kvm** %4, align 8
  %47 = getelementptr inbounds %struct.kvm, %struct.kvm* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = call i32 @raw_spin_lock_init(i32* %48)
  %50 = load %struct.kvm*, %struct.kvm** %4, align 8
  %51 = getelementptr inbounds %struct.kvm, %struct.kvm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.kvm*, %struct.kvm** %4, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = call i32 (...) @ktime_get_boottime_ns()
  %59 = sub nsw i32 0, %58
  %60 = load %struct.kvm*, %struct.kvm** %4, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.kvm*, %struct.kvm** %4, align 8
  %64 = call i32 @pvclock_update_vm_gtod_copy(%struct.kvm* %63)
  %65 = load %struct.kvm*, %struct.kvm** %4, align 8
  %66 = getelementptr inbounds %struct.kvm, %struct.kvm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.kvm*, %struct.kvm** %4, align 8
  %69 = getelementptr inbounds %struct.kvm, %struct.kvm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* @kvmclock_update_fn, align 4
  %72 = call i32 @INIT_DELAYED_WORK(i32* %70, i32 %71)
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* @kvmclock_sync_fn, align 4
  %77 = call i32 @INIT_DELAYED_WORK(i32* %75, i32 %76)
  %78 = load %struct.kvm*, %struct.kvm** %4, align 8
  %79 = call i32 @kvm_hv_init_vm(%struct.kvm* %78)
  %80 = load %struct.kvm*, %struct.kvm** %4, align 8
  %81 = call i32 @kvm_page_track_init(%struct.kvm* %80)
  %82 = load %struct.kvm*, %struct.kvm** %4, align 8
  %83 = call i32 @kvm_mmu_init_vm(%struct.kvm* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %85, align 8
  %87 = load %struct.kvm*, %struct.kvm** %4, align 8
  %88 = call i32 %86(%struct.kvm* %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %11, %8
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @pvclock_update_vm_gtod_copy(%struct.kvm*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kvm_hv_init_vm(%struct.kvm*) #1

declare dso_local i32 @kvm_page_track_init(%struct.kvm*) #1

declare dso_local i32 @kvm_mmu_init_vm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
