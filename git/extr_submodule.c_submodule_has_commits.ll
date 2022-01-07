; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_has_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_has_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i8*, i32, %struct.has_commit_data }
%struct.has_commit_data = type { i32, i8*, i32, %struct.repository* }
%struct.repository = type { i32 }
%struct.strbuf = type { i64 }
%struct.oid_array = type { i32 }

@check_has_commit = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@append_oid_to_argv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@GIT_MAX_HEXSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.oid_array*)* @submodule_has_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_has_commits(%struct.repository* %0, i8* %1, %struct.oid_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.oid_array*, align 8
  %8 = alloca %struct.has_commit_data, align 8
  %9 = alloca %struct.child_process, align 8
  %10 = alloca %struct.strbuf, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.oid_array* %2, %struct.oid_array** %7, align 8
  %11 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 0
  %12 = load %struct.repository*, %struct.repository** %5, align 8
  %13 = ptrtoint %struct.repository* %12 to i32
  store i32 %13, i32* %11, align 8
  %14 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 2
  %16 = load i8*, i8** %6, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 3
  store %struct.repository* null, %struct.repository** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @add_submodule_odb(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %25 = load i32, i32* @check_has_commit, align 4
  %26 = call i32 @oid_array_for_each_unique(%struct.oid_array* %24, i32 %25, %struct.has_commit_data* %8)
  %27 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %23
  %31 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 56, i1 false)
  %32 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %34 = call i32 (%struct.has_commit_data*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.has_commit_data* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %35 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %36 = load i32, i32* @append_oid_to_argv, align 4
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %38 = call i32 @oid_array_for_each_unique(%struct.oid_array* %35, i32 %36, %struct.has_commit_data* %37)
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 4
  %40 = call i32 (%struct.has_commit_data*, i8*, i8*, i8*, ...) @argv_array_pushl(%struct.has_commit_data* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 3
  %42 = call i32 @prepare_submodule_repo_env(i32* %41)
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* @GIT_MAX_HEXSZ, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i64 @capture_command(%struct.child_process* %9, %struct.strbuf* %10, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %30
  %56 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 2
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %59

59:                                               ; preds = %57, %23
  %60 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @add_submodule_odb(i8*) #1

declare dso_local i32 @oid_array_for_each_unique(%struct.oid_array*, i32, %struct.has_commit_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @argv_array_pushl(%struct.has_commit_data*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @prepare_submodule_repo_env(i32*) #1

declare dso_local i64 @capture_command(%struct.child_process*, %struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
