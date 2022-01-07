; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_node_tmpref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_node_tmpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i64 }

@binder_dead_nodes_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_node*)* @binder_inc_node_tmpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_inc_node_tmpref(%struct.binder_node* %0) #0 {
  %2 = alloca %struct.binder_node*, align 8
  store %struct.binder_node* %0, %struct.binder_node** %2, align 8
  %3 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %4 = call i32 @binder_node_lock(%struct.binder_node* %3)
  %5 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %6 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %11 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @binder_inner_proc_lock(i64 %12)
  br label %16

14:                                               ; preds = %1
  %15 = call i32 @spin_lock(i32* @binder_dead_nodes_lock)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %18 = call i32 @binder_inc_node_tmpref_ilocked(%struct.binder_node* %17)
  %19 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %20 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %25 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @binder_inner_proc_unlock(i64 %26)
  br label %30

28:                                               ; preds = %16
  %29 = call i32 @spin_unlock(i32* @binder_dead_nodes_lock)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %32 = call i32 @binder_node_unlock(%struct.binder_node* %31)
  ret void
}

declare dso_local i32 @binder_node_lock(%struct.binder_node*) #1

declare dso_local i32 @binder_inner_proc_lock(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @binder_inc_node_tmpref_ilocked(%struct.binder_node*) #1

declare dso_local i32 @binder_inner_proc_unlock(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @binder_node_unlock(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
