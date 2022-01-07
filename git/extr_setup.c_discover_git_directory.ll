; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_discover_git_directory.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_discover_git_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.repository_format = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REPOSITORY_FORMAT_INIT = common dso_local global %struct.repository_format zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/config\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ignoring git dir '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @discover_git_directory(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.repository_format, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = bitcast %struct.repository_format* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.repository_format* @REPOSITORY_FORMAT_INIT to i8*), i64 4, i1 false)
  %21 = call i64 @strbuf_getcwd(%struct.strbuf* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %107

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = call i64 @setup_git_directory_gently_1(%struct.strbuf* %6, %struct.strbuf* %27, i32 0)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 -1, i32* %3, align 4
  br label %107

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @is_absolute_path(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %37
  %46 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @strbuf_setlen(%struct.strbuf* %54, i64 %55)
  br label %59

57:                                               ; preds = %45
  %58 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 47)
  br label %59

59:                                               ; preds = %57, %53
  %60 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @strbuf_insert(%struct.strbuf* %60, i64 %61, i64 %63, i64 %65)
  br label %67

67:                                               ; preds = %59, %37, %32
  %68 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %69 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %71, %72
  %74 = call i32 @get_common_dir(%struct.strbuf* %68, i64 %73)
  %75 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %76 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %78, %79
  %81 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @read_repository_format(%struct.repository_format* %11, i64 %83)
  %85 = call i32 @strbuf_release(%struct.strbuf* %6)
  %86 = call i64 @verify_repository_format(%struct.repository_format* %11, %struct.strbuf* %7)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %67
  %89 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %91, %92
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %95)
  %97 = call i32 @strbuf_release(%struct.strbuf* %7)
  %98 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @strbuf_setlen(%struct.strbuf* %98, i64 %99)
  %101 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @strbuf_setlen(%struct.strbuf* %101, i64 %102)
  %104 = call i32 @clear_repository_format(%struct.repository_format* %11)
  store i32 -1, i32* %3, align 4
  br label %107

105:                                              ; preds = %67
  %106 = call i32 @clear_repository_format(%struct.repository_format* %11)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %88, %30, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getcwd(%struct.strbuf*) #2

declare dso_local i64 @setup_git_directory_gently_1(%struct.strbuf*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @is_absolute_path(i64) #2

declare dso_local i32 @strcmp(i8*, i64) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i64, i64, i64) #2

declare dso_local i32 @get_common_dir(%struct.strbuf*, i64) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @read_repository_format(%struct.repository_format*, i64) #2

declare dso_local i64 @verify_repository_format(%struct.repository_format*, %struct.strbuf*) #2

declare dso_local i32 @warning(i8*, i64, i64) #2

declare dso_local i32 @clear_repository_format(%struct.repository_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
