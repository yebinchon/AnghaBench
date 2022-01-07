; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_parse_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_decode_header_ctx_t = type { i32 }

@decode_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_qpack_parse_request(i32* %0, i32* %1, i32 %2, i32* %3, i32** %4, i32* %5, i32* %6, i32* %7, i32* %8, i64* %9, i32** %10, i32* %11, i64* %12, i32* %13, i64 %14, i8** %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32**, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8**, align 8
  %34 = alloca %struct.st_h2o_qpack_decode_header_ctx_t, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  store i32* %0, i32** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32 %2, i32* %20, align 4
  store i32* %3, i32** %21, align 8
  store i32** %4, i32*** %22, align 8
  store i32* %5, i32** %23, align 8
  store i32* %6, i32** %24, align 8
  store i32* %7, i32** %25, align 8
  store i32* %8, i32** %26, align 8
  store i64* %9, i64** %27, align 8
  store i32** %10, i32*** %28, align 8
  store i32* %11, i32** %29, align 8
  store i64* %12, i64** %30, align 8
  store i32* %13, i32** %31, align 8
  store i64 %14, i64* %32, align 8
  store i8** %15, i8*** %33, align 8
  %38 = load i32*, i32** %31, align 8
  store i32* %38, i32** %35, align 8
  %39 = load i32*, i32** %35, align 8
  %40 = load i64, i64* %32, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %36, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32*, i32** %36, align 8
  %45 = call i32 @parse_decode_context(i32* %42, %struct.st_h2o_qpack_decode_header_ctx_t* %34, i32 %43, i32** %35, i32* %44)
  store i32 %45, i32* %37, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %16
  %48 = load i32, i32* %37, align 4
  store i32 %48, i32* %17, align 4
  br label %80

49:                                               ; preds = %16
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* @decode_header, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = load i32**, i32*** %22, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = load i32*, i32** %24, align 8
  %56 = load i32*, i32** %25, align 8
  %57 = load i32*, i32** %26, align 8
  %58 = load i64*, i64** %27, align 8
  %59 = load i32**, i32*** %28, align 8
  %60 = load i32*, i32** %35, align 8
  %61 = load i32*, i32** %36, align 8
  %62 = load i32*, i32** %35, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = load i8**, i8*** %33, align 8
  %69 = call i32 @h2o_hpack_parse_request(i32* %50, i32 %51, %struct.st_h2o_qpack_decode_header_ctx_t* %34, i32* %52, i32** %53, i32* %54, i32* %55, i32* %56, i32* %57, i64* %58, i32** %59, i32* %60, i32 %67, i8** %68)
  store i32 %69, i32* %37, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %49
  %72 = load i32, i32* %37, align 4
  %73 = call i32 @normalize_error_code(i32 %72)
  store i32 %73, i32* %17, align 4
  br label %80

74:                                               ; preds = %49
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %29, align 8
  %77 = load i32, i32* %20, align 4
  %78 = call i64 @send_header_ack(i32* %75, %struct.st_h2o_qpack_decode_header_ctx_t* %34, i32* %76, i32 %77)
  %79 = load i64*, i64** %30, align 8
  store i64 %78, i64* %79, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %74, %71, %47
  %81 = load i32, i32* %17, align 4
  ret i32 %81
}

declare dso_local i32 @parse_decode_context(i32*, %struct.st_h2o_qpack_decode_header_ctx_t*, i32, i32**, i32*) #1

declare dso_local i32 @h2o_hpack_parse_request(i32*, i32, %struct.st_h2o_qpack_decode_header_ctx_t*, i32*, i32**, i32*, i32*, i32*, i32*, i64*, i32**, i32*, i32, i8**) #1

declare dso_local i32 @normalize_error_code(i32) #1

declare dso_local i64 @send_header_ack(i32*, %struct.st_h2o_qpack_decode_header_ctx_t*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
