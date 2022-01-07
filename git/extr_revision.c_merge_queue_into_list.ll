; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_merge_queue_into_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_merge_queue_into_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i64 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.commit = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prio_queue*, %struct.commit_list**)* @merge_queue_into_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_queue_into_list(%struct.prio_queue* %0, %struct.commit_list** %1) #0 {
  %3 = alloca %struct.prio_queue*, align 8
  %4 = alloca %struct.commit_list**, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.prio_queue* %0, %struct.prio_queue** %3, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %4, align 8
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %9 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %14 = call %struct.commit* @prio_queue_peek(%struct.prio_queue* %13)
  store %struct.commit* %14, %struct.commit** %5, align 8
  %15 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %16 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  store %struct.commit_list* %16, %struct.commit_list** %6, align 8
  %17 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %18 = icmp ne %struct.commit_list* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %21 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.commit*, %struct.commit** %5, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 0
  store %struct.commit_list** %31, %struct.commit_list*** %4, align 8
  br label %40

32:                                               ; preds = %19, %12
  %33 = load %struct.commit*, %struct.commit** %5, align 8
  %34 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %35 = call %struct.commit_list* @commit_list_insert(%struct.commit* %33, %struct.commit_list** %34)
  store %struct.commit_list* %35, %struct.commit_list** %6, align 8
  %36 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 0
  store %struct.commit_list** %37, %struct.commit_list*** %4, align 8
  %38 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %39 = call i32 @prio_queue_get(%struct.prio_queue* %38)
  br label %40

40:                                               ; preds = %32, %29
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local %struct.commit* @prio_queue_peek(%struct.prio_queue*) #1

declare dso_local %struct.commit_list* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @prio_queue_get(%struct.prio_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
