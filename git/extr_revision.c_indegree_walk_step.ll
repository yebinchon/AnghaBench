; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_indegree_walk_step.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_indegree_walk_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, %struct.topo_walk_info* }
%struct.topo_walk_info = type { i32, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.commit_list*, i32 }

@TOPO_WALK_INDEGREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @indegree_walk_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indegree_walk_step(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.topo_walk_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %8 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %10 = load %struct.topo_walk_info*, %struct.topo_walk_info** %9, align 8
  store %struct.topo_walk_info* %10, %struct.topo_walk_info** %4, align 8
  %11 = load %struct.topo_walk_info*, %struct.topo_walk_info** %4, align 8
  %12 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %11, i32 0, i32 0
  %13 = call %struct.commit* @prio_queue_get(i32* %12)
  store %struct.commit* %13, %struct.commit** %5, align 8
  %14 = load %struct.commit*, %struct.commit** %5, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.commit*, %struct.commit** %5, align 8
  %19 = call i64 @parse_commit_gently(%struct.commit* %18, i32 1)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %67

22:                                               ; preds = %17
  %23 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %24 = load %struct.commit*, %struct.commit** %5, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @explore_to_depth(%struct.rev_info* %23, i32 %26)
  %28 = load %struct.commit*, %struct.commit** %5, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  store %struct.commit_list* %30, %struct.commit_list** %3, align 8
  br label %31

31:                                               ; preds = %63, %22
  %32 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %33 = icmp ne %struct.commit_list* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 0
  %37 = load %struct.commit*, %struct.commit** %36, align 8
  store %struct.commit* %37, %struct.commit** %6, align 8
  %38 = load %struct.topo_walk_info*, %struct.topo_walk_info** %4, align 8
  %39 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %38, i32 0, i32 1
  %40 = load %struct.commit*, %struct.commit** %6, align 8
  %41 = call i32* @indegree_slab_at(i32* %39, %struct.commit* %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32*, i32** %7, align 8
  store i32 2, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.topo_walk_info*, %struct.topo_walk_info** %4, align 8
  %53 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %52, i32 0, i32 0
  %54 = load %struct.commit*, %struct.commit** %6, align 8
  %55 = load i32, i32* @TOPO_WALK_INDEGREE, align 4
  %56 = call i32 @test_flag_and_insert(i32* %53, %struct.commit* %54, i32 %55)
  %57 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %67

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %65 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %64, i32 0, i32 1
  %66 = load %struct.commit_list*, %struct.commit_list** %65, align 8
  store %struct.commit_list* %66, %struct.commit_list** %3, align 8
  br label %31

67:                                               ; preds = %16, %21, %61, %31
  ret void
}

declare dso_local %struct.commit* @prio_queue_get(i32*) #1

declare dso_local i64 @parse_commit_gently(%struct.commit*, i32) #1

declare dso_local i32 @explore_to_depth(%struct.rev_info*, i32) #1

declare dso_local i32* @indegree_slab_at(i32*, %struct.commit*) #1

declare dso_local i32 @test_flag_and_insert(i32*, %struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
