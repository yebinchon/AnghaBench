; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_diff_file_content_commit_to_str.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_diff_file_content_commit_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"-dirty\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Subproject commit %s%s\0A\00", align 1
@GIT_DIFF_FLAG__FREE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @diff_file_content_commit_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_file_content_commit_to_str(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %20, i32* %8, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %97

23:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_submodule_lookup(i32** %11, i32 %26, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @GIT_EEXISTS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @git_error_clear()
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

42:                                               ; preds = %23
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %52 = call i32 @git_submodule_status(i32* %12, i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @git_submodule_free(i32* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

58:                                               ; preds = %42
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %58
  %68 = load i32*, i32** %11, align 8
  %69 = call i32* @git_submodule_wd_id(i32* %68)
  store i32* %69, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* @git_submodule_head_id(i32* %72)
  store i32* %73, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %71, %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @git_oid_cpy(i32* %79, i32* %80)
  %82 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %75, %71, %58
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @GIT_SUBMODULE_STATUS_IS_WD_DIRTY(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @git_submodule_free(i32* %95)
  br label %97

97:                                               ; preds = %94, %2
  %98 = trunc i64 %17 to i32
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @git_oid_tostr(i8* %19, i32 %98, i32* %102)
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @git_buf_printf(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %19, i8* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

108:                                              ; preds = %97
  %109 = call i32 @git_buf_len(i32* %8)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = call i32 @git_buf_detach(i32* %8)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @GIT_DIFF_FLAG__FREE_DATA, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %108, %107, %54, %40
  %123 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_submodule_status(i32*, i32, i32, i32) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32* @git_submodule_wd_id(i32*) #2

declare dso_local i32* @git_submodule_head_id(i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i64 @GIT_SUBMODULE_STATUS_IS_WD_DIRTY(i32) #2

declare dso_local i32 @git_oid_tostr(i8*, i32, i32*) #2

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @git_buf_len(i32*) #2

declare dso_local i32 @git_buf_detach(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
