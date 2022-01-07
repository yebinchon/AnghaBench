; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32, i32 }
%struct.binder_buffer = type { %struct.binder_node*, i64, %struct.TYPE_2__* }
%struct.binder_node = type { i32, i32, %struct.binder_proc* }
%struct.TYPE_2__ = type { i32* }
%struct.binder_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_proc*, %struct.binder_buffer*)* @binder_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_free_buf(%struct.binder_proc* %0, %struct.binder_buffer* %1) #0 {
  %3 = alloca %struct.binder_proc*, align 8
  %4 = alloca %struct.binder_buffer*, align 8
  %5 = alloca %struct.binder_node*, align 8
  %6 = alloca %struct.binder_work*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %3, align 8
  store %struct.binder_buffer* %1, %struct.binder_buffer** %4, align 8
  %7 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %8 = call i32 @binder_inner_proc_lock(%struct.binder_proc* %7)
  %9 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %18, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %22 = call i32 @binder_inner_proc_unlock(%struct.binder_proc* %21)
  %23 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %20
  %28 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %28, i32 0, i32 0
  %30 = load %struct.binder_node*, %struct.binder_node** %29, align 8
  %31 = icmp ne %struct.binder_node* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %33, i32 0, i32 0
  %35 = load %struct.binder_node*, %struct.binder_node** %34, align 8
  store %struct.binder_node* %35, %struct.binder_node** %5, align 8
  %36 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %37 = call i32 @binder_node_inner_lock(%struct.binder_node* %36)
  %38 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %39 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %46 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %45, i32 0, i32 2
  %47 = load %struct.binder_proc*, %struct.binder_proc** %46, align 8
  %48 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %49 = icmp ne %struct.binder_proc* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %53 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %52, i32 0, i32 1
  %54 = call %struct.binder_work* @binder_dequeue_work_head_ilocked(i32* %53)
  store %struct.binder_work* %54, %struct.binder_work** %6, align 8
  %55 = load %struct.binder_work*, %struct.binder_work** %6, align 8
  %56 = icmp ne %struct.binder_work* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %32
  %58 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %59 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %67

60:                                               ; preds = %32
  %61 = load %struct.binder_work*, %struct.binder_work** %6, align 8
  %62 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %63 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %62, i32 0, i32 1
  %64 = call i32 @binder_enqueue_work_ilocked(%struct.binder_work* %61, i32* %63)
  %65 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %66 = call i32 @binder_wakeup_proc_ilocked(%struct.binder_proc* %65)
  br label %67

67:                                               ; preds = %60, %57
  %68 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %69 = call i32 @binder_node_inner_unlock(%struct.binder_node* %68)
  br label %70

70:                                               ; preds = %67, %27, %20
  %71 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %72 = call i32 @trace_binder_transaction_buffer_release(%struct.binder_buffer* %71)
  %73 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %74 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %75 = call i32 @binder_transaction_buffer_release(%struct.binder_proc* %73, %struct.binder_buffer* %74, i32 0, i32 0)
  %76 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %77 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %76, i32 0, i32 0
  %78 = load %struct.binder_buffer*, %struct.binder_buffer** %4, align 8
  %79 = call i32 @binder_alloc_free_buf(i32* %77, %struct.binder_buffer* %78)
  ret void
}

declare dso_local i32 @binder_inner_proc_lock(%struct.binder_proc*) #1

declare dso_local i32 @binder_inner_proc_unlock(%struct.binder_proc*) #1

declare dso_local i32 @binder_node_inner_lock(%struct.binder_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.binder_work* @binder_dequeue_work_head_ilocked(i32*) #1

declare dso_local i32 @binder_enqueue_work_ilocked(%struct.binder_work*, i32*) #1

declare dso_local i32 @binder_wakeup_proc_ilocked(%struct.binder_proc*) #1

declare dso_local i32 @binder_node_inner_unlock(%struct.binder_node*) #1

declare dso_local i32 @trace_binder_transaction_buffer_release(%struct.binder_buffer*) #1

declare dso_local i32 @binder_transaction_buffer_release(%struct.binder_proc*, %struct.binder_buffer*, i32, i32) #1

declare dso_local i32 @binder_alloc_free_buf(i32*, %struct.binder_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
