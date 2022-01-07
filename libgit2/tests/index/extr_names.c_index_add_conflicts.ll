; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_index_add_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_names.c_index_add_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ancestor2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ours2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"theirs2\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ancestor3\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ours3\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"theirs3\00", align 1
@__const.index_add_conflicts.paths = private unnamed_addr constant [3 x [3 x i8*]] [[3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)], [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)]], align 16
@GIT_FILEMODE_BLOB = common dso_local global i8* null, align 8
@GIT_INDEX_STAGE_ANCESTOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"1f85ca51b8e0aac893a621b61a9c2661d6aa6d81\00", align 1
@repo_index = common dso_local global i32 0, align 4
@GIT_INDEX_STAGE_OURS = common dso_local global i32 0, align 4
@GIT_INDEX_STAGE_THEIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @index_add_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_add_conflicts() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca [3 x [3 x i8*]], align 16
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = bitcast [3 x [3 x i8*]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([3 x [3 x i8*]]* @__const.index_add_conflicts.paths to i8*), i64 72, i1 false)
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %56, %0
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds [3 x [3 x i8*]], [3 x [3 x i8*]]* %2, i64 0, i64 0
  %10 = bitcast [3 x i8*]* %9 to i8***
  %11 = call i64 @ARRAY_SIZE(i8*** %10)
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds [3 x [3 x i8*]], [3 x [3 x i8*]]* %2, i64 0, i64 %14
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  store i8** %16, i8*** %3, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @GIT_INDEX_STAGE_ANCESTOR, align 4
  %24 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_6__* %1, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %26 = call i32 @git_oid_fromstr(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %27 = load i32, i32* @repo_index, align 4
  %28 = call i32 @git_index_add(i32 %27, %struct.TYPE_6__* %1)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i8**, i8*** %3, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @GIT_INDEX_STAGE_OURS, align 4
  %37 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_6__* %1, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %39 = call i32 @git_oid_fromstr(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %40 = load i32, i32* @repo_index, align 4
  %41 = call i32 @git_index_add(i32 %40, %struct.TYPE_6__* %1)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @GIT_INDEX_STAGE_THEIRS, align 4
  %50 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_6__* %1, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %52 = call i32 @git_oid_fromstr(i32* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %53 = load i32, i32* @repo_index, align 4
  %54 = call i32 @git_index_add(i32 %53, %struct.TYPE_6__* %1)
  %55 = call i32 @cl_git_pass(i32 %54)
  br label %56

56:                                               ; preds = %13
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %7

59:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8***) #2

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_add(i32, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
