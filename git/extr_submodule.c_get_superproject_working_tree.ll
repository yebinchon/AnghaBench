; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_get_superproject_working_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_get_superproject_working_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32, i32 }
%struct.strbuf = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"--literal-pathspecs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ls-files\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"--stage\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"--full-name\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"could not start ls-files in ..\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"160000\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"returned path string doesn't match cwd?\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ls-tree returned unexpected return code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_superproject_working_tree() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.child_process, align 4
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = bitcast %struct.child_process* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %15 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = call i8* @real_path_if_valid(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  %17 = call i8* (...) @xgetcwd()
  store i8* %17, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %18 = call i32 (...) @is_inside_work_tree()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %117

21:                                               ; preds = %0
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i8* null, i8** %1, align 8
  br label %117

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @relative_path(i8* %26, i8* %27, %struct.strbuf* %3)
  store i8* %28, i8** %7, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 5
  %30 = call i32 @prepare_submodule_repo_env(i32* %29)
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 5
  %32 = call i32 @argv_array_pop(i32* %31)
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @argv_array_pushl(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %34, i32* null)
  %36 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = call i64 @start_command(%struct.child_process* %2)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %45 = call i32 (i32, ...) @die(i32 %44)
  br label %46

46:                                               ; preds = %43, %25
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PATH_MAX, align 4
  %50 = call i64 @strbuf_read(%struct.strbuf* %3, i32 %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @starts_with(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %46
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strlen(i8* %59)
  store i32 %60, i32* %11, align 4
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @strchr(i32 %62, i8 signext 9)
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @strlen(i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %58
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70, %58
  %81 = call i32 @BUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %70
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @xstrdup(i8* %83)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %13, align 8
  %92 = call i8* @real_path(i8* %91)
  store i8* %92, i8** %6, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @free(i8* %93)
  br label %95

95:                                               ; preds = %82, %46
  %96 = call i32 @strbuf_release(%struct.strbuf* %3)
  %97 = call i32 @finish_command(%struct.child_process* %2)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i8* null, i8** %1, align 8
  br label %117

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i8* null, i8** %1, align 8
  br label %117

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, ...) @die(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i8*, i8** %6, align 8
  store i8* %116, i8** %1, align 8
  br label %117

117:                                              ; preds = %115, %107, %100, %24, %20
  %118 = load i8*, i8** %1, align 8
  ret i8* %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @real_path_if_valid(i8*) #2

declare dso_local i8* @xgetcwd(...) #2

declare dso_local i32 @is_inside_work_tree(...) #2

declare dso_local i8* @relative_path(i8*, i8*, %struct.strbuf*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_pop(i32*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @starts_with(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @real_path(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
