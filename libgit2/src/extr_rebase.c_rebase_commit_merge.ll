; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_commit_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_commit_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@REWRITTEN_FILE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%.*s %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32*, i32*, i8*, i8*)* @rebase_commit_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_commit_merge(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %22 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_8__* @git_array_get(i32 %31, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %13, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = call i32 @assert(%struct.TYPE_8__* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GIT_EUNMERGED, align 4
  %42 = call i32 @rebase_ensure_not_dirty(i32 %40, i32 0, i32 1, i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @git_repository_head(i32** %14, i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %53 = call i32 @git_reference_peel(i32** %15, i32* %51, i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @git_repository_index(i32** %17, i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @rebase_commit__create(i32** %16, %struct.TYPE_9__* %62, i32* %63, i32* %64, i32* %65, i32* %66, i8* %67, i8* %68)
  store i32 %69, i32* %21, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %61
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = call i32* @git_commit_id(i32* %75)
  %77 = call i32 @git_reference__update_for_commit(i32 %74, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %77, i32* %21, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %61, %55, %50, %44, %6
  br label %104

80:                                               ; preds = %71
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @git_oid_fmt(i8* %25, i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32* @git_commit_id(i32* %84)
  %86 = call i32 @git_oid_fmt(i8* %28, i32* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = load i32, i32* @REWRITTEN_FILE, align 4
  %89 = load i32, i32* @O_CREAT, align 4
  %90 = load i32, i32* @O_WRONLY, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @O_APPEND, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %95 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %96 = call i32 @rebase_setupfile(%struct.TYPE_9__* %87, i32 %88, i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %94, i8* %25, i32 %95, i8* %28)
  store i32 %96, i32* %21, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %104

99:                                               ; preds = %80
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32* @git_commit_id(i32* %101)
  %103 = call i32 @git_oid_cpy(i32* %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %98, %79
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @git_index_free(i32* %105)
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @git_reference_free(i32* %107)
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @git_commit_free(i32* %109)
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @git_commit_free(i32* %111)
  %113 = load i32, i32* %21, align 4
  %114 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @git_array_get(i32, i32) #2

declare dso_local i32 @assert(%struct.TYPE_8__*) #2

declare dso_local i32 @rebase_ensure_not_dirty(i32, i32, i32, i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @rebase_commit__create(i32**, %struct.TYPE_9__*, i32*, i32*, i32*, i32*, i8*, i8*) #2

declare dso_local i32 @git_reference__update_for_commit(i32, i32*, i8*, i32*, i8*) #2

declare dso_local i32* @git_commit_id(i32*) #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i32 @rebase_setupfile(%struct.TYPE_9__*, i32, i32, i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
