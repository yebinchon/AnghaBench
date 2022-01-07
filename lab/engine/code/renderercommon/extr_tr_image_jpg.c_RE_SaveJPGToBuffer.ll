; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_RE_SaveJPGToBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_RE_SaveJPGToBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32, i8*)* }
%struct.jpeg_compress_struct = type { i32, i32, i32, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_12__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@R_JPGErrorExit = common dso_local global i32 0, align 4
@R_JPGOutputMessage = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JCS_RGB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RE_SaveJPGToBuffer(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.jpeg_compress_struct, align 8
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca [1 x i32*], align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %23 = call %struct.TYPE_12__* @jpeg_std_error(i32* %22)
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %24, align 8
  %25 = load i32, i32* @R_JPGErrorExit, align 4
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @R_JPGOutputMessage, align 4
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @setjmp(i32 %34) #3
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %7
  %38 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %16)
  %39 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ri, i32 0, i32 0), align 8
  %40 = load i32, i32* @PRINT_ALL, align 4
  %41 = call i32 %39(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %116

42:                                               ; preds = %7
  %43 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %16)
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @jpegDest(%struct.jpeg_compress_struct* %16, i32* %44, i64 %45)
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 2
  store i32 3, i32* %51, align 8
  %52 = load i32, i32* @JCS_RGB, align 4
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  store i32 %52, i32* %53, align 8
  %54 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %16)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @jpeg_set_quality(%struct.jpeg_compress_struct* %16, i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 85
  br i1 %59, label %60, label %69

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 5
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %60, %42
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @jpeg_start_compress(%struct.jpeg_compress_struct* %16, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %72, %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %20, align 4
  br label %78

78:                                               ; preds = %84, %69
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %20, align 4
  %90 = mul nsw i32 %88, %89
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %20, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %90, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %85, i64 %96
  %98 = getelementptr inbounds [1 x i32*], [1 x i32*]* %18, i64 0, i64 0
  store i32* %97, i32** %98, align 8
  %99 = getelementptr inbounds [1 x i32*], [1 x i32*]* %18, i64 0, i64 0
  %100 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %16, i32** %99, i32 1)
  br label %78

101:                                              ; preds = %78
  %102 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %16)
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %19, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %108, %112
  store i64 %113, i64* %21, align 8
  %114 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %16)
  %115 = load i64, i64* %21, align 8
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %101, %37
  %117 = load i64, i64* %8, align 8
  ret i64 %117
}

declare dso_local %struct.TYPE_12__* @jpeg_std_error(i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpegDest(%struct.jpeg_compress_struct*, i32*, i64) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i32**, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
