; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_mailmap_add_entry_unterminated.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_mailmap_add_entry_unterminated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@mailmap_entry_replace = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @mailmap_add_entry_unterminated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mailmap_add_entry_unterminated(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %21 = call %struct.TYPE_8__* @git__calloc(i32 1, i32 32)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %23 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %17, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %26, %9
  %35 = phi i1 [ false, %26 ], [ false, %9 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @git__substrdup(i8* %41, i64 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_8__*
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %49)
  br label %51

51:                                               ; preds = %40, %34
  %52 = load i64, i64* %14, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i8* @git__substrdup(i8* %55, i64 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_8__*
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %54, %51
  %66 = load i64, i64* %16, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i8*, i8** %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i8* @git__substrdup(i8* %69, i64 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_8__*
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %77)
  br label %79

79:                                               ; preds = %68, %65
  %80 = load i8*, i8** %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = call i8* @git__substrdup(i8* %80, i64 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_8__*
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %93 = load i32, i32* @mailmap_entry_replace, align 4
  %94 = call i32 @git_vector_insert_sorted(i32* %91, %struct.TYPE_8__* %92, i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @GIT_EEXISTS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = load i32, i32* @GIT_OK, align 4
  store i32 %99, i32* %19, align 4
  br label %107

100:                                              ; preds = %79
  %101 = load i32, i32* %19, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %105 = call i32 @mailmap_entry_free(%struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %98
  %108 = load i32, i32* %19, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_8__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @git__substrdup(i8*, i64) #1

declare dso_local i32 @git_vector_insert_sorted(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mailmap_entry_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
