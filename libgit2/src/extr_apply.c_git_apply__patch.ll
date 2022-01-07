; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"removal patch leaves file contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_apply__patch(i32* %0, i8** %1, i32* %2, i8* %3, i64 %4, %struct.TYPE_12__* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %21 = load i32, i32* @GIT_APPLY_OPTIONS_INIT, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i32 0, i32* %22, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %7
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br label %40

40:                                               ; preds = %37, %34, %28, %25, %7
  %41 = phi i1 [ false, %34 ], [ false, %28 ], [ false, %25 ], [ false, %7 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %14, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i8**, i8*** %9, align 8
  store i8* null, i8** %51, align 8
  %52 = load i32*, i32** %10, align 8
  store i32 0, i32* %52, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %50
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %19, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @git__strdup(i32 %67)
  store i8* %68, i8** %16, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %79

77:                                               ; preds = %60
  %78 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %76, %73 ], [ %78, %77 ]
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %79, %50
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = call i32 @apply_binary(i32* %91, i8* %92, i64 %93, %struct.TYPE_12__* %94)
  store i32 %95, i32* %18, align 4
  br label %114

96:                                               ; preds = %81
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32*, i32** %8, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = call i32 @apply_hunks(i32* %103, i8* %104, i64 %105, %struct.TYPE_12__* %106, %struct.TYPE_14__* %15)
  store i32 %107, i32* %18, align 4
  br label %113

108:                                              ; preds = %96
  %109 = load i32*, i32** %8, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @git_buf_put(i32* %109, i8* %110, i64 %111)
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %137

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @git_buf_len(i32* %127)
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i32 @apply_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %131, i32* %18, align 4
  br label %137

132:                                              ; preds = %126, %118
  %133 = load i8*, i8** %16, align 8
  %134 = load i8**, i8*** %9, align 8
  store i8* %133, i8** %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %130, %117
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i8*, i8** %16, align 8
  %142 = call i32 @git__free(i8* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %18, align 4
  ret i32 %144
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @git__strdup(i32) #1

declare dso_local i32 @apply_binary(i32*, i8*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @apply_hunks(i32*, i8*, i64, %struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i64) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @apply_err(i8*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
