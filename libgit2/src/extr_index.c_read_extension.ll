; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_read_extension.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_read_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.index_extension = type { i32, i8* }

@INDEX_FOOTER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"extension is truncated\00", align 1
@INDEX_EXT_TREECACHE_SIG = common dso_local global i32 0, align 4
@INDEX_EXT_UNMERGED_SIG = common dso_local global i32 0, align 4
@INDEX_EXT_CONFLICT_NAME_SIG = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unsupported mandatory extension: '%.4s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_5__*, i8*, i64)* @read_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_extension(i64* %0, %struct.TYPE_5__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.index_extension, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @memcpy(%struct.index_extension* %10, i8* %12, i32 16)
  %14 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ntohl(i32 %15)
  %17 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 16
  store i64 %21, i64* %11, align 8
  %22 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %11, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* @INDEX_FOOTER_SIZE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %27, %4
  %38 = call i32 @index_error_invalid(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %118

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sge i32 %44, 65
  br i1 %45, label %46, label %110

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %110

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @INDEX_EXT_TREECACHE_SIG, align 4
  %57 = call i64 @memcmp(i8* %55, i32 %56, i32 4)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i64 @git_tree_cache_read(i32* %61, i8* %63, i64 %66, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %118

72:                                               ; preds = %59
  br label %109

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @INDEX_EXT_UNMERGED_SIG, align 4
  %77 = call i64 @memcmp(i8* %75, i32 %76, i32 4)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  %83 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = call i64 @read_reuc(%struct.TYPE_5__* %80, i8* %82, i64 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %118

89:                                               ; preds = %79
  br label %108

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @INDEX_EXT_CONFLICT_NAME_SIG, align 4
  %94 = call i64 @memcmp(i8* %92, i32 %93, i32 4)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 8
  %100 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = call i64 @read_conflict_names(%struct.TYPE_5__* %97, i8* %99, i64 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %118

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %72
  br label %115

110:                                              ; preds = %46, %39
  %111 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %112 = getelementptr inbounds %struct.index_extension, %struct.index_extension* %10, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @git_error_set(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %5, align 4
  br label %118

115:                                              ; preds = %109
  %116 = load i64, i64* %11, align 8
  %117 = load i64*, i64** %6, align 8
  store i64 %116, i64* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %110, %105, %88, %71, %37
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @memcpy(%struct.index_extension*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @index_error_invalid(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @git_tree_cache_read(i32*, i8*, i64, i32*) #1

declare dso_local i64 @read_reuc(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i64 @read_conflict_names(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
