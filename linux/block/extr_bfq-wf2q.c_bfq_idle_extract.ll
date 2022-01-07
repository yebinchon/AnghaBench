; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_idle_extract.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_idle_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32, %struct.bfq_entity*, %struct.bfq_entity* }
%struct.bfq_entity = type { i32 }
%struct.bfq_queue = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_service_tree*, %struct.bfq_entity*)* @bfq_idle_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_idle_extract(%struct.bfq_service_tree* %0, %struct.bfq_entity* %1) #0 {
  %3 = alloca %struct.bfq_service_tree*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %3, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %4, align 8
  %7 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %8 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %7)
  store %struct.bfq_queue* %8, %struct.bfq_queue** %5, align 8
  %9 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %10 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %10, i32 0, i32 2
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %11, align 8
  %13 = icmp eq %struct.bfq_entity* %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %16 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %15, i32 0, i32 0
  %17 = call %struct.rb_node* @rb_next(i32* %16)
  store %struct.rb_node* %17, %struct.rb_node** %6, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %19 = call i8* @bfq_entity_of(%struct.rb_node* %18)
  %20 = bitcast i8* %19 to %struct.bfq_entity*
  %21 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %22 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %21, i32 0, i32 2
  store %struct.bfq_entity* %20, %struct.bfq_entity** %22, align 8
  br label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %25 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %26 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %25, i32 0, i32 1
  %27 = load %struct.bfq_entity*, %struct.bfq_entity** %26, align 8
  %28 = icmp eq %struct.bfq_entity* %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %31 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %30, i32 0, i32 0
  %32 = call %struct.rb_node* @rb_prev(i32* %31)
  store %struct.rb_node* %32, %struct.rb_node** %6, align 8
  %33 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %34 = call i8* @bfq_entity_of(%struct.rb_node* %33)
  %35 = bitcast i8* %34 to %struct.bfq_entity*
  %36 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %37 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %36, i32 0, i32 1
  store %struct.bfq_entity* %35, %struct.bfq_entity** %37, align 8
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %40 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %39, i32 0, i32 0
  %41 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %42 = call i32 @bfq_extract(i32* %40, %struct.bfq_entity* %41)
  %43 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %44 = icmp ne %struct.bfq_queue* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %47 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %46, i32 0, i32 0
  %48 = call i32 @list_del(i32* %47)
  br label %49

49:                                               ; preds = %45, %38
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

declare dso_local %struct.rb_node* @rb_next(i32*) #1

declare dso_local i8* @bfq_entity_of(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_prev(i32*) #1

declare dso_local i32 @bfq_extract(i32*, %struct.bfq_entity*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
