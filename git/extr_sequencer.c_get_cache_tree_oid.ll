; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_get_cache_tree_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_get_cache_tree_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.index_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object_id }

@.str = private unnamed_addr constant [28 x i8] c"unable to update cache tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.index_state*)* @get_cache_tree_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @get_cache_tree_oid(%struct.index_state* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  %4 = load %struct.index_state*, %struct.index_state** %3, align 8
  %5 = getelementptr inbounds %struct.index_state, %struct.index_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call %struct.TYPE_3__* (...) @cache_tree()
  %10 = load %struct.index_state*, %struct.index_state** %3, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.index_state*, %struct.index_state** %3, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @cache_tree_fully_valid(%struct.TYPE_3__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.index_state*, %struct.index_state** %3, align 8
  %20 = call i64 @cache_tree_update(%struct.index_state* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @error(i32 %23)
  store %struct.object_id* null, %struct.object_id** %2, align 8
  br label %31

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.index_state*, %struct.index_state** %3, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.object_id* %30, %struct.object_id** %2, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.object_id*, %struct.object_id** %2, align 8
  ret %struct.object_id* %32
}

declare dso_local %struct.TYPE_3__* @cache_tree(...) #1

declare dso_local i32 @cache_tree_fully_valid(%struct.TYPE_3__*) #1

declare dso_local i64 @cache_tree_update(%struct.index_state*, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
