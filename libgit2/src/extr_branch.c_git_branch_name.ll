; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_REFS_REMOTES_DIR = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"reference '%s' is neither a local nor a remote branch.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_name(i8** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i64 @git_reference_is_branch(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %6, align 8
  br label %45

28:                                               ; preds = %12
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i64 @git_reference_is_remote(%struct.TYPE_5__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @GIT_REFS_REMOTES_DIR, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  br label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @git_error_set(i32 %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %3, align 4
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i8*, i8** %6, align 8
  %47 = load i8**, i8*** %4, align 8
  store i8* %46, i8** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_reference_is_branch(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @git_reference_is_remote(%struct.TYPE_5__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
