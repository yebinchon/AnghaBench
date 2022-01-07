; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_expand_topo_walk.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_expand_topo_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, i32, %struct.topo_walk_info* }
%struct.topo_walk_info = type { i64, i32, i32 }
%struct.commit = type { i64, %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@.str = private unnamed_addr constant [40 x i8] c"Failed to traverse parents of commit %s\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*)* @expand_topo_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_topo_walk(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.topo_walk_info*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 2
  %11 = load %struct.topo_walk_info*, %struct.topo_walk_info** %10, align 8
  store %struct.topo_walk_info* %11, %struct.topo_walk_info** %6, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = load %struct.commit*, %struct.commit** %4, align 8
  %14 = call i64 @process_parents(%struct.rev_info* %12, %struct.commit* %13, i32* null, i32* null)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.commit*, %struct.commit** %4, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @oid_to_hex(i32* %24)
  %26 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.commit*, %struct.commit** %4, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 2
  %31 = load %struct.commit_list*, %struct.commit_list** %30, align 8
  store %struct.commit_list* %31, %struct.commit_list** %5, align 8
  br label %32

32:                                               ; preds = %94, %28
  %33 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %34 = icmp ne %struct.commit_list* %33, null
  br i1 %34, label %35, label %98

35:                                               ; preds = %32
  %36 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 0
  %38 = load %struct.commit*, %struct.commit** %37, align 8
  store %struct.commit* %38, %struct.commit** %7, align 8
  %39 = load %struct.commit*, %struct.commit** %7, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UNINTERESTING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %94

47:                                               ; preds = %35
  %48 = load %struct.commit*, %struct.commit** %7, align 8
  %49 = call i64 @parse_commit_gently(%struct.commit* %48, i32 1)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %94

52:                                               ; preds = %47
  %53 = load %struct.commit*, %struct.commit** %7, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.topo_walk_info*, %struct.topo_walk_info** %6, align 8
  %57 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.commit*, %struct.commit** %7, align 8
  %62 = getelementptr inbounds %struct.commit, %struct.commit* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.topo_walk_info*, %struct.topo_walk_info** %6, align 8
  %65 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %67 = load %struct.topo_walk_info*, %struct.topo_walk_info** %6, align 8
  %68 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @compute_indegrees_to_depth(%struct.rev_info* %66, i64 %69)
  br label %71

71:                                               ; preds = %60, %52
  %72 = load %struct.topo_walk_info*, %struct.topo_walk_info** %6, align 8
  %73 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %72, i32 0, i32 2
  %74 = load %struct.commit*, %struct.commit** %7, align 8
  %75 = call i32* @indegree_slab_at(i32* %73, %struct.commit* %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.topo_walk_info*, %struct.topo_walk_info** %6, align 8
  %84 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %83, i32 0, i32 1
  %85 = load %struct.commit*, %struct.commit** %7, align 8
  %86 = call i32 @prio_queue_put(i32* %84, %struct.commit* %85)
  br label %87

87:                                               ; preds = %82, %71
  %88 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %89 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %98

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %51, %46
  %95 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %96 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %95, i32 0, i32 1
  %97 = load %struct.commit_list*, %struct.commit_list** %96, align 8
  store %struct.commit_list* %97, %struct.commit_list** %5, align 8
  br label %32

98:                                               ; preds = %92, %32
  ret void
}

declare dso_local i64 @process_parents(%struct.rev_info*, %struct.commit*, i32*, i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @parse_commit_gently(%struct.commit*, i32) #1

declare dso_local i32 @compute_indegrees_to_depth(%struct.rev_info*, i64) #1

declare dso_local i32* @indegree_slab_at(i32*, %struct.commit*) #1

declare dso_local i32 @prio_queue_put(i32*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
