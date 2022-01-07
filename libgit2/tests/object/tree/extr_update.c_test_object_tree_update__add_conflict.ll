; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__add_conflict.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__add_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GIT_TREE_UPDATE_UPSERT = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"a/dir/blob\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a/dir\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a71586c1dfe8a71c6cbf6c129f404c5642ff31bd\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_update__add_conflict() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.TYPE_7__], align 16
  %4 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %11 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 ptrtoint ([11 x i8]* @.str to i32), i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i64 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %23 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 ptrtoint ([6 x i8]* @.str.1 to i32), i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %38, %0
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = call i32 @git_oid_fromstr(i32* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* @g_repo, align 4
  %43 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %44 = call i32 @git_tree_create_updated(i32* %2, i32 %42, i32* null, i32 2, %struct.TYPE_7__* %43)
  %45 = call i32 @cl_git_fail(i32 %44)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_tree_create_updated(i32*, i32, i32*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
