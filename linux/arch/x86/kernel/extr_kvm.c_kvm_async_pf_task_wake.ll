; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_kvm_async_pf_task_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_kvm_async_pf_task_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_task_sleep_head = type { i32, i32 }
%struct.kvm_task_sleep_node = type { i64, i32, i32, i32 }

@KVM_TASK_SLEEP_HASHBITS = common dso_local global i32 0, align 4
@async_pf_sleepers = common dso_local global %struct.kvm_task_sleep_head* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_async_pf_task_wake(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_task_sleep_head*, align 8
  %5 = alloca %struct.kvm_task_sleep_node*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i32, i32* @KVM_TASK_SLEEP_HASHBITS, align 4
  %8 = call i64 @hash_32(i64 %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** @async_pf_sleepers, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %9, i64 %10
  store %struct.kvm_task_sleep_head* %11, %struct.kvm_task_sleep_head** %4, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @apf_task_wake_all()
  br label %58

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %31, %16
  %18 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %18, i32 0, i32 0
  %20 = call i32 @raw_spin_lock(i32* %19)
  %21 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call %struct.kvm_task_sleep_node* @_find_apf_task(%struct.kvm_task_sleep_head* %21, i64 %22)
  store %struct.kvm_task_sleep_node* %23, %struct.kvm_task_sleep_node** %5, align 8
  %24 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %25 = icmp ne %struct.kvm_task_sleep_node* %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.kvm_task_sleep_node* @kzalloc(i32 24, i32 %27)
  store %struct.kvm_task_sleep_node* %28, %struct.kvm_task_sleep_node** %5, align 8
  %29 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %30 = icmp ne %struct.kvm_task_sleep_node* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %32, i32 0, i32 0
  %34 = call i32 @raw_spin_unlock(i32* %33)
  %35 = call i32 (...) @cpu_relax()
  br label %17

36:                                               ; preds = %26
  %37 = load i64, i64* %2, align 8
  %38 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = call i32 (...) @smp_processor_id()
  %41 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %43, i32 0, i32 2
  %45 = call i32 @init_swait_queue_head(i32* %44)
  %46 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %46, i32 0, i32 1
  %48 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %48, i32 0, i32 1
  %50 = call i32 @hlist_add_head(i32* %47, i32* %49)
  br label %54

51:                                               ; preds = %17
  %52 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %5, align 8
  %53 = call i32 @apf_task_wake_one(%struct.kvm_task_sleep_node* %52)
  br label %54

54:                                               ; preds = %51, %36
  %55 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %55, i32 0, i32 0
  %57 = call i32 @raw_spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

declare dso_local i64 @hash_32(i64, i32) #1

declare dso_local i32 @apf_task_wake_all(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local %struct.kvm_task_sleep_node* @_find_apf_task(%struct.kvm_task_sleep_head*, i64) #1

declare dso_local %struct.kvm_task_sleep_node* @kzalloc(i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @init_swait_queue_head(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @apf_task_wake_one(%struct.kvm_task_sleep_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
