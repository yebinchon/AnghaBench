; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__locking.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"locked-file\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[section]\0A\09name = value\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"section.name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"other value\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"section2.name3\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"more value\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__locking() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @cl_git_mkfile(i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @git_config_open_ondisk(i32** %1, i8* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call i32 @git_config_entry_free(%struct.TYPE_4__* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_lock(i32** %4, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_config_set_string(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_config_set_string(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @git_config_open_ondisk(i32** %2, i8* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = call i32 @git_config_entry_free(%struct.TYPE_4__* %39)
  %41 = load i32, i32* @GIT_ENOTFOUND, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @cl_git_fail_with(i32 %41, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_config_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = call i32 @git_config_entry_free(%struct.TYPE_4__* %54)
  %56 = load i32, i32* @GIT_ENOTFOUND, align 4
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 @cl_git_fail_with(i32 %56, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @git_transaction_commit(i32* %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @git_transaction_free(i32* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = call i32 @git_config_entry_free(%struct.TYPE_4__* %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = call i32 @git_config_entry_free(%struct.TYPE_4__* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @git_config_free(i32* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @git_config_open_ondisk(i32** %1, i8* %85)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = call i32 @git_config_entry_free(%struct.TYPE_4__* %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @git_config_get_entry(%struct.TYPE_4__** %3, i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = call i32 @git_config_entry_free(%struct.TYPE_4__* %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @git_config_free(i32* %106)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_get_entry(%struct.TYPE_4__**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_4__*) #1

declare dso_local i32 @git_config_lock(i32**, i32*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_transaction_commit(i32*) #1

declare dso_local i32 @git_transaction_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
