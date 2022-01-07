; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_delta__format_file_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_delta__format_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@DIFF_OLD_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@DIFF_NEW_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@GIT_ABBREV_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"diff --git %s %s\0A\00", align 1
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@GIT_DELTA_COPIED = common dso_local global i64 0, align 8
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"--- %s\0A+++ %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_delta__format_file_header(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__, align 4
  %12 = alloca %struct.TYPE_25__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = bitcast %struct.TYPE_25__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_25__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.TYPE_25__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_25__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %18 = call i32 @delta_is_unchanged(%struct.TYPE_24__* %17)
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** @DIFF_OLD_PREFIX_DEFAULT, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** @DIFF_NEW_PREFIX_DEFAULT, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @GIT_ABBREV_DEFAULT, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @diff_delta_format_path(%struct.TYPE_25__* %11, i8* %34, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @diff_delta_format_path(%struct.TYPE_25__* %12, i8* %42, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %33
  br label %129

50:                                               ; preds = %41
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %52 = call i32 @git_buf_clear(%struct.TYPE_25__* %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @git_buf_printf(%struct.TYPE_25__* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %50
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %50
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %76 = call i32 @diff_delta_format_similarity_header(%struct.TYPE_25__* %74, %struct.TYPE_24__* %75)
  store i32 %76, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %129

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %70, %64
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @diff_print_oid_range(%struct.TYPE_25__* %84, %struct.TYPE_24__* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %129

90:                                               ; preds = %83
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @diff_delta_format_with_paths(%struct.TYPE_25__* %98, %struct.TYPE_24__* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %97, %90
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %113, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %122 = call i32 @diff_print_modes(%struct.TYPE_25__* %120, %struct.TYPE_24__* %121)
  br label %123

123:                                              ; preds = %119, %109, %106
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = call i64 @git_buf_oom(%struct.TYPE_25__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 -1, i32* %14, align 4
  br label %128

128:                                              ; preds = %127, %123
  br label %129

129:                                              ; preds = %128, %89, %78, %49
  %130 = call i32 @git_buf_dispose(%struct.TYPE_25__* %11)
  %131 = call i32 @git_buf_dispose(%struct.TYPE_25__* %12)
  %132 = load i32, i32* %14, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @delta_is_unchanged(%struct.TYPE_24__*) #2

declare dso_local i32 @diff_delta_format_path(%struct.TYPE_25__*, i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_25__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_25__*, i8*, i32, i32) #2

declare dso_local i32 @diff_delta_format_similarity_header(%struct.TYPE_25__*, %struct.TYPE_24__*) #2

declare dso_local i32 @diff_print_oid_range(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #2

declare dso_local i32 @diff_delta_format_with_paths(%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, i32) #2

declare dso_local i32 @diff_print_modes(%struct.TYPE_25__*, %struct.TYPE_24__*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_25__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
