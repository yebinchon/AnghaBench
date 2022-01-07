; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame.c_blame_internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame.c_blame_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_15__*, i32* }
%struct.TYPE_14__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @blame_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blame_internal(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = call i32 @load_blob(%struct.TYPE_16__* %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_blame__get_origin(i32** %5, %struct.TYPE_16__* %12, i32 %15, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %1
  br label %96

22:                                               ; preds = %11
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @git_blob_rawcontent(i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @git_blob_rawsize(i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = call %struct.TYPE_15__* @git__calloc(i32 1, i32 40)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %4, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = call i64 @index_blob_lines(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %51, %55
  %57 = add nsw i64 %56, 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %22
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = add nsw i64 %74, 1
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %65, %22
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @git_blame__like_git(%struct.TYPE_16__* %90, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %78, %21
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %4, align 8
  br label %100

100:                                              ; preds = %103, %96
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = icmp ne %struct.TYPE_15__* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %6, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = call i32* @hunk_from_entry(%struct.TYPE_15__* %107, %struct.TYPE_16__* %108)
  store i32* %109, i32** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @git_vector_insert(i32* %111, i32* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = call i32 @git_blame__free_entry(%struct.TYPE_15__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %4, align 8
  br label %100

117:                                              ; preds = %100
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @load_blob(%struct.TYPE_16__*) #1

declare dso_local i32 @git_blame__get_origin(i32**, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @git_blob_rawcontent(i32) #1

declare dso_local i32 @git_blob_rawsize(i32) #1

declare dso_local %struct.TYPE_15__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__*) #1

declare dso_local i64 @index_blob_lines(%struct.TYPE_16__*) #1

declare dso_local i32 @git_blame__like_git(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @hunk_from_entry(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @git_blame__free_entry(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
