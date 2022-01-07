; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diff_helpers.c_diff_foreach_via_iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diff_helpers.c_diff_foreach_via_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4
@GIT_EUSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_foreach_via_iterator(i32* %0, i64 (%struct.TYPE_9__*, float, i8*)* %1, i32 %2, i64 (%struct.TYPE_9__*, i32*, i8*)* %3, i64 (%struct.TYPE_9__*, i32*, i32*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64 (%struct.TYPE_9__*, float, i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64 (%struct.TYPE_9__*, i32*, i8*)*, align 8
  %12 = alloca i64 (%struct.TYPE_9__*, i32*, i32*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i64 (%struct.TYPE_9__*, float, i8*)* %1, i64 (%struct.TYPE_9__*, float, i8*)** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 (%struct.TYPE_9__*, i32*, i8*)* %3, i64 (%struct.TYPE_9__*, i32*, i8*)** %11, align 8
  store i64 (%struct.TYPE_9__*, i32*, i32*, i8*)* %4, i64 (%struct.TYPE_9__*, i32*, i32*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @git_diff_num_deltas(i32* %24)
  store i64 %25, i64* %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @GIT_UNUSED(i32 %26)
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %146, %6
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @git_patch_from_diff(i32** %16, i32* %33, i64 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %16, align 8
  %38 = call %struct.TYPE_9__* @git_patch_get_delta(i32* %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %17, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i64 (%struct.TYPE_9__*, float, i8*)*, i64 (%struct.TYPE_9__*, float, i8*)** %9, align 8
  %43 = icmp ne i64 (%struct.TYPE_9__*, float, i8*)* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load i64 (%struct.TYPE_9__*, float, i8*)*, i64 (%struct.TYPE_9__*, float, i8*)** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = load i64, i64* %14, align 8
  %48 = uitofp i64 %47 to float
  %49 = load i64, i64* %15, align 8
  %50 = uitofp i64 %49 to float
  %51 = fdiv float %48, %50
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 %45(%struct.TYPE_9__* %46, float %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @git_patch_free(i32* %56)
  br label %150

58:                                               ; preds = %44, %32
  %59 = load i32*, i32** %16, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %67, %61
  %75 = phi i1 [ true, %61 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @cl_assert(i32 %76)
  br label %146

78:                                               ; preds = %58
  %79 = load i64 (%struct.TYPE_9__*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i8*)** %11, align 8
  %80 = icmp ne i64 (%struct.TYPE_9__*, i32*, i8*)* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i64 (%struct.TYPE_9__*, i32*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i32*, i8*)** %12, align 8
  %83 = icmp ne i64 (%struct.TYPE_9__*, i32*, i32*, i8*)* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @git_patch_free(i32* %85)
  br label %146

87:                                               ; preds = %81, %78
  %88 = load i32*, i32** %16, align 8
  %89 = call i64 @git_patch_num_hunks(i32* %88)
  store i64 %89, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %90

90:                                               ; preds = %140, %87
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %90
  %95 = load i32*, i32** %16, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i32 @git_patch_get_hunk(i32** %20, i64* %22, i32* %95, i64 %96)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = load i64 (%struct.TYPE_9__*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i8*)** %11, align 8
  %100 = icmp ne i64 (%struct.TYPE_9__*, i32*, i8*)* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load i64 (%struct.TYPE_9__*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i8*)** %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 %102(%struct.TYPE_9__* %103, i32* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @git_patch_free(i32* %109)
  br label %150

111:                                              ; preds = %101, %94
  store i64 0, i64* %21, align 8
  br label %112

112:                                              ; preds = %136, %111
  %113 = load i64, i64* %21, align 8
  %114 = load i64, i64* %22, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %112
  %117 = load i32*, i32** %16, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %21, align 8
  %120 = call i32 @git_patch_get_line_in_hunk(i32** %23, i32* %117, i64 %118, i64 %119)
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i64 (%struct.TYPE_9__*, i32*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i32*, i8*)** %12, align 8
  %123 = icmp ne i64 (%struct.TYPE_9__*, i32*, i32*, i8*)* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i64 (%struct.TYPE_9__*, i32*, i32*, i8*)*, i64 (%struct.TYPE_9__*, i32*, i32*, i8*)** %12, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = load i32*, i32** %20, align 8
  %128 = load i32*, i32** %23, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = call i64 %125(%struct.TYPE_9__* %126, i32* %127, i32* %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @git_patch_free(i32* %133)
  br label %150

135:                                              ; preds = %124, %116
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %21, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %21, align 8
  br label %112

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %18, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %18, align 8
  br label %90

143:                                              ; preds = %90
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @git_patch_free(i32* %144)
  br label %146

146:                                              ; preds = %143, %84, %74
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %14, align 8
  br label %28

149:                                              ; preds = %28
  store i32 0, i32* %7, align 4
  br label %153

150:                                              ; preds = %132, %108, %55
  %151 = call i32 (...) @git_error_clear()
  %152 = load i32, i32* @GIT_EUSER, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %149
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @GIT_UNUSED(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_9__* @git_patch_get_delta(i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_get_hunk(i32**, i64*, i32*, i64) #1

declare dso_local i32 @git_patch_get_line_in_hunk(i32**, i32*, i64, i64) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
