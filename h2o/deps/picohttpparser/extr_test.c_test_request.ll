; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_request.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"GET / HTTP/1.0\0D\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"parse headers\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"GET /hoge HTTP/1.1\0D\0AHost: example.com\0D\0ACookie: \0D\0A\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"/hoge\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"multibyte included\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"GET /hoge HTTP/1.1\0D\0AHost: example.com\0D\0AUser-Agent: \E3\81\B2\E3/1.0\0D\0A\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\E3\81\B2\E3/1.0\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"parse multiline\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"GET / HTTP/1.0\0D\0Afoo: \0D\0Afoo: b\0D\0A  \09c\0D\0A\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"  \09c\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"parse header name with trailing space\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"GET / HTTP/1.0\0D\0Afoo : ab\0D\0A\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"incomplete 1\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"incomplete 2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"incomplete 3\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"GET /\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"incomplete 4\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"GET / \00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"incomplete 5\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"GET / H\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"incomplete 6\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"GET / HTTP/1.\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"incomplete 7\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"GET / HTTP/1.0\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"incomplete 8\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"GET / HTTP/1.0\0D\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"slowloris (incomplete)\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"GET /hoge HTTP/1.0\0D\0A\0D\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"slowloris (complete)\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"GET /hoge HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"empty method\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c" / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"empty request-target\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"GET  HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"empty header name\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"GET / HTTP/1.0\0D\0A:a\0D\0A\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"header name (space only)\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"GET / HTTP/1.0\0D\0A :a\0D\0A\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"NUL in method\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"G\00T / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"tab in method\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"G\09T / HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"DEL in uri-path\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"GET /\7Fhello HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"NUL in header name\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"GET / HTTP/1.0\0D\0Aa\00b: c\0D\0A\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"NUL in header value\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"GET / HTTP/1.0\0D\0Aab: c\00d\0D\0A\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"CTL in header name\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"GET / HTTP/1.0\0D\0Aa\1Bb: c\0D\0A\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"CTL in header value\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"GET / HTTP/1.0\0D\0Aab: c\1B\0D\0A\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"invalid char in header value\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"GET / HTTP/1.0\0D\0A/: 1\0D\0A\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"accept MSB chars\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"GET /\A0 HTTP/1.0\0D\0Ah: c\A2y\0D\0A\0D\0A\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"/\A0\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"c\A2y\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"accept |~ (though forbidden by SSE)\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"GET / HTTP/1.0\0D\0A|~: 1\0D\0A\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"|~\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"disallow {\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"GET / HTTP/1.0\0D\0A{: 1\0D\0A\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"exclude leading and trailing spaces in header value\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"GET / HTTP/1.0\0D\0Afoo: a \09 \0D\0A\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x %struct.phr_header], align 16
  %7 = alloca i64, align 8
  br label %8

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %10 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %11 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 18, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %10, i64* %7, i32 0)
  %12 = sext i32 %11 to i64
  %13 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  %22 = load i8*, i8** %1, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @bufis(i8* %22, i64 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @ok(i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @bufis(i8* %26, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @ok(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32)
  br label %34

34:                                               ; preds = %17
  %35 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %36 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %37 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 17, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %36, i64* %7, i32 0)
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, -2
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  br label %42

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %45 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %46 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 51, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %45, i64* %7, i32 0)
  %47 = sext i32 %46 to i64
  %48 = call i64 @strlen(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @bufis(i8* %57, i64 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @ok(i32 %59)
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @bufis(i8* %61, i64 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @ok(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67)
  %69 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %70 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 16
  %72 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %73 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bufis(i8* %71, i64 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %76 = call i32 @ok(i32 %75)
  %77 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %78 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 16
  %80 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %81 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @bufis(i8* %79, i64 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %84 = call i32 @ok(i32 %83)
  %85 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %86 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 16
  %88 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %89 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @bufis(i8* %87, i64 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %92 = call i32 @ok(i32 %91)
  %93 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %94 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 16
  %96 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %97 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @bufis(i8* %95, i64 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %100 = call i32 @ok(i32 %99)
  br label %101

101:                                              ; preds = %52
  %102 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %103 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %104 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i64 63, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %103, i64* %7, i32 0)
  %105 = sext i32 %104 to i64
  %106 = call i64 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0))
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108)
  br label %110

110:                                              ; preds = %101
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113)
  %115 = load i8*, i8** %1, align 8
  %116 = load i64, i64* %2, align 8
  %117 = call i32 @bufis(i8* %115, i64 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %118 = call i32 @ok(i32 %117)
  %119 = load i8*, i8** %3, align 8
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @bufis(i8* %119, i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i32 @ok(i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %128 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 16
  %130 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %131 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @bufis(i8* %129, i64 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %134 = call i32 @ok(i32 %133)
  %135 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %136 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 16
  %138 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %139 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @bufis(i8* %137, i64 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %142 = call i32 @ok(i32 %141)
  %143 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %144 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 16
  %146 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %147 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @bufis(i8* %145, i64 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %150 = call i32 @ok(i32 %149)
  %151 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %152 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 16
  %154 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %155 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @bufis(i8* %153, i64 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %158 = call i32 @ok(i32 %157)
  br label %159

159:                                              ; preds = %110
  %160 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %161 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %162 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i64 39, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %161, i64* %7, i32 0)
  %163 = sext i32 %162 to i64
  %164 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ok(i32 %166)
  br label %168

168:                                              ; preds = %159
  %169 = load i64, i64* %7, align 8
  %170 = icmp eq i64 %169, 3
  %171 = zext i1 %170 to i32
  %172 = call i32 @ok(i32 %171)
  %173 = load i8*, i8** %1, align 8
  %174 = load i64, i64* %2, align 8
  %175 = call i32 @bufis(i8* %173, i64 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %176 = call i32 @ok(i32 %175)
  %177 = load i8*, i8** %3, align 8
  %178 = load i64, i64* %4, align 8
  %179 = call i32 @bufis(i8* %177, i64 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %180 = call i32 @ok(i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @ok(i32 %183)
  %185 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %186 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 16
  %188 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %189 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @bufis(i8* %187, i64 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %192 = call i32 @ok(i32 %191)
  %193 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %194 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 16
  %196 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %197 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @bufis(i8* %195, i64 %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %200 = call i32 @ok(i32 %199)
  %201 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %202 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 16
  %204 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %205 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @bufis(i8* %203, i64 %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %208 = call i32 @ok(i32 %207)
  %209 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %210 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 16
  %212 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 1
  %213 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @bufis(i8* %211, i64 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %216 = call i32 @ok(i32 %215)
  %217 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 2
  %218 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 16
  %220 = icmp eq i8* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i32 @ok(i32 %221)
  %223 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 2
  %224 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 16
  %226 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 2
  %227 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @bufis(i8* %225, i64 %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %230 = call i32 @ok(i32 %229)
  br label %231

231:                                              ; preds = %168
  %232 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %233 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %234 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i64 28, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %233, i64* %7, i32 0)
  %235 = sext i32 %234 to i64
  %236 = icmp eq i64 %235, -1
  %237 = zext i1 %236 to i32
  %238 = call i32 @ok(i32 %237)
  br label %239

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239
  %241 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %242 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %243 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %242, i64* %7, i32 0)
  %244 = sext i32 %243 to i64
  %245 = icmp eq i64 %244, -2
  %246 = zext i1 %245 to i32
  %247 = call i32 @ok(i32 %246)
  br label %248

248:                                              ; preds = %240
  %249 = load i8*, i8** %1, align 8
  %250 = icmp eq i8* %249, null
  %251 = zext i1 %250 to i32
  %252 = call i32 @ok(i32 %251)
  br label %253

253:                                              ; preds = %248
  %254 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %255 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %256 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 4, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %255, i64* %7, i32 0)
  %257 = sext i32 %256 to i64
  %258 = icmp eq i64 %257, -2
  %259 = zext i1 %258 to i32
  %260 = call i32 @ok(i32 %259)
  br label %261

261:                                              ; preds = %253
  %262 = load i8*, i8** %1, align 8
  %263 = load i64, i64* %2, align 8
  %264 = call i32 @bufis(i8* %262, i64 %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %265 = call i32 @ok(i32 %264)
  br label %266

266:                                              ; preds = %261
  %267 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %268 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %269 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i64 5, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %268, i64* %7, i32 0)
  %270 = sext i32 %269 to i64
  %271 = icmp eq i64 %270, -2
  %272 = zext i1 %271 to i32
  %273 = call i32 @ok(i32 %272)
  br label %274

274:                                              ; preds = %266
  %275 = load i8*, i8** %3, align 8
  %276 = icmp eq i8* %275, null
  %277 = zext i1 %276 to i32
  %278 = call i32 @ok(i32 %277)
  br label %279

279:                                              ; preds = %274
  %280 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %281 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %282 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 6, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %281, i64* %7, i32 0)
  %283 = sext i32 %282 to i64
  %284 = icmp eq i64 %283, -2
  %285 = zext i1 %284 to i32
  %286 = call i32 @ok(i32 %285)
  br label %287

287:                                              ; preds = %279
  %288 = load i8*, i8** %3, align 8
  %289 = load i64, i64* %4, align 8
  %290 = call i32 @bufis(i8* %288, i64 %289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %291 = call i32 @ok(i32 %290)
  br label %292

292:                                              ; preds = %287
  %293 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %294 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %295 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 7, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %294, i64* %7, i32 0)
  %296 = sext i32 %295 to i64
  %297 = icmp eq i64 %296, -2
  %298 = zext i1 %297 to i32
  %299 = call i32 @ok(i32 %298)
  br label %300

300:                                              ; preds = %292
  br label %301

301:                                              ; preds = %300
  %302 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %303 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %304 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i64 13, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %303, i64* %7, i32 0)
  %305 = sext i32 %304 to i64
  %306 = icmp eq i64 %305, -2
  %307 = zext i1 %306 to i32
  %308 = call i32 @ok(i32 %307)
  br label %309

309:                                              ; preds = %301
  br label %310

310:                                              ; preds = %309
  %311 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %312 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %313 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %312, i64* %7, i32 0)
  %314 = sext i32 %313 to i64
  %315 = icmp eq i64 %314, -2
  %316 = zext i1 %315 to i32
  %317 = call i32 @ok(i32 %316)
  br label %318

318:                                              ; preds = %310
  %319 = load i32, i32* %5, align 4
  %320 = icmp eq i32 %319, -1
  %321 = zext i1 %320 to i32
  %322 = call i32 @ok(i32 %321)
  br label %323

323:                                              ; preds = %318
  %324 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %325 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %326 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i64 15, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %325, i64* %7, i32 0)
  %327 = sext i32 %326 to i64
  %328 = icmp eq i64 %327, -2
  %329 = zext i1 %328 to i32
  %330 = call i32 @ok(i32 %329)
  br label %331

331:                                              ; preds = %323
  %332 = load i32, i32* %5, align 4
  %333 = icmp eq i32 %332, 0
  %334 = zext i1 %333 to i32
  %335 = call i32 @ok(i32 %334)
  br label %336

336:                                              ; preds = %331
  %337 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %338 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %339 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0))
  %340 = sub nsw i64 %339, 1
  %341 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i64 21, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %338, i64* %7, i64 %340)
  %342 = sext i32 %341 to i64
  %343 = icmp eq i64 %342, -2
  %344 = zext i1 %343 to i32
  %345 = call i32 @ok(i32 %344)
  br label %346

346:                                              ; preds = %336
  br label %347

347:                                              ; preds = %346
  %348 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %349 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %350 = call i64 @strlen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0))
  %351 = sub nsw i64 %350, 1
  %352 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i64, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i64 22, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %349, i64* %7, i64 %351)
  %353 = sext i32 %352 to i64
  %354 = call i64 @strlen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0))
  %355 = icmp eq i64 %353, %354
  %356 = zext i1 %355 to i32
  %357 = call i32 @ok(i32 %356)
  br label %358

358:                                              ; preds = %347
  br label %359

359:                                              ; preds = %358
  %360 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %361 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %362 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i64 15, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %361, i64* %7, i32 0)
  %363 = sext i32 %362 to i64
  %364 = icmp eq i64 %363, -1
  %365 = zext i1 %364 to i32
  %366 = call i32 @ok(i32 %365)
  br label %367

367:                                              ; preds = %359
  br label %368

368:                                              ; preds = %367
  %369 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %370 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %371 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i64 17, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %370, i64* %7, i32 0)
  %372 = sext i32 %371 to i64
  %373 = icmp eq i64 %372, -1
  %374 = zext i1 %373 to i32
  %375 = call i32 @ok(i32 %374)
  br label %376

