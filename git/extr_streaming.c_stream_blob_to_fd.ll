; ModuleID = '/home/carl/AnghaBench/git/extr_streaming.c_stream_blob_to_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_streaming.c_stream_blob_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.stream_filter = type { i32 }
%struct.git_istream = type { i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_blob_to_fd(i32 %0, %struct.object_id* %1, %struct.stream_filter* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.stream_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.git_istream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16384 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.stream_filter* %2, %struct.stream_filter** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %19 = load %struct.object_id*, %struct.object_id** %7, align 8
  %20 = load %struct.stream_filter*, %struct.stream_filter** %8, align 8
  %21 = call %struct.git_istream* @open_istream(%struct.object_id* %19, i32* %11, i64* %12, %struct.stream_filter* %20)
  store %struct.git_istream* %21, %struct.git_istream** %10, align 8
  %22 = load %struct.git_istream*, %struct.git_istream** %10, align 8
  %23 = icmp ne %struct.git_istream* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load %struct.stream_filter*, %struct.stream_filter** %8, align 8
  %26 = icmp ne %struct.stream_filter* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.stream_filter*, %struct.stream_filter** %8, align 8
  %29 = call i32 @free_stream_filter(%struct.stream_filter* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %121

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @OBJ_BLOB, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %117

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %100, %76, %37
  %39 = load %struct.git_istream*, %struct.git_istream** %10, align 8
  %40 = getelementptr inbounds [16384 x i8], [16384 x i8]* %15, i64 0, i64 0
  %41 = call i32 @read_istream(%struct.git_istream* %39, i8* %40, i32 16384)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %117

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %101

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 16384, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16384 x i8], [16384 x i8]* %15, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %57

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %38

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %52, %49
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @SEEK_CUR, align 4
  %88 = call i64 @lseek(i32 %85, i32 %86, i32 %87)
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %117

91:                                               ; preds = %84, %81
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds [16384 x i8], [16384 x i8]* %15, i64 0, i64 0
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @write_in_full(i32 %93, i8* %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %117

100:                                              ; preds = %92
  br label %38

101:                                              ; preds = %48
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* @SEEK_CUR, align 4
  %109 = call i64 @lseek(i32 %105, i32 %107, i32 %108)
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @xwrite(i32 %112, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %104
  br label %117

116:                                              ; preds = %111, %101
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %116, %115, %99, %90, %44, %36
  %118 = load %struct.git_istream*, %struct.git_istream** %10, align 8
  %119 = call i32 @close_istream(%struct.git_istream* %118)
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %30
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.git_istream* @open_istream(%struct.object_id*, i32*, i64*, %struct.stream_filter*) #1

declare dso_local i32 @free_stream_filter(%struct.stream_filter*) #1

declare dso_local i32 @read_istream(%struct.git_istream*, i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @write_in_full(i32, i8*, i32) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

declare dso_local i32 @close_istream(%struct.git_istream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
