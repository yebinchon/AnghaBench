; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_decode_huffman.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_decode_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@NGHTTP2_HUFF_INVALID_FOR_HEADER_NAME = common dso_local global i32 0, align 4
@NGHTTP2_HUFF_UPPER_CASE_CHAR = common dso_local global i32 0, align 4
@h2o_hpack_err_found_upper_case_in_header_name = common dso_local global i8* null, align 8
@h2o_hpack_soft_err_found_invalid_char_in_header_name = common dso_local global i8* null, align 8
@NGHTTP2_HUFF_INVALID_FOR_HEADER_VALUE = common dso_local global i32 0, align 4
@h2o_hpack_soft_err_found_invalid_char_in_header_value = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_hpack_decode_huffman(i8* %0, i32* %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %21

21:                                               ; preds = %44, %5
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 4
  %30 = call i8* @huffdecode4(i8* %26, i32 %29, i32* %14, i32* %16, i32* %15)
  store i8* %30, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @SIZE_MAX, align 8
  store i64 %33, i64* %6, align 8
  br label %101

34:                                               ; preds = %25
  %35 = load i8*, i8** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = call i8* @huffdecode4(i8* %35, i32 %38, i32* %14, i32* %16, i32* %15)
  store i8* %39, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @SIZE_MAX, align 8
  store i64 %42, i64* %6, align 8
  br label %101

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @SIZE_MAX, align 8
  store i64 %51, i64* %6, align 8
  br label %101

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @SIZE_MAX, align 8
  store i64 %60, i64* %6, align 8
  br label %101

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @NGHTTP2_HUFF_INVALID_FOR_HEADER_NAME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 58
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @NGHTTP2_HUFF_UPPER_CASE_CHAR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** @h2o_hpack_err_found_upper_case_in_header_name, align 8
  %79 = load i8**, i8*** %11, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i64, i64* @SIZE_MAX, align 8
  store i64 %80, i64* %6, align 8
  br label %101

81:                                               ; preds = %72
  %82 = load i8*, i8** @h2o_hpack_soft_err_found_invalid_char_in_header_name, align 8
  %83 = load i8**, i8*** %11, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %66, %61
  br label %95

86:                                               ; preds = %52
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @NGHTTP2_HUFF_INVALID_FOR_HEADER_VALUE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** @h2o_hpack_soft_err_found_invalid_char_in_header_value, align 8
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %95, %77, %59, %50, %41, %32
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i8* @huffdecode4(i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
