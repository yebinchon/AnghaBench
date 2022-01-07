; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_patch_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_patch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_13__*, i32)*, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@DIFF_OLD_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@DIFF_NEW_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNREADABLE = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_FILE_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, float, i8*)* @diff_print_patch_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_print_patch_file(%struct.TYPE_11__* %0, float %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store float %1, float* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** @DIFF_OLD_PREFIX_DEFAULT, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i8* [ %24, %21 ], [ %26, %25 ]
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** @DIFF_NEW_PREFIX_DEFAULT, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i8* [ %36, %33 ], [ %38, %37 ]
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GIT_DIFF_FORCE_BINARY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %47, %39
  %55 = phi i1 [ true, %39 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %54
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %84, %80 ], [ %89, %85 ]
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %71, %54
  %93 = load float, float* %6, align 4
  %94 = call i32 @GIT_UNUSED(float %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @S_ISDIR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %92
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %132, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %132, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GIT_DELTA_UNREADABLE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125, %113, %107, %101, %92
  store i32 0, i32* %4, align 4
  br label %174

133:                                              ; preds = %125, %119
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @git_diff_delta__format_file_header(i32 %136, %struct.TYPE_11__* %137, i8* %138, i8* %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %174

145:                                              ; preds = %133
  %146 = load i32, i32* @GIT_DIFF_LINE_FILE_HDR, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @git_buf_cstr(i32 %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @git_buf_len(i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 4
  %166 = load i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_13__*, i32)** %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %166(%struct.TYPE_11__* %167, i32* null, %struct.TYPE_13__* %169, i32 %172)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %145, %143, %132
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @GIT_UNUSED(float) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @git_diff_delta__format_file_header(i32, %struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32) #1

declare dso_local i32 @git_buf_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