376:                                              ; preds = %368
  br label %377

377:                                              ; preds = %376
  %378 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %379 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %380 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i64 22, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %379, i64* %7, i32 0)
  %381 = sext i32 %380 to i64
  %382 = icmp eq i64 %381, -1
  %383 = zext i1 %382 to i32
  %384 = call i32 @ok(i32 %383)
  br label %385

385:                                              ; preds = %377
  br label %386

386:                                              ; preds = %385
  %387 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %388 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %389 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i64 23, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %388, i64* %7, i32 0)
  %390 = sext i32 %389 to i64
  %391 = icmp eq i64 %390, -1
  %392 = zext i1 %391 to i32
  %393 = call i32 @ok(i32 %392)
  br label %394

394:                                              ; preds = %386
  br label %395

395:                                              ; preds = %394
  %396 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %397 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %398 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i64 18, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %397, i64* %7, i32 0)
  %399 = sext i32 %398 to i64
  %400 = icmp eq i64 %399, -1
  %401 = zext i1 %400 to i32
  %402 = call i32 @ok(i32 %401)
  br label %403

403:                                              ; preds = %395
  br label %404

404:                                              ; preds = %403
  %405 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %406 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %407 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0), i64 18, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %406, i64* %7, i32 0)
  %408 = sext i32 %407 to i64
  %409 = icmp eq i64 %408, -1
  %410 = zext i1 %409 to i32
  %411 = call i32 @ok(i32 %410)
  br label %412

