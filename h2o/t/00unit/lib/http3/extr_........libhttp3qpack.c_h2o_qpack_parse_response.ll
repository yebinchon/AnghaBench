; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_parse_response.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_parse_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_decode_header_ctx_t = type { i32 }

@decode_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_qpack_parse_response(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i64* %6, i32* %7, i64 %8, i8** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8**, align 8
  %22 = alloca %struct.st_h2o_qpack_decode_header_ctx_t, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i64* %6, i64** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8** %9, i8*** %21, align 8
  %26 = load i32*, i32** %19, align 8
  store i32* %26, i32** %23, align 8
  %27 = load i32*, i32** %23, align 8
  %28 = load i64, i64* %20, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %24, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %24, align 8
  %33 = call i32 @parse_decode_context(i32* %30, %struct.st_h2o_qpack_decode_header_ctx_t* %22, i32 %31, i32** %23, i32* %32)
  store i32 %33, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %10
  %36 = load i32, i32* %25, align 4
  store i32 %36, i32* %11, align 4
  br label %62

37:                                               ; preds = %10
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @decode_header, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = load i32*, i32** %24, align 8
  %44 = load i32*, i32** %23, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i8**, i8*** %21, align 8
  %51 = call i32 @h2o_hpack_parse_response(i32* %38, i32 %39, %struct.st_h2o_qpack_decode_header_ctx_t* %22, i32* %40, i32* %41, i32* %42, i32 %49, i8** %50)
  store i32 %51, i32* %25, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i32, i32* %25, align 4
  %55 = call i32 @normalize_error_code(i32 %54)
  store i32 %55, i32* %11, align 4
  br label %62

56:                                               ; preds = %37
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @send_header_ack(i32* %57, %struct.st_h2o_qpack_decode_header_ctx_t* %22, i32* %58, i32 %59)
  %61 = load i64*, i64** %18, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %56, %53, %35
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @parse_decode_context(i32*, %struct.st_h2o_qpack_decode_header_ctx_t*, i32, i32**, i32*) #1

declare dso_local i32 @h2o_hpack_parse_response(i32*, i32, %struct.st_h2o_qpack_decode_header_ctx_t*, i32*, i32*, i32*, i32, i8**) #1

declare dso_local i32 @normalize_error_code(i32) #1

declare dso_local i64 @send_header_ack(i32*, %struct.st_h2o_qpack_decode_header_ctx_t*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
