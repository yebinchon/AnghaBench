; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_add_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_add_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }

@add_conflicts.conflict_idx = internal global i32 0, align 4
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i8* null, align 8
@CONFLICTS_TWO_ANCESTOR_OID = common dso_local global i8* null, align 8
@CONFLICTS_ONE_OUR_OID = common dso_local global i8* null, align 8
@CONFLICTS_TWO_OUR_OID = common dso_local global i8* null, align 8
@CONFLICTS_ONE_THEIR_OID = common dso_local global i8* null, align 8
@CONFLICTS_TWO_THEIR_OID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @add_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_conflicts(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = alloca [2 x i8*], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %12 = load i8*, i8** @CONFLICTS_ONE_ANCESTOR_OID, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = load i8*, i8** @CONFLICTS_TWO_ANCESTOR_OID, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %16 = load i8*, i8** @CONFLICTS_ONE_OUR_OID, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** @CONFLICTS_TWO_OUR_OID, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %20 = load i8*, i8** @CONFLICTS_ONE_THEIR_OID, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = load i8*, i8** @CONFLICTS_TWO_THEIR_OID, align 8
  store i8* %22, i8** %21, align 8
  %23 = load i32, i32* @add_conflicts.conflict_idx, align 4
  %24 = add nsw i32 %23, 1
  %25 = srem i32 %24, 2
  store i32 %25, i32* @add_conflicts.conflict_idx, align 4
  %26 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 16)
  %27 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 16)
  %28 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 16)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 33188, i32* %31, align 8
  %32 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %5, i32 1)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %34 = load i32, i32* @add_conflicts.conflict_idx, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @git_oid_fromstr(i32* %33, i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 33188, i32* %41, align 8
  %42 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %6, i32 2)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %44 = load i32, i32* @add_conflicts.conflict_idx, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @git_oid_fromstr(i32* %43, i8* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 33188, i32* %51, align 8
  %52 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_7__* %5, i32 2)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %54 = load i32, i32* @add_conflicts.conflict_idx, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @git_oid_fromstr(i32* %53, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_index_conflict_add(i32* %59, %struct.TYPE_7__* %5, %struct.TYPE_7__* %6, %struct.TYPE_7__* %7)
  %61 = call i32 @cl_git_pass(i32 %60)
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
