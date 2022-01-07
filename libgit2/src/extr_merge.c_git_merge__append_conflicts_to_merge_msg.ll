; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge__append_conflicts_to_merge_msg.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge__append_conflicts_to_merge_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_MERGE_MSG_FILE = common dso_local global i32 0, align 4
@GIT_FILEBUF_APPEND = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0AConflicts:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge__append_conflicts_to_merge_msg(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %12, i32* %6, align 4
  %13 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @git_index_has_conflicts(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GIT_MERGE_MSG_FILE, align 4
  %23 = call i32 @git_buf_joinpath(%struct.TYPE_12__* %7, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GIT_FILEBUF_APPEND, align 4
  %29 = load i32, i32* @GIT_MERGE_FILE_MODE, align 4
  %30 = call i32 @git_filebuf_open(i32* %6, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18
  br label %72

33:                                               ; preds = %25
  %34 = call i32 (i32*, i8*, ...) @git_filebuf_printf(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %67, %33
  %36 = load i64, i64* %9, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @git_index_entrycount(i32* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call %struct.TYPE_11__* @git_index_get_byindex(i32* %41, i64 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = call i32 @git_index_entry_is_conflict(%struct.TYPE_11__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %67

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51, %48
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32*, i8*, ...) @git_filebuf_printf(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %35

70:                                               ; preds = %35
  %71 = call i32 @git_filebuf_commit(i32* %6)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %32
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @git_filebuf_cleanup(i32* %6)
  br label %77

77:                                               ; preds = %75, %72
  %78 = call i32 @git_buf_dispose(%struct.TYPE_12__* %7)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_index_has_conflicts(i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_filebuf_printf(i32*, i8*, ...) #2

declare dso_local i64 @git_index_entrycount(i32*) #2

declare dso_local %struct.TYPE_11__* @git_index_get_byindex(i32*, i64) #2

declare dso_local i32 @git_index_entry_is_conflict(%struct.TYPE_11__*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @git_filebuf_cleanup(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
