; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_idle_insert.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_idle_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32, %struct.bfq_entity*, %struct.bfq_entity* }
%struct.bfq_entity = type { i32 }
%struct.bfq_queue = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_service_tree*, %struct.bfq_entity*)* @bfq_idle_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_idle_insert(%struct.bfq_service_tree* %0, %struct.bfq_entity* %1) #0 {
  %3 = alloca %struct.bfq_service_tree*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.bfq_entity*, align 8
  %7 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %3, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %4, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %9 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %8)
  store %struct.bfq_queue* %9, %struct.bfq_queue** %5, align 8
  %10 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %10, i32 0, i32 2
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %11, align 8
  store %struct.bfq_entity* %12, %struct.bfq_entity** %6, align 8
  %13 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %14 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %13, i32 0, i32 1
  %15 = load %struct.bfq_entity*, %struct.bfq_entity** %14, align 8
  store %struct.bfq_entity* %15, %struct.bfq_entity** %7, align 8
  %16 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %17 = icmp ne %struct.bfq_entity* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %20 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %23 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @bfq_gt(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18, %2
  %28 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %29 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %30 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %29, i32 0, i32 2
  store %struct.bfq_entity* %28, %struct.bfq_entity** %30, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.bfq_entity*, %struct.bfq_entity** %7, align 8
  %33 = icmp ne %struct.bfq_entity* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %36 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bfq_entity*, %struct.bfq_entity** %7, align 8
  %39 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @bfq_gt(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34, %31
  %44 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %45 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %46 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %45, i32 0, i32 1
  store %struct.bfq_entity* %44, %struct.bfq_entity** %46, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %49 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %48, i32 0, i32 0
  %50 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %51 = call i32 @bfq_insert(i32* %49, %struct.bfq_entity* %50)
  %52 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %53 = icmp ne %struct.bfq_queue* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %56 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %55, i32 0, i32 1
  %57 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %58 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @list_add(i32* %56, i32* %60)
  br label %62

62:                                               ; preds = %54, %47
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

declare dso_local i64 @bfq_gt(i32, i32) #1

declare dso_local i32 @bfq_insert(i32*, %struct.bfq_entity*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
