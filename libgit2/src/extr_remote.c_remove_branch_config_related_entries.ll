; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_remove_branch_config_related_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_remove_branch_config_related_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"branch\\..+\\.remote\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"branch.%.*s.merge\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"branch.%.*s.remote\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @remove_branch_config_related_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_branch_config_related_entries(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @git_repository_config__weakptr(i32** %7, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @git_config_iterator_glob_new(i32** %9, i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %82, %37, %25
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @git_config_next(%struct.TYPE_3__** %8, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i8* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %26

38:                                               ; preds = %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @name_offset(i64* %12, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = call i32 @git_buf_clear(i32* %10)
  %44 = load i64, i64* %12, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @git_buf_printf(i32* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %83

50:                                               ; preds = %38
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @git_buf_cstr(i32* %10)
  %53 = call i32 @git_config_delete_entry(i32* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @GIT_ENOTFOUND, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %83

60:                                               ; preds = %55
  %61 = call i32 (...) @git_error_clear()
  br label %62

62:                                               ; preds = %60, %50
  %63 = call i32 @git_buf_clear(i32* %10)
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @git_buf_printf(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %83

70:                                               ; preds = %62
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @git_buf_cstr(i32* %10)
  %73 = call i32 @git_config_delete_entry(i32* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @GIT_ENOTFOUND, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %83

80:                                               ; preds = %75
  %81 = call i32 (...) @git_error_clear()
  br label %82

82:                                               ; preds = %80, %70
  br label %26

83:                                               ; preds = %79, %69, %59, %49, %26
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @GIT_ITEROVER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = call i32 @git_buf_dispose(i32* %10)
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @git_config_iterator_free(i32* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %23, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i32 @git_config_iterator_glob_new(i32**, i32*, i8*) #1

declare dso_local i32 @git_config_next(%struct.TYPE_3__**, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @name_offset(i64*, i32) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i64 @git_buf_printf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @git_config_delete_entry(i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_config_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
