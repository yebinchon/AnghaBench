; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_fake_home.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_fake_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GIT_OPT_GET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@_cl_restore_home = common dso_local global i32 0, align 4
@cl_fake_home_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"home\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_fake_home() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %3 = load i32, i32* @GIT_OPT_GET_SEARCH_PATH, align 4
  %4 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %5 = call i32 @git_libgit2_opts(i32 %3, i32 %4, %struct.TYPE_7__* %1)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_buf_detach(%struct.TYPE_7__* %1)
  store i32 %7, i32* @_cl_restore_home, align 4
  %8 = load i32, i32* @cl_fake_home_cleanup, align 4
  %9 = call i32 @cl_set_cleanup(i32 %8, i32* null)
  %10 = call i32 @git_path_exists(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_must_pass(i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = call i32 @git_path_prettify(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %19 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @git_libgit2_opts(i32 %18, i32 %19, %struct.TYPE_7__* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_buf_dispose(%struct.TYPE_7__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @git_buf_detach(%struct.TYPE_7__*) #2

declare dso_local i32 @cl_set_cleanup(i32, i32*) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_7__*, i8*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
