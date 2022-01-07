; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_init_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_init_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@REBASE_MERGE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rebase: checkout %s\00", align 1
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*)* @rebase_init_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_init_merge(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_26__, align 4
  %14 = alloca %struct.TYPE_26__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = bitcast %struct.TYPE_26__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_26__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = bitcast %struct.TYPE_26__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_26__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %19 = call i32 @GIT_UNUSED(%struct.TYPE_27__* %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REBASE_MERGE_DIR, align 4
  %24 = call i32 @git_buf_joinpath(%struct.TYPE_26__* %14, i32 %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %118

27:                                               ; preds = %5
  %28 = call i8* @git_buf_detach(%struct.TYPE_26__* %14)
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 7
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %33)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %27
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @strcmp(i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @git__strdup(i64 %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 6
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %54)
  br label %59

56:                                               ; preds = %39, %27
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %45
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %61 = call i64 @rebase_onto_name(%struct.TYPE_27__* %60)
  %62 = call i8* @git__strdup(i64 %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %78 = call i32 @git_annotated_commit_id(%struct.TYPE_27__* %77)
  %79 = call i32 @git_oid_cpy(i32* %76, i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %83 = call i32 @git_annotated_commit_id(%struct.TYPE_27__* %82)
  %84 = call i32 @git_oid_cpy(i32* %81, i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = call i32 @rebase_setupfiles(%struct.TYPE_25__* %85)
  store i32 %86, i32* %15, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %116, label %88

88:                                               ; preds = %59
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %90 = call i64 @rebase_onto_name(%struct.TYPE_27__* %89)
  %91 = call i32 @git_buf_printf(%struct.TYPE_26__* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  store i32 %91, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %96 = call i32 @git_annotated_commit_id(%struct.TYPE_27__* %95)
  %97 = call i32 @git_commit_lookup(i32** %12, %struct.TYPE_24__* %94, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = call i32 @git_checkout_tree(%struct.TYPE_24__* %100, i32* %101, i32* %104)
  store i32 %105, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %99
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = load i32, i32* @GIT_HEAD_FILE, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %111 = call i32 @git_annotated_commit_id(%struct.TYPE_27__* %110)
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @git_reference_create(i32** %11, %struct.TYPE_24__* %108, i32 %109, i32 %111, i32 1, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107, %99, %93, %88, %59
  br label %118

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %116, %26
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @git_reference_free(i32* %119)
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @git_commit_free(i32* %121)
  %123 = call i32 @git_buf_dispose(%struct.TYPE_26__* %13)
  %124 = call i32 @git_buf_dispose(%struct.TYPE_26__* %14)
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(%struct.TYPE_27__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_26__*, i32, i32) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_26__*) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #2

declare dso_local i64 @strcmp(i64, i8*) #2

declare dso_local i8* @git__strdup(i64) #2

declare dso_local i64 @rebase_onto_name(%struct.TYPE_27__*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_annotated_commit_id(%struct.TYPE_27__*) #2

declare dso_local i32 @rebase_setupfiles(%struct.TYPE_25__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_26__*, i8*, i64) #2

declare dso_local i32 @git_commit_lookup(i32**, %struct.TYPE_24__*, i32) #2

declare dso_local i32 @git_checkout_tree(%struct.TYPE_24__*, i32*, i32*) #2

declare dso_local i32 @git_reference_create(i32**, %struct.TYPE_24__*, i32, i32, i32, i32) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_26__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
