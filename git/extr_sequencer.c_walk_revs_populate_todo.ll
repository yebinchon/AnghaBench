; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_walk_revs_populate_todo.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_walk_revs_populate_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.todo_list = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.replay_opts = type { i64, i32 }
%struct.commit = type { i32 }
%struct.todo_item = type { i32, i32, i64, i64, %struct.commit* }

@REPLAY_PICK = common dso_local global i64 0, align 8
@TODO_PICK = common dso_local global i32 0, align 4
@TODO_REVERT = common dso_local global i32 0, align 4
@todo_command_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s %s %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"empty commit set passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.todo_list*, %struct.replay_opts*)* @walk_revs_populate_todo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_revs_populate_todo(%struct.todo_list* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.todo_list*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.todo_item*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.todo_list* %0, %struct.todo_list** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %13 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %14 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REPLAY_PICK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @TODO_PICK, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TODO_REVERT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @todo_command_info, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %31 = call i64 @prepare_revs(%struct.replay_opts* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %84

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %41, %34
  %36 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %37 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.commit* @get_revision(i32 %38)
  store %struct.commit* %39, %struct.commit** %8, align 8
  %40 = icmp ne %struct.commit* %39, null
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %43 = call %struct.todo_item* @append_new_todo(%struct.todo_list* %42)
  store %struct.todo_item* %43, %struct.todo_item** %9, align 8
  %44 = load %struct.commit*, %struct.commit** %8, align 8
  %45 = call i8* @get_commit_buffer(%struct.commit* %44, i32* null)
  store i8* %45, i8** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.todo_item*, %struct.todo_item** %9, align 8
  %48 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = load %struct.todo_item*, %struct.todo_item** %9, align 8
  %51 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %50, i32 0, i32 4
  store %struct.commit* %49, %struct.commit** %51, align 8
  %52 = load %struct.todo_item*, %struct.todo_item** %9, align 8
  %53 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.todo_item*, %struct.todo_item** %9, align 8
  %55 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %57 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.todo_item*, %struct.todo_item** %9, align 8
  %61 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @find_commit_subject(i8* %62, i8** %11)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %65 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %64, i32 0, i32 1
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.commit*, %struct.commit** %8, align 8
  %68 = call i32 @short_commit_name(%struct.commit* %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strbuf_addf(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %68, i32 %69, i8* %70)
  %72 = load %struct.commit*, %struct.commit** %8, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @unuse_commit_buffer(%struct.commit* %72, i8* %73)
  br label %35

75:                                               ; preds = %35
  %76 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %77 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @error(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @prepare_revs(%struct.replay_opts*) #1

declare dso_local %struct.commit* @get_revision(i32) #1

declare dso_local %struct.todo_item* @append_new_todo(%struct.todo_list*) #1

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i32 @find_commit_subject(i8*, i8**) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_4__*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @short_commit_name(%struct.commit*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
