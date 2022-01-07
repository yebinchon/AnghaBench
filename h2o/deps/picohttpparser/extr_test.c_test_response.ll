; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_response.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"HTTP/1.0 200 OK\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"HTTP/1.0 200 OK\0D\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"parse headers\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"HTTP/1.1 200 OK\0D\0AHost: example.com\0D\0ACookie: \0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"parse multiline\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"HTTP/1.0 200 OK\0D\0Afoo: \0D\0Afoo: b\0D\0A  \09c\0D\0A\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"  \09c\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"internal server error\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"HTTP/1.0 500 Internal Server Error\0D\0A\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"incomplete 1\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"incomplete 2\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"HTTP/1.\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"incomplete 3\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"incomplete 4\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"incomplete 5\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"HTTP/1.1 2\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"incomplete 6\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 200\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"incomplete 7\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"HTTP/1.1 200 \00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"incomplete 8\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"HTTP/1.1 200 O\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"incomplete 9\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"HTTP/1.1 200 OK\0D\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"incomplete 10\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"HTTP/1.1 200 OK\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"incomplete 11\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"HTTP/1.1 200 OK\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"HTTP/1.1 200 OK\0D\0AA: 1\0D\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"incomplete 12\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 200 OK\0D\0AA: 1\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"slowloris (incomplete)\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"slowloris (complete)\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"invalid http version\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"HTTP/1. 200 OK\0D\0A\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"invalid http version 2\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"HTTP/1.2z 200 OK\0D\0A\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"no status code\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"HTTP/1.1  OK\0D\0A\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"exclude leading and trailing spaces in header value\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"HTTP/1.1 200 OK\0D\0Abar: \09 b\09 \09\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_response() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x %struct.phr_header], align 16
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %9 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %11 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %9, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %10, i64* %6, i32 0)
  %12 = sext i32 %11 to i64
  %13 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15)
  br label %17

