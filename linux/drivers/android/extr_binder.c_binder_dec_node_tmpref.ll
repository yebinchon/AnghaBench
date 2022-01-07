; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_node_tmpref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_node_tmpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i64, i32 }

@binder_dead_nodes_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_node*)* @binder_dec_node_tmpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_dec_node_tmpref(%struct.binder_node* %0) #0 {
  %2 = alloca %struct.binder_node*, align 8
  %3 = alloca i32, align 4
  store %struct.binder_node* %0, %struct.binder_node** %2, align 8
  %4 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %5 = call i32 @binder_node_inner_lock(%struct.binder_node* %4)
  %6 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %7 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @spin_lock(i32* @binder_dead_nodes_lock)
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @__acquire(i32* @binder_dead_nodes_lock)
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %16 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %20 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %26 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %14
  %30 = call i32 @spin_unlock(i32* @binder_dead_nodes_lock)
  br label %33

31:                                               ; preds = %14
  %32 = call i32 @__release(i32* @binder_dead_nodes_lock)
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %35 = call i32 @binder_dec_node_nilocked(%struct.binder_node* %34, i32 0, i32 1)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %37 = call i32 @binder_node_inner_unlock(%struct.binder_node* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.binder_node*, %struct.binder_node** %2, align 8
  %42 = call i32 @binder_free_node(%struct.binder_node* %41)
  br label %43

43:                                               ; preds = %40, %33
  ret void
}

declare dso_local i32 @binder_node_inner_lock(%struct.binder_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__acquire(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__release(i32*) #1

declare dso_local i32 @binder_dec_node_nilocked(%struct.binder_node*, i32, i32) #1

declare dso_local i32 @binder_node_inner_unlock(%struct.binder_node*) #1

declare dso_local i32 @binder_free_node(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
