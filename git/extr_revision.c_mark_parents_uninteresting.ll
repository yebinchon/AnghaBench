; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_parents_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_parents_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_stack = type { i64 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { i32, %struct.commit_list* }

@COMMIT_STACK_INIT = common dso_local global %struct.commit_stack zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_parents_uninteresting(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit_stack, align 8
  %4 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  %5 = bitcast %struct.commit_stack* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.commit_stack* @COMMIT_STACK_INIT to i8*), i64 8, i1 false)
  %6 = load %struct.commit*, %struct.commit** %2, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %8 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %8, %struct.commit_list** %4, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %14 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mark_one_parent_uninteresting(i32 %15, %struct.commit_stack* %3)
  br label %17

17:                                               ; preds = %12
  %18 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %19 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %18, i32 0, i32 1
  %20 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  store %struct.commit_list* %20, %struct.commit_list** %4, align 8
  br label %9

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %26, %21
  %23 = getelementptr inbounds %struct.commit_stack, %struct.commit_stack* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 @commit_stack_pop(%struct.commit_stack* %3)
  %28 = call i32 @mark_one_parent_uninteresting(i32 %27, %struct.commit_stack* %3)
  br label %22

29:                                               ; preds = %22
  %30 = call i32 @commit_stack_clear(%struct.commit_stack* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mark_one_parent_uninteresting(i32, %struct.commit_stack*) #2

declare dso_local i32 @commit_stack_pop(%struct.commit_stack*) #2

declare dso_local i32 @commit_stack_clear(%struct.commit_stack*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
