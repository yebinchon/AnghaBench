; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*)* }
%struct.kvm = type { i32 }
%struct.kvm_dirty_log = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_dirty_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %11, align 8
  %13 = icmp ne i32 (%struct.kvm*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %16, align 8
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = call i32 %17(%struct.kvm* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.kvm*, %struct.kvm** %3, align 8
  %22 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %23 = call i32 @kvm_get_dirty_log_protect(%struct.kvm* %21, %struct.kvm_dirty_log* %22, i32* %5)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.kvm*, %struct.kvm** %3, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = call i32 @lockdep_assert_held(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.kvm*, %struct.kvm** %3, align 8
  %31 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.kvm*, %struct.kvm** %3, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_get_dirty_log_protect(%struct.kvm*, %struct.kvm_dirty_log*, i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @kvm_flush_remote_tlbs(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
