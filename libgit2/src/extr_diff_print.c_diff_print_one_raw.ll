; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_one_raw.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_diff_print_one_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)*, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_ERROR_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"the patch input contains %d id characters (cannot print %d)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c":%06o %06o %s... %s... %c\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c":%06o %06o %s %s %c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%03u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\09%s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@GIT_DIFF_LINE_FILE_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, float, i8*)* @diff_print_one_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_print_one_raw(%struct.TYPE_10__* %0, float %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store float %1, float* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call signext i8 @git_diff_status_char(i32 %23)
  store i8 %24, i8* %11, align 1
  %25 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load float, float* %6, align 4
  %35 = call i32 @GIT_UNUSED(float %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GIT_DIFF_SHOW_UNMODIFIED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load i8, i8* %11, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %196

47:                                               ; preds = %42, %3
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @git_buf_clear(i32* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  br label %65

60:                                               ; preds = %47
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i32 [ %59, %55 ], [ %64, %60 ]
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @GIT_ERROR_PATCH, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @git_error_set(i32 %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %196

79:                                               ; preds = %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = call i32 @git_oid_tostr(i8* %29, i32 %83, i32* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = call i32 @git_oid_tostr(i8* %33, i32 %91, i32* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %101 = icmp sle i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 (i32*, i8*, i64, ...) @git_buf_printf(i32* %96, i8* %103, i64 %107, i32 %111, i8* %29, i8* %33, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %79
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i32*, i8*, i64, ...) @git_buf_printf(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %119, %79
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %129, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %125
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i32*, i8*, i64, ...) @git_buf_printf(i32* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %140, i64 %144)
  br label %166

146:                                              ; preds = %125
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  br label %163

158:                                              ; preds = %146
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i64 [ %157, %153 ], [ %162, %158 ]
  %165 = call i32 (i32*, i8*, i64, ...) @git_buf_printf(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %163, %135
  %167 = load i32*, i32** %9, align 8
  %168 = call i64 @git_buf_oom(i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %196

171:                                              ; preds = %166
  %172 = load i32, i32* @GIT_DIFF_LINE_FILE_HDR, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @git_buf_cstr(i32* %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @git_buf_len(i32* %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, i32)** %187, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %188(%struct.TYPE_10__* %189, i32* null, %struct.TYPE_12__* %191, i32 %194)
  store i32 %195, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %196

196:                                              ; preds = %171, %170, %72, %46
  %197 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local signext i8 @git_diff_status_char(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GIT_UNUSED(float) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i32, i32) #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i64, ...) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_len(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
