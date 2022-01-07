; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_zstream.c_git_zstream_get_output_chunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_zstream.c_git_zstream_get_output_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i8*, i32* }

@UINT_MAX = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@GIT_ZSTREAM_INFLATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_zstream_get_output_chunk(i8* %0, i64* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i32* %14, i32** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UINT_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i64, i64* @UINT_MAX, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load i32, i32* @Z_NO_FLUSH, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* @Z_FINISH, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %31, %23
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %43
  %67 = load i64, i64* @UINT_MAX, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %43
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GIT_ZSTREAM_INFLATE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @inflate(%struct.TYPE_7__* %83, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  br label %99

90:                                               ; preds = %71
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @deflate(%struct.TYPE_7__* %92, i32 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = call i64 @zstream_seterr(%struct.TYPE_6__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %128

104:                                              ; preds = %99
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %105, %109
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %121, %125
  %127 = load i64*, i64** %6, align 8
  store i64 %126, i64* %127, align 8
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %104, %103
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @inflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @zstream_seterr(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