17:                                               ; preds = %7
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 200
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28)
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @bufis(i8* %30, i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @ok(i32 %32)
  br label %34

34:                                               ; preds = %17
  %35 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %36 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %37 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %38 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %36, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %37, i64* %6, i32 0)
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, -2
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  br label %43

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %46 = call i64 @strlen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %47 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %48 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %46, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %47, i64* %6, i32 0)
  %49 = sext i32 %48 to i64
  %50 = call i64 @strlen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 2
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 200
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @bufis(i8* %67, i64 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @ok(i32 %69)
  %71 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %72 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 16
  %74 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %75 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bufis(i8* %73, i64 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @ok(i32 %77)
  %79 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %80 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 16
  %82 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %83 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @bufis(i8* %81, i64 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %88 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 16
  %90 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %91 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @bufis(i8* %89, i64 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %94 = call i32 @ok(i32 %93)
  %95 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %96 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 16
  %98 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %99 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @bufis(i8* %97, i64 %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %102 = call i32 @ok(i32 %101)
  br label %103

103:                                              ; preds = %54
  %104 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %105 = call i64 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %106 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %107 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i64 %105, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %106, i64* %6, i32 0)
  %108 = sext i32 %107 to i64
  %109 = call i64 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ok(i32 %111)
  br label %113

113:                                              ; preds = %103
  %114 = load i64, i64* %6, align 8
  %115 = icmp eq i64 %114, 3
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116)
  %118 = load i32, i32* %1, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @ok(i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 200
  %124 = zext i1 %123 to i32
  %125 = call i32 @ok(i32 %124)
  %126 = load i8*, i8** %3, align 8
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @bufis(i8* %126, i64 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %129 = call i32 @ok(i32 %128)
  %130 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %131 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 16
  %133 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %134 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @bufis(i8* %132, i64 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %137 = call i32 @ok(i32 %136)
  %138 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %139 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 16
  %141 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %142 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @bufis(i8* %140, i64 %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %145 = call i32 @ok(i32 %144)
  %146 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %147 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 16
  %149 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %150 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @bufis(i8* %148, i64 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %153 = call i32 @ok(i32 %152)
  %154 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %155 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 16
  %157 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 1
  %158 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @bufis(i8* %156, i64 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %161 = call i32 @ok(i32 %160)
  %162 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 2
  %163 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 16
  %165 = icmp eq i8* %164, null
  %166 = zext i1 %165 to i32
  %167 = call i32 @ok(i32 %166)
  %168 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 2
  %169 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 16
  %171 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 2
  %172 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @bufis(i8* %170, i64 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %175 = call i32 @ok(i32 %174)
  br label %176

176:                                              ; preds = %113
  %177 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %178 = call i64 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %179 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %180 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i64 %178, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %179, i64* %6, i32 0)
  %181 = sext i32 %180 to i64
  %182 = call i64 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @ok(i32 %184)
  br label %186

186:                                              ; preds = %176
  %187 = load i64, i64* %6, align 8
  %188 = icmp eq i64 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @ok(i32 %189)
  %191 = load i32, i32* %1, align 4
  %192 = icmp eq i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @ok(i32 %193)
  %195 = load i32, i32* %2, align 4
  %196 = icmp eq i32 %195, 500
  %197 = zext i1 %196 to i32
  %198 = call i32 @ok(i32 %197)
  %199 = load i8*, i8** %3, align 8
  %200 = load i64, i64* %4, align 8
  %201 = call i32 @bufis(i8* %199, i64 %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %202 = call i32 @ok(i32 %201)
  %203 = load i64, i64* %4, align 8
  %204 = icmp eq i64 %203, 21
  %205 = zext i1 %204 to i32
  %206 = call i32 @ok(i32 %205)
  br label %207

207:                                              ; preds = %186
  %208 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %209 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %210 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %211 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 %209, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %210, i64* %6, i32 0)
  %212 = sext i32 %211 to i64
  %213 = icmp eq i64 %212, -2
  %214 = zext i1 %213 to i32
  %215 = call i32 @ok(i32 %214)
  br label %216

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216
  %218 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %219 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %220 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %221 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %219, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %220, i64* %6, i32 0)
  %222 = sext i32 %221 to i64
  %223 = icmp eq i64 %222, -2
  %224 = zext i1 %223 to i32
  %225 = call i32 @ok(i32 %224)
  br label %226

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %226
  %228 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %229 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %230 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %231 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i64 %229, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %230, i64* %6, i32 0)
  %232 = sext i32 %231 to i64
  %233 = icmp eq i64 %232, -2
  %234 = zext i1 %233 to i32
  %235 = call i32 @ok(i32 %234)
  br label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %1, align 4
  %238 = icmp eq i32 %237, -1
  %239 = zext i1 %238 to i32
  %240 = call i32 @ok(i32 %239)
  br label %241

241:                                              ; preds = %236
  %242 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %243 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %244 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %245 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i64 %243, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %244, i64* %6, i32 0)
  %246 = sext i32 %245 to i64
  %247 = icmp eq i64 %246, -2
  %248 = zext i1 %247 to i32
  %249 = call i32 @ok(i32 %248)
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* %1, align 4
  %252 = icmp eq i32 %251, 1
  %253 = zext i1 %252 to i32
  %254 = call i32 @ok(i32 %253)
  br label %255

255:                                              ; preds = %250
  %256 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %257 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %258 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %259 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i64 %257, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %258, i64* %6, i32 0)
  %260 = sext i32 %259 to i64
  %261 = icmp eq i64 %260, -2
  %262 = zext i1 %261 to i32
  %263 = call i32 @ok(i32 %262)
  br label %264

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264
  %266 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %267 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %268 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %269 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i64 %267, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %268, i64* %6, i32 0)
  %270 = sext i32 %269 to i64
  %271 = icmp eq i64 %270, -2
  %272 = zext i1 %271 to i32
  %273 = call i32 @ok(i32 %272)
  br label %274

274:                                              ; preds = %265
  %275 = load i32, i32* %2, align 4
  %276 = icmp eq i32 %275, 0
  %277 = zext i1 %276 to i32
  %278 = call i32 @ok(i32 %277)
  br label %279

279:                                              ; preds = %274
  %280 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %281 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  %282 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %283 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 %281, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %282, i64* %6, i32 0)
  %284 = sext i32 %283 to i64
  %285 = icmp eq i64 %284, -2
  %286 = zext i1 %285 to i32
  %287 = call i32 @ok(i32 %286)
  br label %288

288:                                              ; preds = %279
  %289 = load i32, i32* %2, align 4
  %290 = icmp eq i32 %289, 200
  %291 = zext i1 %290 to i32
  %292 = call i32 @ok(i32 %291)
  br label %293

293:                                              ; preds = %288
  %294 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %295 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %296 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %297 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64 %295, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %296, i64* %6, i32 0)
  %298 = sext i32 %297 to i64
  %299 = icmp eq i64 %298, -2
  %300 = zext i1 %299 to i32
  %301 = call i32 @ok(i32 %300)
  br label %302

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302
  %304 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %305 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %306 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %307 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i64 %305, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %306, i64* %6, i32 0)
  %308 = sext i32 %307 to i64
  %309 = icmp eq i64 %308, -2
  %310 = zext i1 %309 to i32
  %311 = call i32 @ok(i32 %310)
  br label %312

312:                                              ; preds = %303
  %313 = load i8*, i8** %3, align 8
  %314 = icmp eq i8* %313, null
  %315 = zext i1 %314 to i32
  %316 = call i32 @ok(i32 %315)
  br label %317

317:                                              ; preds = %312
  %318 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %319 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  %320 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %321 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i64 %319, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %320, i64* %6, i32 0)
  %322 = sext i32 %321 to i64
  %323 = icmp eq i64 %322, -2
  %324 = zext i1 %323 to i32
  %325 = call i32 @ok(i32 %324)
  br label %326

326:                                              ; preds = %317
  %327 = load i8*, i8** %3, align 8
  %328 = load i64, i64* %4, align 8
  %329 = call i32 @bufis(i8* %327, i64 %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %330 = call i32 @ok(i32 %329)
  br label %331

331:                                              ; preds = %326
  %332 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %333 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0))
  %334 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %335 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i64 %333, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %334, i64* %6, i32 0)
  %336 = sext i32 %335 to i64
  %337 = icmp eq i64 %336, -2
  %338 = zext i1 %337 to i32
  %339 = call i32 @ok(i32 %338)
  br label %340

