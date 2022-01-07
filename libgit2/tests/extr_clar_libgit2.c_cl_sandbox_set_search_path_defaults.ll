; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_sandbox_set_search_path_defaults.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_sandbox_set_search_path_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"__config\00", align 1
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_PROGRAMDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_sandbox_set_search_path_defaults() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = call i32 (...) @clar_sandbox_path()
  %4 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @git_path_exists(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @p_mkdir(i32 %11, i32 511)
  %13 = call i32 @cl_must_pass(i32 %12)
  br label %14

14:                                               ; preds = %9, %0
  %15 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %16 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_libgit2_opts(i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %21 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @git_libgit2_opts(i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %26 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @git_libgit2_opts(i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %31 = load i32, i32* @GIT_CONFIG_LEVEL_PROGRAMDATA, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_libgit2_opts(i32 %30, i32 %31, i32 %33)
  %35 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i32, i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
