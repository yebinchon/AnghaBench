; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__update_for_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__update_for_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference__update_for_commit(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @git_commit_lookup(i32** %13, i32* %18, i32* %19)
  store i32 %20, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @commit_type(i32* %30)
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @git_commit_summary(i32* %32)
  %34 = call i32 @git_buf_printf(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %5
  br label %68

37:                                               ; preds = %28
  %38 = load i32*, i32** %13, align 8
  %39 = call i32* @git_commit_committer(i32* %38)
  store i32* %39, i32** %15, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call i32 @ensure_is_an_updatable_direct_reference(%struct.TYPE_8__* %43)
  store i32 %44, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %6, align 4
  br label %75

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @git_buf_cstr(i32* %14)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @reference__create(%struct.TYPE_8__** %12, i32* %49, i32 %52, i32* %53, i32* null, i32 1, i32* %54, i32 %55, i32* %58, i32* null)
  store i32 %59, i32* %16, align 4
  br label %67

60:                                               ; preds = %37
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @git_buf_cstr(i32* %14)
  %66 = call i32 @git_reference__update_terminal(i32* %61, i8* %62, i32* %63, i32* %64, i32 %65)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %60, %48
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = call i32 @git_reference_free(%struct.TYPE_8__* %69)
  %71 = call i32 @git_buf_dispose(i32* %14)
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @git_commit_free(i32* %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %68, %46
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @commit_type(i32*) #1

declare dso_local i32 @git_commit_summary(i32*) #1

declare dso_local i32* @git_commit_committer(i32*) #1

declare dso_local i32 @ensure_is_an_updatable_direct_reference(%struct.TYPE_8__*) #1

declare dso_local i32 @reference__create(%struct.TYPE_8__**, i32*, i32, i32*, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_reference__update_terminal(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
