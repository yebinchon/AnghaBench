; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_jpeg.c_LoadJPGBuff.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_jpeg.c_LoadJPGBuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* (i32, i32, i32, i32)* }
%struct.my_jpeg_error_mgr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@my_jpeg_error_exit = common dso_local global i32 0, align 4
@errormsg = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@JPOOL_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadJPGBuff(i8* %0, i32 %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.jpeg_decompress_struct, align 8
  %13 = alloca %struct.my_jpeg_error_mgr, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = getelementptr inbounds %struct.my_jpeg_error_mgr, %struct.my_jpeg_error_mgr* %13, i32 0, i32 1
  %18 = call i32 @jpeg_std_error(%struct.TYPE_4__* %17)
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @my_jpeg_error_exit, align 4
  %21 = getelementptr inbounds %struct.my_jpeg_error_mgr, %struct.my_jpeg_error_mgr* %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.my_jpeg_error_mgr, %struct.my_jpeg_error_mgr* %13, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @setjmp(i32 %24) #3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i64, i64* @errormsg, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  %31 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %12)
  store i32 -1, i32* %6, align 4
  br label %137

32:                                               ; preds = %5
  %33 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %12)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @jpeg_buffer_src(%struct.jpeg_decompress_struct* %12, i8* %34, i32 %35)
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %12, i32 %37)
  %39 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %12)
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %41, %43
  store i32 %44, i32* %15, align 4
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %46, %48
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* %16, align 4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i64 @malloc(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8**, i8*** %9, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @memset(i8* %63, i32 0, i32 %65)
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32* (i32, i32, i32, i32)*, i32* (i32, i32, i32, i32)** %69, align 8
  %71 = ptrtoint %struct.jpeg_decompress_struct* %12 to i32
  %72 = load i32, i32* @JPOOL_IMAGE, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32* %70(i32 %71, i32 %72, i32 %73, i32 1)
  store i32* %74, i32** %14, align 8
  br label %75

75:                                               ; preds = %133, %32
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %134

81:                                               ; preds = %75
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %12, i32* %82, i32 1)
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8**, i8*** %9, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @j_putRGBAScanline(i32 %90, i32 %92, i8* %94, i32 %97)
  br label %133

99:                                               ; preds = %81
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @j_putRGBScanline(i32 %106, i32 %108, i8* %110, i32 %113)
  br label %132

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i8**, i8*** %9, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @j_putGrayScanlineToRGB(i32 %122, i32 %124, i8* %126, i32 %129)
  br label %131

131:                                              ; preds = %119, %115
  br label %132

132:                                              ; preds = %131, %103
  br label %133

133:                                              ; preds = %132, %87
  br label %75

134:                                              ; preds = %75
  %135 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %12)
  %136 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %12)
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %134, %27
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @jpeg_std_error(%struct.TYPE_4__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_buffer_src(%struct.jpeg_decompress_struct*, i8*, i32) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i32*, i32) #1

declare dso_local i32 @j_putRGBAScanline(i32, i32, i8*, i32) #1

declare dso_local i32 @j_putRGBScanline(i32, i32, i8*, i32) #1

declare dso_local i32 @j_putGrayScanlineToRGB(i32, i32, i8*, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
