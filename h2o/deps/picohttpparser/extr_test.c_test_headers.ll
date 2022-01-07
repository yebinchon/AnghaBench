; ModuleID = '/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picohttpparser/extr_test.c_test_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Host: example.com\0D\0ACookie: \0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"slowloris\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Host: example.com\0D\0ACookie: \0D\0A\0D\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Host: e\07fample.com\0D\0ACookie: \0D\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_headers() #0 {
  %1 = alloca [4 x %struct.phr_header], align 16
  %2 = alloca i64, align 8
  br label %3

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %2, align 8
  %5 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %6 = call i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_headers to i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 31, %struct.phr_header* %5, i64* %2, i32 0)
  %7 = sext i32 %6 to i64
  %8 = icmp eq i64 %7, 31
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9)
  br label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14)
  %16 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %17 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %20 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bufis(i32 %18, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @ok(i32 %22)
  %24 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %25 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %28 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = call i32 @bufis(i32 %26, i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @ok(i32 %30)
  %32 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %33 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %36 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bufis(i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @ok(i32 %38)
  %40 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %41 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %44 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = call i32 @bufis(i32 %42, i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @ok(i32 %46)
  br label %48

48:                                               ; preds = %11
  %49 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i64 4, i64* %2, align 8
  %50 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %51 = call i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_headers to i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 31, %struct.phr_header* %50, i64* %2, i32 1)
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 31
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %2, align 8
  %58 = icmp eq i64 %57, 2
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %62 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %65 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bufis(i32 %63, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @ok(i32 %67)
  %69 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %70 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %73 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 16
  %75 = call i32 @bufis(i32 %71, i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @ok(i32 %75)
  %77 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %78 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %81 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bufis(i32 %79, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 @ok(i32 %83)
  %85 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %86 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 1
  %89 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 16
  %91 = call i32 @bufis(i32 %87, i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @ok(i32 %91)
  br label %93

93:                                               ; preds = %56
  %94 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i64 4, i64* %2, align 8
  %95 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %96 = call i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_headers to i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 30, %struct.phr_header* %95, i64* %2, i32 0)
  %97 = sext i32 %96 to i64
  %98 = icmp eq i64 %97, -2
  %99 = zext i1 %98 to i32
  %100 = call i32 @ok(i32 %99)
  br label %101

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101
  %103 = call i32 (i8*, ...) bitcast (i32 (...)* @note to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i64 4, i64* %2, align 8
  %104 = getelementptr inbounds [4 x %struct.phr_header], [4 x %struct.phr_header]* %1, i64 0, i64 0
  %105 = call i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...) bitcast (i32 (...)* @phr_parse_headers to i32 (i8*, i64, %struct.phr_header*, i64*, i32, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 31, %struct.phr_header* %104, i64* %2, i32 0)
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108)
  br label %110

110:                                              ; preds = %102
  ret void
}

declare dso_local i32 @note(...) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @phr_parse_headers(...) #1

declare dso_local i32 @bufis(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
