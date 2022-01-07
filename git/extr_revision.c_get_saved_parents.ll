; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_get_saved_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_get_saved_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.rev_info = type { i32 }
%struct.commit = type { %struct.commit_list* }

@EMPTY_PARENT_LIST = common dso_local global %struct.commit_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @get_saved_parents(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.commit*, %struct.commit** %5, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %14, %struct.commit_list** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.commit*, %struct.commit** %5, align 8
  %20 = call %struct.commit_list** @saved_parents_at(i32 %18, %struct.commit* %19)
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  store %struct.commit_list* %21, %struct.commit_list** %6, align 8
  %22 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** @EMPTY_PARENT_LIST, align 8
  %24 = icmp eq %struct.commit_list* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store %struct.commit_list* null, %struct.commit_list** %3, align 8
  br label %28

26:                                               ; preds = %15
  %27 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %27, %struct.commit_list** %3, align 8
  br label %28

28:                                               ; preds = %26, %25, %11
  %29 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  ret %struct.commit_list* %29
}

declare dso_local %struct.commit_list** @saved_parents_at(i32, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
