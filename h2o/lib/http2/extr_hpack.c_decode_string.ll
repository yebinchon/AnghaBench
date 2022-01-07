; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_decode_string.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_decode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32**, i32*, i32, i8**)* @decode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @decode_string(i32* %0, i32** %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp uge i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

20:                                               ; preds = %5
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @h2o_hpack_decode_int(i32** %27, i32* %28, i32 7)
  store i32 %29, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

32:                                               ; preds = %20
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %9, align 8
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %38 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = icmp sgt i64 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

47:                                               ; preds = %35
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call %struct.TYPE_4__* @alloc_buf(i32* %48, i32 %50)
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %12, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i8**, i8*** %11, align 8
  %60 = call i64 @h2o_hpack_decode_huffman(i8* %54, i32* %56, i32 %57, i32 %58, i8** %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @SIZE_MAX, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

66:                                               ; preds = %47
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 0, i8* %73, align 1
  br label %128

74:                                               ; preds = %32
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32*, i32** %9, align 8
  %78 = load i32**, i32*** %8, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = ptrtoint i32* %77 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = icmp sgt i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32**, i32*** %8, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 58
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32**, i32*** %8, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i32, i32* %14, align 4
  %99 = load i8**, i8*** %11, align 8
  %100 = call i32 @h2o_hpack_validate_header_name(i8* %97, i32 %98, i8** %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %135

103:                                              ; preds = %94, %89
  br label %111

104:                                              ; preds = %86
  %105 = load i32**, i32*** %8, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = load i32, i32* %14, align 4
  %109 = load i8**, i8*** %11, align 8
  %110 = call i32 @h2o_hpack_validate_header_value(i8* %107, i32 %108, i8** %109)
  br label %111

111:                                              ; preds = %104, %103
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call %struct.TYPE_4__* @alloc_buf(i32* %112, i32 %113)
  store %struct.TYPE_4__* %114, %struct.TYPE_4__** %12, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32**, i32*** %8, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @memcpy(i8* %117, i32* %119, i32 %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %111, %66
  %129 = load i32, i32* %14, align 4
  %130 = load i32**, i32*** %8, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = sext i32 %129 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %130, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %134, %struct.TYPE_4__** %6, align 8
  br label %135

135:                                              ; preds = %128, %102, %85, %65, %46, %31, %19
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %136
}

declare dso_local i32 @h2o_hpack_decode_int(i32**, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @alloc_buf(i32*, i32) #1

declare dso_local i64 @h2o_hpack_decode_huffman(i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @h2o_hpack_validate_header_name(i8*, i32, i8**) #1

declare dso_local i32 @h2o_hpack_validate_header_value(i8*, i32, i8**) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
