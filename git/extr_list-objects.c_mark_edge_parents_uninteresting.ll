; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_mark_edge_parents_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_mark_edge_parents_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.rev_info = type { i64, i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.rev_info*, i32 (%struct.commit*)*)* @mark_edge_parents_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_edge_parents_uninteresting(%struct.commit* %0, %struct.rev_info* %1, i32 (%struct.commit*)* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32 (%struct.commit*)*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  store i32 (%struct.commit*)* %2, i32 (%struct.commit*)** %6, align 8
  %9 = load %struct.commit*, %struct.commit** %4, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 1
  %11 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %11, %struct.commit_list** %7, align 8
  br label %12

12:                                               ; preds = %57, %3
  %13 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 0
  %18 = load %struct.commit*, %struct.commit** %17, align 8
  store %struct.commit* %18, %struct.commit** %8, align 8
  %19 = load %struct.commit*, %struct.commit** %8, align 8
  %20 = getelementptr inbounds %struct.commit, %struct.commit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UNINTERESTING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %57

27:                                               ; preds = %15
  %28 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %29 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.commit*, %struct.commit** %8, align 8
  %32 = call i32 @get_commit_tree(%struct.commit* %31)
  %33 = call i32 @mark_tree_uninteresting(i32 %30, i32 %32)
  %34 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %27
  %39 = load %struct.commit*, %struct.commit** %8, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SHOWN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @SHOWN, align 4
  %48 = load %struct.commit*, %struct.commit** %8, align 8
  %49 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %6, align 8
  %54 = load %struct.commit*, %struct.commit** %8, align 8
  %55 = call i32 %53(%struct.commit* %54)
  br label %56

56:                                               ; preds = %46, %38, %27
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %59 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %58, i32 0, i32 1
  %60 = load %struct.commit_list*, %struct.commit_list** %59, align 8
  store %struct.commit_list* %60, %struct.commit_list** %7, align 8
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mark_tree_uninteresting(i32, i32) #1

declare dso_local i32 @get_commit_tree(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
