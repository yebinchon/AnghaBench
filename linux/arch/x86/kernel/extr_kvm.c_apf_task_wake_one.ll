; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_apf_task_wake_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kvm.c_apf_task_wake_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_task_sleep_node = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_task_sleep_node*)* @apf_task_wake_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apf_task_wake_one(%struct.kvm_task_sleep_node* %0) #0 {
  %2 = alloca %struct.kvm_task_sleep_node*, align 8
  store %struct.kvm_task_sleep_node* %0, %struct.kvm_task_sleep_node** %2, align 8
  %3 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %3, i32 0, i32 3
  %5 = call i32 @hlist_del_init(i32* %4)
  %6 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @smp_send_reschedule(i32 %13)
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %16, i32 0, i32 0
  %18 = call i64 @swq_has_sleeper(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.kvm_task_sleep_node*, %struct.kvm_task_sleep_node** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_task_sleep_node, %struct.kvm_task_sleep_node* %21, i32 0, i32 0
  %23 = call i32 @swake_up_one(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @smp_send_reschedule(i32) #1

declare dso_local i64 @swq_has_sleeper(i32*) #1

declare dso_local i32 @swake_up_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
