; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_parse_response.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_parse_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i64, i32*)* @parse_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_response(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4, i64* %5, %struct.phr_header* %6, i64* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.phr_header*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i64* %5, i64** %17, align 8
  store %struct.phr_header* %6, %struct.phr_header** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %21, align 8
  %26 = call i8* @parse_http_version(i8* %22, i8* %23, i32* %24, i32* %25)
  store i8* %26, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store i8* null, i8** %11, align 8
  br label %73

29:                                               ; preds = %10
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %12, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %21, align 8
  store i32 -1, i32* %36, align 4
  store i8* null, i8** %11, align 8
  br label %73

37:                                               ; preds = %29
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = icmp slt i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32*, i32** %21, align 8
  store i32 -2, i32* %45, align 4
  store i8* null, i8** %11, align 8
  br label %73

46:                                               ; preds = %37
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @PARSE_INT_3(i32* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 32
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32*, i32** %21, align 8
  store i32 -1, i32* %55, align 4
  store i8* null, i8** %11, align 8
  br label %73

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i8**, i8*** %16, align 8
  %60 = load i64*, i64** %17, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i8* @get_token_to_eol(i8* %57, i8* %58, i8** %59, i64* %60, i32* %61)
  store i8* %62, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i8* null, i8** %11, align 8
  br label %73

65:                                               ; preds = %56
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.phr_header*, %struct.phr_header** %18, align 8
  %69 = load i64*, i64** %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = call i8* @parse_headers(i8* %66, i8* %67, %struct.phr_header* %68, i64* %69, i64 %70, i32* %71)
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %65, %64, %54, %44, %35, %28
  %74 = load i8*, i8** %11, align 8
  ret i8* %74
}

declare dso_local i8* @parse_http_version(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @PARSE_INT_3(i32*) #1

declare dso_local i8* @get_token_to_eol(i8*, i8*, i8**, i64*, i32*) #1

declare dso_local i8* @parse_headers(i8*, i8*, %struct.phr_header*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
