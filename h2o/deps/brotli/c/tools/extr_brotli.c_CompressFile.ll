; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CompressFile.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CompressFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32* }

@kFileBufferSize = common dso_local global i64 0, align 8
@BROTLI_FALSE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to read input [%s]: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i64 0, align 8
@BROTLI_OPERATION_FINISH = common dso_local global i32 0, align 4
@BROTLI_OPERATION_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to compress data [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to write output [%s]: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*)* @CompressFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CompressFile(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i64, i64* @kFileBufferSize, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %124, %2
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @kFileBufferSize, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @fread(i32* %26, i32 1, i64 %27, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ferror(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %23
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @PrintablePath(i32 %44)
  %46 = load i32, i32* @errno, align 4
  %47 = call i8* @strerror(i32 %46)
  %48 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %47)
  %49 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %49, i64* %3, align 8
  br label %125

50:                                               ; preds = %23
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @feof(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @BROTLI_TRUE, align 8
  br label %60

58:                                               ; preds = %50
  %59 = load i64, i64* @BROTLI_FALSE, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %60, %20, %17
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @BROTLI_OPERATION_FINISH, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @BROTLI_OPERATION_PROCESS, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @BrotliEncoderCompressStream(i32* %63, i32 %71, i64* %6, i32** %7, i64* %8, i32** %9, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @PrintablePath(i32 %78)
  %80 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %81, i64* %3, align 8
  br label %125

82:                                               ; preds = %70
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @kFileBufferSize, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load i64, i64* @kFileBufferSize, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @fwrite(i32* %92, i32 1, i64 %93, i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ferror(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %86
  %104 = load i32, i32* @stderr, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @PrintablePath(i32 %107)
  %109 = load i32, i32* @errno, align 4
  %110 = call i8* @strerror(i32 %109)
  %111 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* %110)
  %112 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %112, i64* %3, align 8
  br label %125

113:                                              ; preds = %86
  %114 = load i64, i64* @kFileBufferSize, align 8
  store i64 %114, i64* %8, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %9, align 8
  br label %118

118:                                              ; preds = %113, %82
  %119 = load i32*, i32** %5, align 8
  %120 = call i64 @BrotliEncoderIsFinished(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %123, i64* %3, align 8
  br label %125

124:                                              ; preds = %118
  br label %17

125:                                              ; preds = %122, %103, %74, %40
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

declare dso_local i64 @fread(i32*, i32, i64, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @PrintablePath(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @BrotliEncoderCompressStream(i32*, i32, i64*, i32**, i64*, i32**, i32*) #1

declare dso_local i32 @fwrite(i32*, i32, i64, i32) #1

declare dso_local i64 @BrotliEncoderIsFinished(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
