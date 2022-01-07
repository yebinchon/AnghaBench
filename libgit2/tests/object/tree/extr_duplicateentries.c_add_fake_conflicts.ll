; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_duplicateentries.c_add_fake_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_duplicateentries.c_add_fake_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"45b983be36b73c0788dc9cbcb76cbb80fc7bb057\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a71586c1dfe8a71c6cbf6c129f404c5642ff31bd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @add_fake_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fake_conflicts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 24)
  %7 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 24)
  %8 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %3, i32 1)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %14 = call i32 @git_oid_fromstr(i32* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %4, i32 2)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %20 = call i32 @git_oid_fromstr(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %5, i32 3)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %26 = call i32 @git_oid_fromstr(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_index_conflict_add(i32* %27, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, %struct.TYPE_7__* %5)
  %29 = call i32 @cl_git_pass(i32 %28)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_add(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
