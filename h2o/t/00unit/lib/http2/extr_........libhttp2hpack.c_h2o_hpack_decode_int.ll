; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_h2o_hpack_decode_int.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_h2o_hpack_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H2O_HTTP2_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_COMPRESSION = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_hpack_decode_int(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 1, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp uge i32* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @H2O_HTTP2_ERROR_INCOMPLETE, align 4
  store i32 %19, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %21, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %98

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %62, %32
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %35, 56
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @H2O_HTTP2_ERROR_INCOMPLETE, align 4
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %37
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 127
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %53, align 8
  %56 = load i32, i32* %54, align 4
  %57 = and i32 %56, 128
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %98

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 7
  store i32 %64, i32* %9, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = icmp eq i32* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @H2O_HTTP2_ERROR_INCOMPLETE, align 4
  store i32 %71, i32* %4, align 4
  br label %98

72:                                               ; preds = %65
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load i32**, i32*** %5, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %81, align 8
  %84 = load i32, i32* %82, align 4
  %85 = and i32 %84, 127
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i64, i64* @INT64_MAX, align 8
  %92 = trunc i64 %91 to i32
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* @H2O_HTTP2_ERROR_COMPRESSION, align 4
  store i32 %95, i32* %4, align 4
  br label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %94, %78, %70, %59, %42, %30, %18
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