412:                                              ; preds = %404
  br label %413

413:                                              ; preds = %412
  %414 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %415 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %416 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i64 24, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %415, i64* %7, i32 0)
  %417 = sext i32 %416 to i64
  %418 = icmp eq i64 %417, -1
  %419 = zext i1 %418 to i32
  %420 = call i32 @ok(i32 %419)
  br label %421

421:                                              ; preds = %413
  br label %422

422:                                              ; preds = %421
  %423 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %424 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %425 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i64 26, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %424, i64* %7, i32 0)
  %426 = sext i32 %425 to i64
  %427 = icmp eq i64 %426, -1
  %428 = zext i1 %427 to i32
  %429 = call i32 @ok(i32 %428)
  br label %430

430:                                              ; preds = %422
  br label %431

431:                                              ; preds = %430
  %432 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %433 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %434 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0), i64 27, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %433, i64* %7, i32 0)
  %435 = sext i32 %434 to i64
  %436 = icmp eq i64 %435, -1
  %437 = zext i1 %436 to i32
  %438 = call i32 @ok(i32 %437)
  br label %439

439:                                              ; preds = %431
  br label %440

440:                                              ; preds = %439
  %441 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %442 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %443 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i64 26, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %442, i64* %7, i32 0)
  %444 = sext i32 %443 to i64
  %445 = icmp eq i64 %444, -1
  %446 = zext i1 %445 to i32
  %447 = call i32 @ok(i32 %446)
  br label %448

