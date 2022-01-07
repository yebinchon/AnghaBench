; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_write_basic_http_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_write_basic_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.hts_data = type { i64, i32 }

@HTTP_V10 = common dso_local global i64 0, align 8
@write_basic_http_header.buff = internal global [2048 x i8] zeroinitializer, align 16
@write_basic_http_header.date_buff = internal global [32 x i8] zeroinitializer, align 16
@header_pattern = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@QF_KEEPALIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Content-Length: %d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@B_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_basic_http_header(%struct.connection* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.hts_data*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.connection*, %struct.connection** %8, align 8
  %18 = call %struct.hts_data* @HTS_DATA(%struct.connection* %17)
  store %struct.hts_data* %18, %struct.hts_data** %14, align 8
  %19 = load %struct.hts_data*, %struct.hts_data** %14, align 8
  %20 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HTTP_V10, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %95

24:                                               ; preds = %6
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @write_basic_http_header.buff, i64 0, i64 0), i8** %15, align 8
  %25 = call i8* @http_get_error_msg_text(i32* %9)
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @gen_http_date(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @write_basic_http_header.date_buff, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** @header_pattern, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  %40 = call i8* (...) @cur_http_date()
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i8* [ getelementptr inbounds ([32 x i8], [32 x i8]* @write_basic_http_header.date_buff, i64 0, i64 0), %38 ], [ %40, %39 ]
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %13, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %47 ]
  %50 = load %struct.hts_data*, %struct.hts_data** %14, align 8
  %51 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @QF_KEEPALIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %12, align 8
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %62 ]
  %65 = call i32 @snprintf(i8* %32, i32 1984, i8* %33, i32 %34, i8* %35, i8* %42, i8* %49, i8* %57, i8* %64)
  %66 = load i8*, i8** %15, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ult i8* %69, getelementptr inbounds ([2048 x i8], [2048 x i8]* @write_basic_http_header.buff, i64 0, i64 1984)
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %15, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %15, align 8
  br label %82

82:                                               ; preds = %75, %63
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i8*, i8** %15, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %15, align 8
  %88 = load %struct.connection*, %struct.connection** %8, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  %90 = load i8*, i8** %15, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = sub i64 %91, ptrtoint ([2048 x i8]* @write_basic_http_header.buff to i64)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @write_out(i32* %89, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @write_basic_http_header.buff, i64 0, i64 0), i32 %93)
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i8* @http_get_error_msg_text(i32*) #1

declare dso_local i32 @gen_http_date(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @cur_http_date(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
