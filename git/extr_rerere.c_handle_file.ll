; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_handle_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_handle_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.rerere_io_file = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.rerere_io = type { i32 }

@rerere_file_getline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"there were errors while writing '%s' (%s)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to flush '%s'\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"could not parse conflict hunks in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*, i8*)* @handle_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_file(%struct.index_state* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rerere_io_file, align 8
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.index_state*, %struct.index_state** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @ll_merge_marker_size(%struct.index_state* %13, i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = call i32 @memset(%struct.rerere_io_file* %11, i32 0, i32 32)
  %17 = load i32, i32* @rerere_file_getline, align 4
  %18 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @error_errno(i32 %29, i8* %30)
  store i32 %31, i32* %5, align 4
  br label %110

32:                                               ; preds = %4
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @error_errno(i32 %45, i8* %46)
  %48 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @fclose(i8* %49)
  store i32 -1, i32* %5, align 4
  br label %110

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast %struct.rerere_io_file* %11 to %struct.rerere_io*
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @handle_path(i8* %53, %struct.rerere_io* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @fclose(i8* %58)
  %60 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 (i32, i8*, ...) @error(i32 %65, i8* %66, i8* %70)
  br label %72

72:                                               ; preds = %64, %52
  %73 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @fclose(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @error_errno(i32 %84, i8* %85)
  %87 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %77, %72
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @unlink_or_warn(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (i32, i8*, ...) @error(i32 %99, i8* %100)
  store i32 %101, i32* %5, align 4
  br label %110

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 -1, i32* %5, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %107, %98, %44, %28
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @ll_merge_marker_size(%struct.index_state*, i8*) #1

declare dso_local i32 @memset(%struct.rerere_io_file*, i32, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @fclose(i8*) #1

declare dso_local i32 @handle_path(i8*, %struct.rerere_io*, i32) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
