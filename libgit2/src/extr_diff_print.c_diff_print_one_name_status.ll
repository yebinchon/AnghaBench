; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_one_name_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_one_name_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_11__ = type { i32 (i8*, i8*)*, i32, i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)*, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@GIT_DIFF_SHOW_UNMODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%c\09%s%c %s%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%c\09%s%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c\09%s\0A\00", align 1
@GIT_DIFF_LINE_FILE_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, float, i8*)* @diff_print_one_name_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_print_one_name_status(%struct.TYPE_10__* %0, float %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32 (i8*, i8*)*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store float %1, float* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call signext i8 @git_diff_status_char(i32 %21)
  store i8 %22, i8* %12, align 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %24, align 8
  %26 = icmp ne i32 (i8*, i8*)* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %29, align 8
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 (i8*, i8*)* [ %30, %27 ], [ @git__strcmp, %31 ]
  store i32 (i8*, i8*)* %33, i32 (i8*, i8*)** %13, align 8
  %34 = load float, float* %6, align 4
  %35 = call i32 @GIT_UNUSED(float %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GIT_DIFF_SHOW_UNMODIFIED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i8, i8* %12, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %189

47:                                               ; preds = %42, %32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call signext i8 @diff_pick_suffix(i64 %51)
  store i8 %52, i8* %10, align 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call signext i8 @diff_pick_suffix(i64 %56)
  store i8 %57, i8* %11, align 1
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @git_buf_clear(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %63, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %47
  %70 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %13, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 %70(i8* %74, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %69
  %82 = load i32*, i32** %9, align 8
  %83 = load i8, i8* %12, align 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %11, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i32*, i8*, i8, i8*, ...) @git_buf_printf(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %83, i8* %87, i32 %89, i8* %93, i32 %95)
  br label %159

97:                                               ; preds = %69, %47
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %101, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %97
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load i32*, i32** %9, align 8
  %121 = load i8, i8* %12, align 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i8, i8* %10, align 1
  %127 = sext i8 %126 to i32
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = call i32 (i32*, i8*, i8, i8*, ...) @git_buf_printf(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %121, i8* %125, i32 %127, i8* %131, i32 %133)
  br label %158

135:                                              ; preds = %113, %107, %97
  %136 = load i8, i8* %10, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 32
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32*, i32** %9, align 8
  %141 = load i8, i8* %12, align 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i8, i8* %10, align 1
  %147 = sext i8 %146 to i32
  %148 = call i32 (i32*, i8*, i8, i8*, ...) @git_buf_printf(i32* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 signext %141, i8* %145, i32 %147)
  br label %157

149:                                              ; preds = %135
  %150 = load i32*, i32** %9, align 8
  %151 = load i8, i8* %12, align 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i32*, i8*, i8, i8*, ...) @git_buf_printf(i32* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8 signext %151, i8* %155)
  br label %157

157:                                              ; preds = %149, %139
  br label %158

158:                                              ; preds = %157, %119
  br label %159

159:                                              ; preds = %158, %81
  %160 = load i32*, i32** %9, align 8
  %161 = call i64 @git_buf_oom(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 -1, i32* %4, align 4
  br label %189

164:                                              ; preds = %159
  %165 = load i32, i32* @GIT_DIFF_LINE_FILE_HDR, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @git_buf_cstr(i32* %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @git_buf_len(i32* %174)
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 %181(%struct.TYPE_10__* %182, i32* null, %struct.TYPE_12__* %184, i32 %187)
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %164, %163, %46
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local signext i8 @git_diff_status_char(i32) #1

declare dso_local i32 @git__strcmp(i8*, i8*) #1

declare dso_local i32 @GIT_UNUSED(float) #1

declare dso_local signext i8 @diff_pick_suffix(i64) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8 signext, i8*, ...) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
