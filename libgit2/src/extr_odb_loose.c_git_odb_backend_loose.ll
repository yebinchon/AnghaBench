; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_git_odb_backend_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_git_odb_backend_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@GIT_ODB_BACKEND_VERSION = common dso_local global i32 0, align 4
@Z_BEST_SPEED = common dso_local global i32 0, align 4
@GIT_OBJECT_DIR_MODE = common dso_local global i32 0, align 4
@GIT_OBJECT_FILE_MODE = common dso_local global i32 0, align 4
@loose_backend__read = common dso_local global i32 0, align 4
@loose_backend__write = common dso_local global i32 0, align 4
@loose_backend__read_prefix = common dso_local global i32 0, align 4
@loose_backend__read_header = common dso_local global i32 0, align 4
@loose_backend__writestream = common dso_local global i32 0, align 4
@loose_backend__readstream = common dso_local global i32 0, align 4
@loose_backend__exists = common dso_local global i32 0, align 4
@loose_backend__exists_prefix = common dso_local global i32 0, align 4
@loose_backend__foreach = common dso_local global i32 0, align 4
@loose_backend__freshen = common dso_local global i32 0, align 4
@loose_backend__free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_backend_loose(i32** %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi i1 [ false, %6 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %15, i64 128, i32 %28)
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %15, i64 %30, i32 2)
  %32 = load i64, i64* %15, align 8
  %33 = call %struct.TYPE_6__* @git__calloc(i32 1, i64 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %13, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__* %34)
  %36 = load i32, i32* @GIT_ODB_BACKEND_VERSION, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 11
  store i32 %36, i32* %39, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 47
  br i1 %59, label %60, label %69

60:                                               ; preds = %21
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 47, i8* %68, align 1
  br label %69

69:                                               ; preds = %60, %21
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @Z_BEST_SPEED, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @GIT_OBJECT_DIR_MODE, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @GIT_OBJECT_FILE_MODE, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 10
  store i32* @loose_backend__read, i32** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 9
  store i32* @loose_backend__write, i32** %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 8
  store i32* @loose_backend__read_prefix, i32** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 7
  store i32* @loose_backend__read_header, i32** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  store i32* @loose_backend__writestream, i32** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  store i32* @loose_backend__readstream, i32** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i32* @loose_backend__exists, i32** %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i32* @loose_backend__exists_prefix, i32** %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32* @loose_backend__foreach, i32** %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32* @loose_backend__freshen, i32** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32* @loose_backend__free, i32** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %131 = bitcast %struct.TYPE_6__* %130 to i32*
  %132 = load i32**, i32*** %7, align 8
  store i32* %131, i32** %132, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local %struct.TYPE_6__* @git__calloc(i32, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
