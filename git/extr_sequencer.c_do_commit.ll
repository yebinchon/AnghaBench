; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }
%struct.object_id = type { i32 }

@EDIT_MSG = common dso_local global i32 0, align 4
@VERIFY_MSG = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to read commit message from '%s'\00", align 1
@SUMMARY_SHOW_AUTHOR_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i8*, %struct.replay_opts*, i32)* @do_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_commit(%struct.repository* %0, i8* %1, i8* %2, %struct.replay_opts* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.replay_opts*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.replay_opts* %3, %struct.replay_opts** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @EDIT_MSG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @VERIFY_MSG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %19
  %25 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strbuf_read_file(%struct.strbuf* %14, i8* %29, i32 2048)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @error_errno(i32 %33, i8* %34)
  store i32 %35, i32* %6, align 4
  br label %79

36:                                               ; preds = %28, %24
  %37 = load %struct.repository*, %struct.repository** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi %struct.strbuf* [ %14, %40 ], [ null, %41 ]
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.replay_opts*, %struct.replay_opts** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @try_to_commit(%struct.repository* %37, %struct.strbuf* %43, i8* %44, %struct.replay_opts* %45, i32 %46, %struct.object_id* %13)
  store i32 %47, i32* %12, align 4
  %48 = call i32 @strbuf_release(%struct.strbuf* %14)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %42
  %52 = load %struct.repository*, %struct.repository** %7, align 8
  %53 = call i32 @git_path_cherry_pick_head(%struct.repository* %52)
  %54 = call i32 @unlink(i32 %53)
  %55 = load %struct.repository*, %struct.repository** %7, align 8
  %56 = call i32 @git_path_merge_msg(%struct.repository* %55)
  %57 = call i32 @unlink(i32 %56)
  %58 = load %struct.replay_opts*, %struct.replay_opts** %10, align 8
  %59 = call i32 @is_rebase_i(%struct.replay_opts* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %51
  %62 = load %struct.repository*, %struct.repository** %7, align 8
  %63 = load i32, i32* @SUMMARY_SHOW_AUTHOR_DATE, align 4
  %64 = call i32 @print_commit_summary(%struct.repository* %62, i32* null, %struct.object_id* %13, i32 %63)
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %79

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %19, %5
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.repository*, %struct.repository** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.replay_opts*, %struct.replay_opts** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @run_git_commit(%struct.repository* %72, i8* %73, %struct.replay_opts* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %71, %65, %32
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @try_to_commit(%struct.repository*, %struct.strbuf*, i8*, %struct.replay_opts*, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #2

declare dso_local i32 @git_path_merge_msg(%struct.repository*) #2

declare dso_local i32 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local i32 @print_commit_summary(%struct.repository*, i32*, %struct.object_id*, i32) #2

declare dso_local i32 @run_git_commit(%struct.repository*, i8*, %struct.replay_opts*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
