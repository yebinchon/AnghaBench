; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_image.c_uiImageAppend.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_image.c_uiImageAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%union.anon = type { [4 x i64] }

@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@CAIRO_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiImageAppend(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @cairo_image_surface_create(i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @cairo_surface_status(i32* %22)
  %24 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @cairo_surface_flush(i32* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %13, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @cairo_image_surface_get_data(i32* %32)
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %12, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @cairo_image_surface_get_stride(i32* %35)
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %131, %27
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %134

41:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %119, %41
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %122

47:                                               ; preds = %42
  %48 = load i64*, i64** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 24
  %56 = bitcast %union.anon* %17 to i32*
  store i32 %55, i32* %56, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 16
  %64 = bitcast %union.anon* %17 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %73, 8
  %75 = bitcast %union.anon* %17 to i32*
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = bitcast %union.anon* %17 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 8
  %88 = bitcast %union.anon* %17 to [4 x i64]*
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %88, i64 0, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %12, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  %95 = bitcast %union.anon* %17 to [4 x i64]*
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %95, i64 0, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %97, i64* %102, align 8
  %103 = bitcast %union.anon* %17 to [4 x i64]*
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 0, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %12, align 8
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  store i64 %105, i64* %110, align 8
  %111 = bitcast %union.anon* %17 to [4 x i64]*
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %111, i64 0, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 %113, i64* %118, align 8
  br label %119

119:                                              ; preds = %47
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %15, align 4
  br label %42

122:                                              ; preds = %42
  %123 = load i32, i32* %10, align 4
  %124 = load i64*, i64** %13, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64* %126, i64** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i64*, i64** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64* %130, i64** %12, align 8
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %37

134:                                              ; preds = %37
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @cairo_surface_mark_dirty(i32* %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @g_ptr_array_add(i32 %139, i32* %140)
  ret void
}

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i64 @cairo_surface_status(i32*) #1

declare dso_local i32 @cairo_surface_flush(i32*) #1

declare dso_local i64 @cairo_image_surface_get_data(i32*) #1

declare dso_local i32 @cairo_image_surface_get_stride(i32*) #1

declare dso_local i32 @cairo_surface_mark_dirty(i32*) #1

declare dso_local i32 @g_ptr_array_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