340:                                              ; preds = %331
  %341 = load i8*, i8** %3, align 8
  %342 = load i64, i64* %4, align 8
  %343 = call i32 @bufis(i8* %341, i64 %342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %344 = call i32 @ok(i32 %343)
  br label %345

345:                                              ; preds = %340
  %346 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %347 = call i64 @strlen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %348 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %349 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i64 %347, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %348, i64* %6, i32 0)
  %350 = sext i32 %349 to i64
  %351 = icmp eq i64 %350, -2
  %352 = zext i1 %351 to i32
  %353 = call i32 @ok(i32 %352)
  br label %354

354:                                              ; preds = %345
  %355 = load i64, i64* %6, align 8
  %356 = icmp eq i64 %355, 0
  %357 = zext i1 %356 to i32
  %358 = call i32 @ok(i32 %357)
  br label %359

359:                                              ; preds = %354
  %360 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %361 = call i64 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  %362 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %363 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i64 %361, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %362, i64* %6, i32 0)
  %364 = sext i32 %363 to i64
  %365 = icmp eq i64 %364, -2
  %366 = zext i1 %365 to i32
  %367 = call i32 @ok(i32 %366)
  br label %368

368:                                              ; preds = %359
  %369 = load i64, i64* %6, align 8
  %370 = icmp eq i64 %369, 1
  %371 = zext i1 %370 to i32
  %372 = call i32 @ok(i32 %371)
  %373 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %374 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 16
  %376 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %377 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = call i32 @bufis(i8* %375, i64 %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  %380 = call i32 @ok(i32 %379)
  %381 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %382 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %381, i32 0, i32 2
  %383 = load i8*, i8** %382, align 16
  %384 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %385 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @bufis(i8* %383, i64 %386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0))
  %388 = call i32 @ok(i32 %387)
  br label %389

389:                                              ; preds = %368
  %390 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %391 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %392 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %393 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %394 = sub nsw i64 %393, 1
  %395 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i64, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i64, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %391, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %392, i64* %6, i64 %394)
  %396 = sext i32 %395 to i64
  %397 = icmp eq i64 %396, -2
  %398 = zext i1 %397 to i32
  %399 = call i32 @ok(i32 %398)
  br label %400

400:                                              ; preds = %389
  br label %401

401:                                              ; preds = %400
  %402 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %403 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %404 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %405 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %406 = sub nsw i64 %405, 1
  %407 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i64, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i64, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %403, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %404, i64* %6, i64 %406)
  %408 = sext i32 %407 to i64
  %409 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %410 = icmp eq i64 %408, %409
  %411 = zext i1 %410 to i32
  %412 = call i32 @ok(i32 %411)
  br label %413

413:                                              ; preds = %401
  br label %414

414:                                              ; preds = %413
  %415 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %416 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  %417 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %418 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i64 %416, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %417, i64* %6, i32 0)
  %419 = sext i32 %418 to i64
  %420 = icmp eq i64 %419, -1
  %421 = zext i1 %420 to i32
  %422 = call i32 @ok(i32 %421)
  br label %423

423:                                              ; preds = %414
  br label %424

424:                                              ; preds = %423
  %425 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %426 = call i64 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0))
  %427 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %428 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0), i64 %426, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %427, i64* %6, i32 0)
  %429 = sext i32 %428 to i64
  %430 = icmp eq i64 %429, -1
  %431 = zext i1 %430 to i32
  %432 = call i32 @ok(i32 %431)
  br label %433

433:                                              ; preds = %424
  br label %434

434:                                              ; preds = %433
  %435 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %436 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0))
  %437 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %438 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i64 %436, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %437, i64* %6, i32 0)
  %439 = sext i32 %438 to i64
  %440 = icmp eq i64 %439, -1
  %441 = zext i1 %440 to i32
  %442 = call i32 @ok(i32 %441)
  br label %443

443:                                              ; preds = %434
  br label %444

444:                                              ; preds = %443
  %445 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0))
  store i64 4, i64* %6, align 8
  %446 = call i64 @strlen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0))
  %447 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %448 = call i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_response to i32 (i8*, i64, i32*, i32*, i8**, i64*, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i64 %446, i32* %1, i32* %2, i8** %3, i64* %4, %struct.phr_header* %447, i64* %6, i32 0)
  %449 = sext i32 %448 to i64
  %450 = call i64 @strlen(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0))
  %451 = icmp eq i64 %449, %450
  %452 = zext i1 %451 to i32
  %453 = call i32 @ok(i32 %452)
  br label %454

454:                                              ; preds = %444
  %455 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %456 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %455, i32 0, i32 2
  %457 = load i8*, i8** %456, align 16
  %458 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %5, i64 0, i64 0
  %459 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @bufis(i8* %457, i64 %460, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %462 = call i32 @ok(i32 %461)
  ret void
}

declare dso_local i32 @note(...) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @phr_parse_response(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bufis(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
