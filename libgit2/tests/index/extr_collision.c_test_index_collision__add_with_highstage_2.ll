; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_collision.c_test_index_collision__add_with_highstage_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_collision.c_test_index_collision__add_with_highstage_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@g_empty_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"a/b/c\00", align 1
@g_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"a/b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_collision__add_with_highstage_2() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = call i32 @memset(%struct.TYPE_9__* %1, i32 0, i32 40)
  %3 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 12346789, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 12346789, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 33188, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %10 = call i32 @git_oid_cpy(i32* %9, i32* @g_empty_id)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_9__* %1, i32 1)
  %13 = load i32, i32* @g_index, align 4
  %14 = call i32 @git_index_add(i32 %13, %struct.TYPE_9__* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_9__* %1, i32 2)
  %18 = load i32, i32* @g_index, align 4
  %19 = call i32 @git_index_add(i32 %18, %struct.TYPE_9__* %1)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_9__* %1, i32 3)
  %23 = load i32, i32* @g_index, align 4
  %24 = call i32 @git_index_add(i32 %23, %struct.TYPE_9__* %1)
  %25 = call i32 @cl_git_pass(i32 %24)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
