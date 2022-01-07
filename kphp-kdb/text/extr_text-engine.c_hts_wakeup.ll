; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_hts_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_hts_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32 }
%struct.hts_data = type { i32, i32, i32, i32 }

@hts_wakeup.tmp_buff = internal global [4096 x i8] zeroinitializer, align 16
@key_user_id = common dso_local global i32 0, align 4
@req_ts = common dso_local global i32 0, align 4
@req_mode = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8
@QF_KEEPALIVE = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@http_failed = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"{\22failed\22:3}\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"{\22failed\22:1,\22ts\22:%d}\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_wakeup(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.hts_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = call %struct.hts_data* @HTS_DATA(%struct.connection* %8)
  store %struct.hts_data* %9, %struct.hts_data** %4, align 8
  %10 = load %struct.hts_data*, %struct.hts_data** %4, align 8
  %11 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @key_user_id, align 4
  %13 = load %struct.hts_data*, %struct.hts_data** %4, align 8
  %14 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @req_ts, align 4
  %16 = load %struct.hts_data*, %struct.hts_data** %4, align 8
  %17 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @req_mode, align 4
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @conn_expect_query, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @conn_wait_net, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ true, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* @conn_expect_query, align 8
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = call i32 @clear_connection_timeout(%struct.connection* %37)
  %39 = load %struct.hts_data*, %struct.hts_data** %4, align 8
  %40 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QF_KEEPALIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %30
  %46 = load i64, i64* @conn_write_close, align 8
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.connection*, %struct.connection** %3, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %30
  %52 = load i32, i32* @req_mode, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* @key_user_id, align 4
  %57 = load i32, i32* @req_ts, align 4
  %58 = load i32, i32* @R, align 4
  %59 = call i32 @get_persistent_history(i32 %56, i32 %57, i32 0, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @key_user_id, align 4
  %61 = call i32 @get_persistent_timestamp(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @key_user_id, align 4
  %64 = load i32, i32* @req_ts, align 4
  %65 = load i32, i32* @R, align 4
  %66 = call i32 @get_history(i32 %63, i32 %64, i32 0, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @key_user_id, align 4
  %68 = call i32 @get_timestamp(i32 %67, i32 1)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32*, i32** @http_failed, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = call i32 @http_return(%struct.connection* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 0, i32* %2, align 4
  br label %106

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32*, i32** @http_failed, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hts_wakeup.tmp_buff, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.connection*, %struct.connection** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @http_return(%struct.connection* %89, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hts_wakeup.tmp_buff, i64 0, i64 0), i32 %90)
  store i32 0, i32* %2, align 4
  br label %106

92:                                               ; preds = %79
  %93 = load %struct.connection*, %struct.connection** %3, align 8
  %94 = load i32, i32* @R, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @http_return_history(%struct.connection* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.connection*, %struct.connection** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @write_http_error(%struct.connection* %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %92
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %82, %72
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @get_persistent_history(i32, i32, i32, i32) #1

declare dso_local i32 @get_persistent_timestamp(i32) #1

declare dso_local i32 @get_history(i32, i32, i32, i32) #1

declare dso_local i32 @get_timestamp(i32, i32) #1

declare dso_local i32 @http_return(%struct.connection*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @http_return_history(%struct.connection*, i32, i32, i32) #1

declare dso_local i32 @write_http_error(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
