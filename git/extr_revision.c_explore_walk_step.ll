; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_explore_walk_step.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_explore_walk_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i32, %struct.topo_walk_info* }
%struct.topo_walk_info = type { i32, i32 }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.commit = type { i32, %struct.commit_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REV_SORT_BY_AUTHOR_DATE = common dso_local global i64 0, align 8
@UNINTERESTING = common dso_local global i32 0, align 4
@TOPO_WALK_EXPLORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @explore_walk_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explore_walk_step(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.topo_walk_info*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 2
  %8 = load %struct.topo_walk_info*, %struct.topo_walk_info** %7, align 8
  store %struct.topo_walk_info* %8, %struct.topo_walk_info** %3, align 8
  %9 = load %struct.topo_walk_info*, %struct.topo_walk_info** %3, align 8
  %10 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %9, i32 0, i32 0
  %11 = call %struct.commit* @prio_queue_get(i32* %10)
  store %struct.commit* %11, %struct.commit** %5, align 8
  %12 = load %struct.commit*, %struct.commit** %5, align 8
  %13 = icmp ne %struct.commit* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.commit*, %struct.commit** %5, align 8
  %17 = call i64 @parse_commit_gently(%struct.commit* %16, i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %87

20:                                               ; preds = %15
  %21 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REV_SORT_BY_AUTHOR_DATE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.topo_walk_info*, %struct.topo_walk_info** %3, align 8
  %28 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %27, i32 0, i32 1
  %29 = load %struct.commit*, %struct.commit** %5, align 8
  %30 = call i32 @record_author_date(i32* %28, %struct.commit* %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.commit*, %struct.commit** %5, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* @UNINTERESTING, align 4
  %46 = load %struct.commit*, %struct.commit** %5, align 8
  %47 = getelementptr inbounds %struct.commit, %struct.commit* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %36, %31
  %52 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %53 = load %struct.commit*, %struct.commit** %5, align 8
  %54 = call i64 @process_parents(%struct.rev_info* %52, %struct.commit* %53, i32* null, i32* null)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %87

57:                                               ; preds = %51
  %58 = load %struct.commit*, %struct.commit** %5, align 8
  %59 = getelementptr inbounds %struct.commit, %struct.commit* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UNINTERESTING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.commit*, %struct.commit** %5, align 8
  %67 = call i32 @mark_parents_uninteresting(%struct.commit* %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.commit*, %struct.commit** %5, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 1
  %71 = load %struct.commit_list*, %struct.commit_list** %70, align 8
  store %struct.commit_list* %71, %struct.commit_list** %4, align 8
  br label %72

72:                                               ; preds = %83, %68
  %73 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %74 = icmp ne %struct.commit_list* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.topo_walk_info*, %struct.topo_walk_info** %3, align 8
  %77 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %76, i32 0, i32 0
  %78 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %79 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TOPO_WALK_EXPLORED, align 4
  %82 = call i32 @test_flag_and_insert(i32* %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %85 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %84, i32 0, i32 1
  %86 = load %struct.commit_list*, %struct.commit_list** %85, align 8
  store %struct.commit_list* %86, %struct.commit_list** %4, align 8
  br label %72

87:                                               ; preds = %14, %19, %56, %72
  ret void
}

declare dso_local %struct.commit* @prio_queue_get(i32*) #1

declare dso_local i64 @parse_commit_gently(%struct.commit*, i32) #1

declare dso_local i32 @record_author_date(i32*, %struct.commit*) #1

declare dso_local i64 @process_parents(%struct.rev_info*, %struct.commit*, i32*, i32*) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.commit*) #1

declare dso_local i32 @test_flag_and_insert(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
