; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_revwalking.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_revwalking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"\0A*Revwalking*\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"looking up commit during revwalk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @revwalking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revwalking(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_revwalk_new(i32** %6, i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %15 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @git_revwalk_sorting(i32* %13, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @git_revwalk_push(i32* %18, i32* %8)
  br label %20

20:                                               ; preds = %24, %1
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @git_revwalk_next(i32* %8, i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_commit_lookup(i32** %7, i32* %25, i32* %8)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @check_error(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @git_commit_message(i32* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_3__* @git_commit_author(i32* %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @git_commit_free(i32* %38)
  br label %20

40:                                               ; preds = %20
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @git_revwalk_free(i32* %41)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_revwalk_new(i32**, i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32*, i32) #1

declare dso_local i32 @git_revwalk_push(i32*, i32*) #1

declare dso_local i64 @git_revwalk_next(i32*, i32*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @check_error(i32, i8*) #1

declare dso_local i8* @git_commit_message(i32*) #1

declare dso_local %struct.TYPE_3__* @git_commit_author(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
