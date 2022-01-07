; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_new_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i32 }
%struct.binder_proc = type { i32 }
%struct.flat_binder_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.binder_node* (%struct.binder_proc*, %struct.flat_binder_object*)* @binder_new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.binder_node* @binder_new_node(%struct.binder_proc* %0, %struct.flat_binder_object* %1) #0 {
  %3 = alloca %struct.binder_node*, align 8
  %4 = alloca %struct.binder_proc*, align 8
  %5 = alloca %struct.flat_binder_object*, align 8
  %6 = alloca %struct.binder_node*, align 8
  %7 = alloca %struct.binder_node*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %4, align 8
  store %struct.flat_binder_object* %1, %struct.flat_binder_object** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.binder_node* @kzalloc(i32 4, i32 %8)
  store %struct.binder_node* %9, %struct.binder_node** %7, align 8
  %10 = load %struct.binder_node*, %struct.binder_node** %7, align 8
  %11 = icmp ne %struct.binder_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.binder_node* null, %struct.binder_node** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %15 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %14)
  %16 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %17 = load %struct.binder_node*, %struct.binder_node** %7, align 8
  %18 = load %struct.flat_binder_object*, %struct.flat_binder_object** %5, align 8
  %19 = call %struct.binder_node* @binder_init_node_ilocked(%struct.binder_proc* %16, %struct.binder_node* %17, %struct.flat_binder_object* %18)
  store %struct.binder_node* %19, %struct.binder_node** %6, align 8
  %20 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %21 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %20)
  %22 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  %23 = load %struct.binder_node*, %struct.binder_node** %7, align 8
  %24 = icmp ne %struct.binder_node* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.binder_node*, %struct.binder_node** %7, align 8
  %27 = call i32 @kfree(%struct.binder_node* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.binder_node*, %struct.binder_node** %6, align 8
  store %struct.binder_node* %29, %struct.binder_node** %3, align 8
  br label %30

30:                                               ; preds = %28, %12
  %31 = load %struct.binder_node*, %struct.binder_node** %3, align 8
  ret %struct.binder_node* %31
}

declare dso_local %struct.binder_node* @kzalloc(i32, i32) #1

declare dso_local i32 @binder_inner_proc_lock(%struct.binder_proc*) #1

declare dso_local %struct.binder_node* @binder_init_node_ilocked(%struct.binder_proc*, %struct.binder_node*, %struct.flat_binder_object*) #1

declare dso_local i32 @binder_inner_proc_unlock(%struct.binder_proc*) #1

declare dso_local i32 @kfree(%struct.binder_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
