; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_parse_request.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_picohttpparser.c_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, i32*)* @parse_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_request(i8* %0, i8* %1, i8** %2, i64* %3, i8** %4, i64* %5, i32* %6, %struct.phr_header* %7, i64* %8, i64 %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.phr_header*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i64* %3, i64** %16, align 8
  store i8** %4, i8*** %17, align 8
  store i64* %5, i64** %18, align 8
  store i32* %6, i32** %19, align 8
  store %struct.phr_header* %7, %struct.phr_header** %20, align 8
  store i64* %8, i64** %21, align 8
  store i64 %9, i64* %22, align 8
  store i32* %10, i32** %23, align 8
  %24 = call i32 (...) @CHECK_EOF()
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %13, align 8
  %32 = call i32 @EXPECT_CHAR(i8 signext 10)
  br label %42

33:                                               ; preds = %11
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i8**, i8*** %15, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i64*, i64** %16, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ADVANCE_TOKEN(i8* %44, i64 %46)
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %13, align 8
  %50 = load i8**, i8*** %17, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i64*, i64** %18, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ADVANCE_TOKEN(i8* %51, i64 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  %57 = load i64*, i64** %16, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %42
  %61 = load i64*, i64** %18, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %42
  %65 = load i32*, i32** %23, align 8
  store i32 -1, i32* %65, align 4
  store i8* null, i8** %12, align 8
  br label %102

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = load i32*, i32** %23, align 8
  %71 = call i8* @parse_http_version(i8* %67, i8* %68, i32* %69, i32* %70)
  store i8* %71, i8** %13, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i8* null, i8** %12, align 8
  br label %102

74:                                               ; preds = %66
  %75 = load i8*, i8** %13, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = call i32 @EXPECT_CHAR(i8 signext 10)
  br label %94

83:                                               ; preds = %74
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %13, align 8
  br label %93

91:                                               ; preds = %83
  %92 = load i32*, i32** %23, align 8
  store i32 -1, i32* %92, align 4
  store i8* null, i8** %12, align 8
  br label %102

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load %struct.phr_header*, %struct.phr_header** %20, align 8
  %98 = load i64*, i64** %21, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = call i8* @parse_headers(i8* %95, i8* %96, %struct.phr_header* %97, i64* %98, i64 %99, i32* %100)
  store i8* %101, i8** %12, align 8
  br label %102

102:                                              ; preds = %94, %91, %73, %64
  %103 = load i8*, i8** %12, align 8
  ret i8* %103
}

declare dso_local i32 @CHECK_EOF(...) #1

declare dso_local i32 @EXPECT_CHAR(i8 signext) #1

declare dso_local i32 @ADVANCE_TOKEN(i8*, i64) #1

declare dso_local i8* @parse_http_version(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @parse_headers(i8*, i8*, %struct.phr_header*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