448:                                              ; preds = %440
  br label %449

449:                                              ; preds = %448
  %450 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %451 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %452 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0), i64 26, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %451, i64* %7, i32 0)
  %453 = sext i32 %452 to i64
  %454 = icmp eq i64 %453, -1
  %455 = zext i1 %454 to i32
  %456 = call i32 @ok(i32 %455)
  br label %457

457:                                              ; preds = %449
  br label %458

458:                                              ; preds = %457
  %459 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %460 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %461 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i64 24, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %460, i64* %7, i32 0)
  %462 = sext i32 %461 to i64
  %463 = icmp eq i64 %462, -1
  %464 = zext i1 %463 to i32
  %465 = call i32 @ok(i32 %464)
  br label %466

466:                                              ; preds = %458
  br label %467

467:                                              ; preds = %466
  %468 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %469 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %470 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i64 0, i64 0), i64 27, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %469, i64* %7, i32 0)
  %471 = sext i32 %470 to i64
  %472 = call i64 @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i64 0, i64 0))
  %473 = icmp eq i64 %471, %472
  %474 = zext i1 %473 to i32
  %475 = call i32 @ok(i32 %474)
  br label %476

476:                                              ; preds = %467
  %477 = load i64, i64* %7, align 8
  %478 = icmp eq i64 %477, 1
  %479 = zext i1 %478 to i32
  %480 = call i32 @ok(i32 %479)
  %481 = load i8*, i8** %1, align 8
  %482 = load i64, i64* %2, align 8
  %483 = call i32 @bufis(i8* %481, i64 %482, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %484 = call i32 @ok(i32 %483)
  %485 = load i8*, i8** %3, align 8
  %486 = load i64, i64* %4, align 8
  %487 = call i32 @bufis(i8* %485, i64 %486, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0))
  %488 = call i32 @ok(i32 %487)
  %489 = load i32, i32* %5, align 4
  %490 = icmp eq i32 %489, 0
  %491 = zext i1 %490 to i32
  %492 = call i32 @ok(i32 %491)
  %493 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %494 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %493, i32 0, i32 0
  %495 = load i8*, i8** %494, align 16
  %496 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %497 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = call i32 @bufis(i8* %495, i64 %498, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %500 = call i32 @ok(i32 %499)
  %501 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %502 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %501, i32 0, i32 2
  %503 = load i8*, i8** %502, align 16
  %504 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %505 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %504, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = call i32 @bufis(i8* %503, i64 %506, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0))
  %508 = call i32 @ok(i32 %507)
  br label %509

