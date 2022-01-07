; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_kvm_async_pf_task_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_kvm_async_pf_task_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_task_sleep_head = type { i32, i32 }
%struct.kvm_task_sleep_node = type { i64, i32, i32, i32, i32 }

@KVM_TASK_SLEEP_HASHBITS = common dso_local global i32 0, align 4
@async_pf_sleepers = common dso_local global %struct.kvm_task_sleep_head* null, align 8
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CONFIG_PREEMPT_COUNT = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_async_pf_task_wait(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_task_sleep_head*, align 8
  %7 = alloca %struct.kvm_task_sleep_node, align 8
  %8 = alloca %struct.kvm_task_sleep_node*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @KVM_TASK_SLEEP_HASHBITS, align 4
  %11 = call i64 @hash_32(i64 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** @async_pf_sleepers, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %12, i64 %13
  store %struct.kvm_task_sleep_head* %14, %struct.kvm_task_sleep_head** %6, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = call i32 @DECLARE_SWAITQUEUE(i32 %15)
  %17 = call i32 (...) @rcu_irq_enter()
  %18 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %18, i32 0, i32 0
  %20 = call i32 @raw_spin_lock(i32* %19)
  %21 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.kvm_task_sleep_node* @_find_apf_task(%struct.kvm_task_sleep_head* %21, i64 %22)
  store %struct.kvm_task_sleep_node* %23, %struct.kvm_task_sleep_node** %8, align 8
  %24 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %8, align 8
  %25 = icmp ne %struct.kvm_task_sleep_node* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %8, align 8
  %28 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %27, i32 0, i32 3
  %29 = call i32 @hlist_del(i32* %28)
  %30 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %8, align 8
  %31 = call i32 @kfree(%struct.kvm_task_sleep_node* %30)
  %32 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %32, i32 0, i32 0
  %34 = call i32 @raw_spin_unlock(i32* %33)
  %35 = call i32 (...) @rcu_irq_exit()
  br label %111

36:                                               ; preds = %2
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = call i32 (...) @smp_processor_id()
  %40 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @current, align 4
  %42 = call i64 @is_idle_task(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @CONFIG_PREEMPT_COUNT, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = call i32 (...) @preempt_count()
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i64 (...) @rcu_preempt_depth()
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  br label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %56, %54 ], [ %58, %57 ]
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %59, %36
  %63 = phi i1 [ true, %36 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 2
  %67 = call i32 @init_swait_queue_head(i32* %66)
  %68 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 3
  %69 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %69, i32 0, i32 1
  %71 = call i32 @hlist_add_head(i32* %68, i32* %70)
  %72 = load %struct.kvm_task_sleep_head*, %struct.kvm_task_sleep_head** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_task_sleep_head, %struct.kvm_task_sleep_head* %72, i32 0, i32 0
  %74 = call i32 @raw_spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %100, %62
  %76 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 2
  %81 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %82 = call i32 @prepare_to_swait_exclusive(i32* %80, i32* @wait, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 3
  %85 = call i64 @hlist_unhashed(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %102

88:                                               ; preds = %83
  %89 = call i32 (...) @rcu_irq_exit()
  %90 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = call i32 (...) @local_irq_enable()
  %95 = call i32 (...) @schedule()
  %96 = call i32 (...) @local_irq_disable()
  br label %100

97:                                               ; preds = %88
  %98 = call i32 (...) @native_safe_halt()
  %99 = call i32 (...) @local_irq_disable()
  br label %100

100:                                              ; preds = %97, %93
  %101 = call i32 (...) @rcu_irq_enter()
  br label %75

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %7, i32 0, i32 2
  %108 = call i32 @finish_swait(i32* %107, i32* @wait)
  br label %109

109:                                              ; preds = %106, %102
  %110 = call i32 (...) @rcu_irq_exit()
  br label %111

111:                                              ; preds = %109, %26
  ret void
}

declare dso_local i64 @hash_32(i64, i32) #1

declare dso_local i32 @DECLARE_SWAITQUEUE(i32) #1

declare dso_local i32 @rcu_irq_enter(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local %struct.kvm_task_sleep_node* @_find_apf_task(%struct.kvm_task_sleep_head*, i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_task_sleep_node*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rcu_irq_exit(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @is_idle_task(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i64 @rcu_preempt_depth(...) #1

declare dso_local i32 @init_swait_queue_head(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @prepare_to_swait_exclusive(i32*, i32*, i32) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @native_safe_halt(...) #1

declare dso_local i32 @finish_swait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
