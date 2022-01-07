; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_fetchhead.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_fetchhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_annotated_commit_from_fetchhead(%struct.TYPE_4__** %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load i32*, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %20, %17, %14, %5
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @annotated_commit_init_from_id(%struct.TYPE_4__** %27, i32* %28, i32* %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @git__strdup(i8* %35)
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @git__strdup(i8* %45)
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %34, %33
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @annotated_commit_init_from_id(%struct.TYPE_4__**, i32*, i32*, i8*) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
