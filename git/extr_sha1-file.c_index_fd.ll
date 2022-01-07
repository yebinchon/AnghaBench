; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_index_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_index_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i64, i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_fd(%struct.index_state* %0, %struct.object_id* %1, i32 %2, %struct.stat* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.stat* %3, %struct.stat** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @OBJ_BLOB, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %7
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.index_state*, %struct.index_state** %8, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i64 @would_convert_to_git_filter_fd(%struct.index_state* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.index_state*, %struct.index_state** %8, align 8
  %29 = load %struct.object_id*, %struct.object_id** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @index_stream_convert_blob(%struct.index_state* %28, %struct.object_id* %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %15, align 4
  br label %91

34:                                               ; preds = %22, %19, %7
  %35 = load %struct.stat*, %struct.stat** %11, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @S_ISREG(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.index_state*, %struct.index_state** %8, align 8
  %42 = load %struct.object_id*, %struct.object_id** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @index_pipe(%struct.index_state* %41, %struct.object_id* %42, i32 %43, i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %15, align 4
  br label %90

48:                                               ; preds = %34
  %49 = load %struct.stat*, %struct.stat** %11, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @big_file_threshold, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @OBJ_BLOB, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.index_state*, %struct.index_state** %8, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @would_convert_to_git(%struct.index_state* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %54, %48
  %67 = load %struct.index_state*, %struct.index_state** %8, align 8
  %68 = load %struct.object_id*, %struct.object_id** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.stat*, %struct.stat** %11, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @xsize_t(i64 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @index_core(%struct.index_state* %67, %struct.object_id* %68, i32 %69, i32 %73, i32 %74, i8* %75, i32 %76)
  store i32 %77, i32* %15, align 4
  br label %89

78:                                               ; preds = %61, %58
  %79 = load %struct.object_id*, %struct.object_id** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.stat*, %struct.stat** %11, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @xsize_t(i64 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @index_stream(%struct.object_id* %79, i32 %80, i32 %84, i32 %85, i8* %86, i32 %87)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %78, %66
  br label %90

90:                                               ; preds = %89, %40
  br label %91

91:                                               ; preds = %90, %27
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load i32, i32* %15, align 4
  ret i32 %94
}

declare dso_local i64 @would_convert_to_git_filter_fd(%struct.index_state*, i8*) #1

declare dso_local i32 @index_stream_convert_blob(%struct.index_state*, %struct.object_id*, i32, i8*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @index_pipe(%struct.index_state*, %struct.object_id*, i32, i32, i8*, i32) #1

declare dso_local i64 @would_convert_to_git(%struct.index_state*, i8*) #1

declare dso_local i32 @index_core(%struct.index_state*, %struct.object_id*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @xsize_t(i64) #1

declare dso_local i32 @index_stream(%struct.object_id*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
