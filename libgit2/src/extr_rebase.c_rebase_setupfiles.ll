; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_setupfiles.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_setupfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32, i32, i64, i32, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@REBASE_DIR_MODE = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to create rebase directory '%s'\00", align 1
@ORIG_DETACHED_HEAD = common dso_local global i8* null, align 8
@HEAD_NAME_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ONTO_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@ORIG_HEAD_FILE = common dso_local global i32 0, align 4
@QUIET_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"t\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rebase_setupfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_setupfiles(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = call i32 @git_oid_fmt(i8* %12, i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = call i32 @git_oid_fmt(i8* %15, i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @REBASE_DIR_MODE, align 4
  %26 = call i64 @p_mkdir(i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @GIT_ERROR_OS, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %87

34:                                               ; preds = %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** @ORIG_DETACHED_HEAD, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i8* [ %40, %39 ], [ %44, %41 ]
  store i8* %46, i8** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = call i64 @git_repository__set_orig_head(i32 %49, i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = load i32, i32* @HEAD_NAME_FILE, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 (%struct.TYPE_5__*, i32, i32, i8*, ...) @rebase_setupfile(%struct.TYPE_5__* %55, i32 %56, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = load i32, i32* @ONTO_FILE, align 4
  %63 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %64 = call i64 (%struct.TYPE_5__*, i32, i32, i8*, ...) @rebase_setupfile(%struct.TYPE_5__* %61, i32 %62, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* %12)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = load i32, i32* @ORIG_HEAD_FILE, align 4
  %69 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %70 = call i64 (%struct.TYPE_5__*, i32, i32, i8*, ...) @rebase_setupfile(%struct.TYPE_5__* %67, i32 %68, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %15)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = load i32, i32* @QUIET_FILE, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i64 (%struct.TYPE_5__*, i32, i32, i8*, ...) @rebase_setupfile(%struct.TYPE_5__* %73, i32 %74, i32 0, i8* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72, %66, %60, %54, %45
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %87

84:                                               ; preds = %72
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = call i32 @rebase_setupfiles_merge(%struct.TYPE_5__* %85)
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %83, %28
  %88 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i64 @p_mkdir(i32, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i64 @git_repository__set_orig_head(i32, i32*) #2

declare dso_local i64 @rebase_setupfile(%struct.TYPE_5__*, i32, i32, i8*, ...) #2

declare dso_local i32 @rebase_setupfiles_merge(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
