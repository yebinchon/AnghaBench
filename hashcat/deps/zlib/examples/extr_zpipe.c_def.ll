; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_def.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i8*, i8*, i8*, i8* }

@CHUNK = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_ERRNO = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @def(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @CHUNK, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @CHUNK, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load i8*, i8** @Z_NULL, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** @Z_NULL, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** @Z_NULL, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @deflateInit(%struct.TYPE_5__* %11, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @Z_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %100, %36
  %38 = load i32, i32* @CHUNK, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @fread(i8* %19, i32 1, i32 %38, i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @ferror(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 @deflateEnd(%struct.TYPE_5__* %11)
  %47 = load i32, i32* @Z_ERRNO, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @feof(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @Z_FINISH, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %9, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i8* %19, i8** %58, align 8
  br label %59

59:                                               ; preds = %90, %56
  %60 = load i32, i32* @CHUNK, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i8* %22, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @deflate(%struct.TYPE_5__* %11, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @Z_STREAM_ERROR, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* @CHUNK, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %72, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fwrite(i8* %22, i32 1, i32 %77, i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %59
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @ferror(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %59
  %87 = call i32 @deflateEnd(%struct.TYPE_5__* %11)
  %88 = load i32, i32* @Z_ERRNO, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %59, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @Z_FINISH, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %37, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @Z_STREAM_END, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 @deflateEnd(%struct.TYPE_5__* %11)
  %111 = load i32, i32* @Z_OK, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %104, %86, %45, %34
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @deflateInit(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @deflateEnd(%struct.TYPE_5__*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
