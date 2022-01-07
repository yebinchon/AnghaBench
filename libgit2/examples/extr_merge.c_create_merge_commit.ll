; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_merge.c_create_merge_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_merge.c_create_merge_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32** }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"failed to get repo HEAD\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to resolve refish %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to DWIM reference\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Me\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"me@example.com\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to create signature\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to get branch name of merged ref\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Merge %s '%s'\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to peel head reference\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to write merged tree\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"failed to lookup tree\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"failed to create commit\00", align 1
@MERGE_COMMIT_MSG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*)* @create_merge_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_merge_commit(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* null, i32** %12, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = call i32** @calloc(i32 %24, i32 8)
  store i32** %25, i32*** %15, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_repository_head(i32** %14, i32* %26)
  %28 = call i32 @check_lg2(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @resolve_refish(i32** %13, i32* %29, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32**, i32*** %15, align 8
  %46 = call i32 @free(i32** %45)
  store i32 -1, i32* %4, align 4
  br label %160

47:                                               ; preds = %3
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @git_reference_dwim(i32** %12, i32* %48, i8* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = call %struct.TYPE_5__* (...) @git_error_last()
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @check_lg2(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %58)
  %60 = call i32 @git_signature_now(i32** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @check_lg2(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @git_branch_name(i8** %16, i32* %65)
  %67 = call i32 @check_lg2(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %72

68:                                               ; preds = %47
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @git_annotated_commit_id(i32* %69)
  %71 = call i8* @git_oid_tostr_s(i32 %70)
  store i8* %71, i8** %16, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %77 = load i8*, i8** %16, align 8
  %78 = call i8* @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %76, i8* %77)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i64, i64* %17, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %17, align 8
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i64, i64* %17, align 8
  %87 = call i8* @malloc(i64 %86)
  store i8* %87, i8** %18, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %94 = load i8*, i8** %16, align 8
  %95 = call i8* @snprintf(i8* %88, i64 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %93, i8* %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %156

100:                                              ; preds = %85
  %101 = load i32**, i32*** %15, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %105 = call i32 @git_reference_peel(i32** %102, i32* %103, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @check_lg2(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i64 0, i64* %19, align 8
  br label %108

108:                                              ; preds = %129, %100
  %109 = load i64, i64* %19, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %109, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load i32**, i32*** %15, align 8
  %117 = load i64, i64* %19, align 8
  %118 = add i64 %117, 1
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %19, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @git_annotated_commit_id(i32* %126)
  %128 = call i32 @git_commit_lookup(i32** %119, i32* %120, i32 %127)
  br label %129

129:                                              ; preds = %115
  %130 = load i64, i64* %19, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %19, align 8
  br label %108

132:                                              ; preds = %108
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @git_index_write_tree(i32* %8, i32* %133)
  %135 = call i32 @check_lg2(i32 %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @git_tree_lookup(i32** %10, i32* %136, i32* %8)
  %138 = call i32 @check_lg2(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32* null)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @git_reference_name(i32* %140)
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = load i32**, i32*** %15, align 8
  %151 = call i32 @git_commit_create(i32* %9, i32* %139, i32 %141, i32* %142, i32* %143, i32* null, i8* %144, i32* %145, i32 %149, i32** %150)
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @check_lg2(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @git_repository_state_cleanup(i32* %154)
  br label %156

156:                                              ; preds = %132, %99
  %157 = load i32**, i32*** %15, align 8
  %158 = call i32 @free(i32** %157)
  %159 = load i32, i32* %20, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %156, %37
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i64 @resolve_refish(i32**, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @git_reference_dwim(i32**, i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @git_error_last(...) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_branch_name(i8**, i32*) #1

declare dso_local i8* @git_oid_tostr_s(i32) #1

declare dso_local i32 @git_annotated_commit_id(i32*) #1

declare dso_local i8* @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_commit_create(i32*, i32*, i32, i32*, i32*, i32*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_repository_state_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
