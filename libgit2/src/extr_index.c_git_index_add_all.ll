; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_add_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"index add all\00", align 1
@GIT_INDEX_ADD_CHECK_PATHSPEC = common dso_local global i32 0, align 4
@GIT_INDEX_ADD_FORCE = common dso_local global i32 0, align 4
@INDEX_ACTION_ADDALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_add_all(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @INDEX_OWNER(i32* %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @git_repository__ensure_not_bare(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %73

31:                                               ; preds = %5
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @git_pathspec__init(%struct.TYPE_4__* %15, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GIT_INDEX_ADD_CHECK_PATHSPEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @GIT_INDEX_ADD_FORCE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @git_ignore__check_pathspec_for_exact_ignores(i32* %48, i32* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %68

54:                                               ; preds = %47, %42, %37
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @INDEX_ACTION_ADDALL, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @index_apply_to_wd_diff(i32* %55, i32 %56, i32* %57, i32 %58, i32 %59, i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @git_error_set_after_callback(i32 %65)
  br label %67

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @git_iterator_free(i32* %69)
  %71 = call i32 @git_pathspec__clear(%struct.TYPE_4__* %15)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %35, %29
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @INDEX_OWNER(i32*) #1

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #1

declare dso_local i32 @git_pathspec__init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @git_ignore__check_pathspec_for_exact_ignores(i32*, i32*, i32) #1

declare dso_local i32 @index_apply_to_wd_diff(i32*, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @git_error_set_after_callback(i32) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_pathspec__clear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
