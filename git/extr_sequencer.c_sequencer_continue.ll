; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_continue.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { i32 }
%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }
%struct.object_id = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_continue(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca %struct.todo_list, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %10 = bitcast %struct.todo_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %13 = call i64 @read_and_refresh_cache(%struct.repository* %11, %struct.replay_opts* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %18 = call i64 @read_populate_opts(%struct.replay_opts* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %114

21:                                               ; preds = %16
  %22 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %23 = call i64 @is_rebase_i(%struct.replay_opts* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.repository*, %struct.repository** %4, align 8
  %27 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %28 = call i32 @read_populate_todo(%struct.repository* %26, %struct.todo_list* %6, %struct.replay_opts* %27)
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %111

31:                                               ; preds = %25
  %32 = load %struct.repository*, %struct.repository** %4, align 8
  %33 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %34 = call i64 @commit_staged_changes(%struct.repository* %32, %struct.replay_opts* %33, %struct.todo_list* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %114

37:                                               ; preds = %31
  br label %54

38:                                               ; preds = %21
  %39 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %40 = call i32 @get_todo_path(%struct.replay_opts* %39)
  %41 = call i64 @file_exists(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.repository*, %struct.repository** %4, align 8
  %45 = call i32 @continue_single_pick(%struct.repository* %44)
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %38
  %47 = load %struct.repository*, %struct.repository** %4, align 8
  %48 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %49 = call i32 @read_populate_todo(%struct.repository* %47, %struct.todo_list* %6, %struct.replay_opts* %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %111

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %56 = call i64 @is_rebase_i(%struct.replay_opts* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %54
  %59 = load %struct.repository*, %struct.repository** %4, align 8
  %60 = call i32 @git_path_cherry_pick_head(%struct.repository* %59)
  %61 = call i64 @file_exists(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.repository*, %struct.repository** %4, align 8
  %65 = call i32 @git_path_revert_head(%struct.repository* %64)
  %66 = call i64 @file_exists(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %58
  %69 = load %struct.repository*, %struct.repository** %4, align 8
  %70 = call i32 @continue_single_pick(%struct.repository* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %111

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.repository*, %struct.repository** %4, align 8
  %77 = call i64 @index_differs_from(%struct.repository* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.repository*, %struct.repository** %4, align 8
  %81 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %82 = call i32 @error_dirty_index(%struct.repository* %80, %struct.replay_opts* %81)
  store i32 %82, i32* %7, align 4
  br label %111

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %107

87:                                               ; preds = %54
  %88 = call i32 (...) @rebase_path_stopped_sha()
  %89 = call i64 @file_exists(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %93 = call i32 (...) @rebase_path_stopped_sha()
  %94 = call i64 @read_oneliner(%struct.strbuf* %8, i32 %93, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_oid_committish(i32 %98, %struct.object_id* %9)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = call i32 @peek_command(%struct.todo_list* %6, i32 0)
  %103 = call i32 @record_in_rewritten(%struct.object_id* %9, i32 %102)
  br label %104

104:                                              ; preds = %101, %96, %91
  %105 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %106

106:                                              ; preds = %104, %87
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.repository*, %struct.repository** %4, align 8
  %109 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %110 = call i32 @pick_commits(%struct.repository* %108, %struct.todo_list* %6, %struct.replay_opts* %109)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %79, %73, %51, %30
  %112 = call i32 @todo_list_release(%struct.todo_list* %6)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %43, %36, %20, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_and_refresh_cache(%struct.repository*, %struct.replay_opts*) #2

declare dso_local i64 @read_populate_opts(%struct.replay_opts*) #2

declare dso_local i64 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local i32 @read_populate_todo(%struct.repository*, %struct.todo_list*, %struct.replay_opts*) #2

declare dso_local i64 @commit_staged_changes(%struct.repository*, %struct.replay_opts*, %struct.todo_list*) #2

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @get_todo_path(%struct.replay_opts*) #2

declare dso_local i32 @continue_single_pick(%struct.repository*) #2

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #2

declare dso_local i32 @git_path_revert_head(%struct.repository*) #2

declare dso_local i64 @index_differs_from(%struct.repository*, i8*, i32*, i32) #2

declare dso_local i32 @error_dirty_index(%struct.repository*, %struct.replay_opts*) #2

declare dso_local i32 @rebase_path_stopped_sha(...) #2

declare dso_local i64 @read_oneliner(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @get_oid_committish(i32, %struct.object_id*) #2

declare dso_local i32 @record_in_rewritten(%struct.object_id*, i32) #2

declare dso_local i32 @peek_command(%struct.todo_list*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @pick_commits(%struct.repository*, %struct.todo_list*, %struct.replay_opts*) #2

declare dso_local i32 @todo_list_release(%struct.todo_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
