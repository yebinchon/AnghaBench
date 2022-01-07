; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_canonicalize_directory_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_canonicalize_directory_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @canonicalize_directory_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_directory_path(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %132

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = call i32 @memcpy(i8* %26, i8* %29, i64 %33)
  store i32 0, i32* %4, align 4
  br label %132

35:                                               ; preds = %20
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* @strchr(i8* %38, i8 signext 47)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %132

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @git__strdup(i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %132

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %114, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @strrchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %117

59:                                               ; preds = %57
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @git_vector_bsearch2(i64* %12, i32* %65, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %111, %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %12, align 8
  %75 = call %struct.TYPE_8__* @git_vector_get(i32* %73, i64 %74)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %8, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %114

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = call i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_8__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %111

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @strncmp(i8* %83, i8* %86, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %9, align 8
  %92 = load i64, i64* %13, align 8
  store i64 %92, i64* %14, align 8
  br label %114

93:                                               ; preds = %82
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @strncasecmp(i8* %94, i8* %97, i64 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %9, align 8
  %106 = load i64, i64* %13, align 8
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %109

108:                                              ; preds = %93
  br label %114

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %71

114:                                              ; preds = %108, %90, %71
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 0, i8* %116, align 1
  br label %50

117:                                              ; preds = %57
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = icmp ne %struct.TYPE_8__* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @memcpy(i8* %123, i8* %126, i64 %127)
  br label %129

129:                                              ; preds = %120, %117
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @git__free(i8* %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %48, %41, %23, %19
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @git_vector_bsearch2(i64*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @git_vector_get(i32*, i64) #1

declare dso_local i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_8__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