509:                                              ; preds = %476
  %510 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %511 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %512 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i64 0, i64 0), i64 25, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %511, i64* %7, i32 0)
  %513 = sext i32 %512 to i64
  %514 = call i64 @strlen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i64 0, i64 0))
  %515 = icmp eq i64 %513, %514
  %516 = zext i1 %515 to i32
  %517 = call i32 @ok(i32 %516)
  br label %518

518:                                              ; preds = %509
  %519 = load i64, i64* %7, align 8
  %520 = icmp eq i64 %519, 1
  %521 = zext i1 %520 to i32
  %522 = call i32 @ok(i32 %521)
  %523 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %524 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %523, i32 0, i32 0
  %525 = load i8*, i8** %524, align 16
  %526 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %527 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = call i32 @bufis(i8* %525, i64 %528, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0))
  %530 = call i32 @ok(i32 %529)
  %531 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %532 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %531, i32 0, i32 2
  %533 = load i8*, i8** %532, align 16
  %534 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %535 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %534, i32 0, i32 3
  %536 = load i64, i64* %535, align 8
  %537 = call i32 @bufis(i8* %533, i64 %536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  %538 = call i32 @ok(i32 %537)
  br label %539

539:                                              ; preds = %518
  %540 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %541 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %542 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i64 0, i64 0), i64 24, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %541, i64* %7, i32 0)
  %543 = sext i32 %542 to i64
  %544 = icmp eq i64 %543, -1
  %545 = zext i1 %544 to i32
  %546 = call i32 @ok(i32 %545)
  br label %547

547:                                              ; preds = %539
  br label %548

548:                                              ; preds = %547
  %549 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i64 0, i64 0))
  store i64 4, i64* %7, align 8
  %550 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %551 = call i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_request to i32 (i8*, i64, i8**, i64*, i8**, i64*, i32*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i64 0, i64 0), i64 29, i8** %1, i64* %2, i8** %3, i64* %4, i32* %5, %struct.phr_header* %550, i64* %7, i32 0)
  %552 = sext i32 %551 to i64
  %553 = call i64 @strlen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i64 0, i64 0))
  %554 = icmp eq i64 %552, %553
  %555 = zext i1 %554 to i32
  %556 = call i32 @ok(i32 %555)
  br label %557

557:                                              ; preds = %548
  %558 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %559 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %558, i32 0, i32 2
  %560 = load i8*, i8** %559, align 16
  %561 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %6, i64 0, i64 0
  %562 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %561, i32 0, i32 3
  %563 = load i64, i64* %562, align 8
  %564 = call i32 @bufis(i8* %560, i64 %563, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  %565 = call i32 @ok(i32 %564)
  ret void
}

declare dso_local i32 @note(...) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @phr_parse_request(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bufis(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
