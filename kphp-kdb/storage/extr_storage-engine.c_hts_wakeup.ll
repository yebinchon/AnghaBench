; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_hts_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_hts_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32 }
%struct.hts_data = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"hts_wakeup (%p, c->status = %d)\0A\00", align 1
@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_aio = common dso_local global i64 0, align 8
@QF_KEEPALIVE = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.hts_data*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.connection* %9, i64 %12)
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = call %struct.hts_data* @HTS_DATA(%struct.connection* %14)
  store %struct.hts_data* %15, %struct.hts_data** %3, align 8
  %16 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %17 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %21 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %25 = call i32 @memcpy(i64* %5, i32* %24, i32 8)
  %26 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %27 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @conn_expect_query, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %1
  %35 = load %struct.connection*, %struct.connection** %2, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @conn_wait_aio, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %1
  %41 = phi i1 [ true, %1 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* @conn_expect_query, align 8
  %45 = load %struct.connection*, %struct.connection** %2, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.connection*, %struct.connection** %2, align 8
  %48 = call i32 @clear_connection_timeout(%struct.connection* %47)
  %49 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %50 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QF_KEEPALIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = load i64, i64* @conn_write_close, align 8
  %57 = load %struct.connection*, %struct.connection** %2, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.connection*, %struct.connection** %2, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %40
  %62 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %63 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  %65 = load %struct.connection*, %struct.connection** %2, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @http_return_file(%struct.connection* %65, i32* %66, i64 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.connection*, %struct.connection** %2, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @write_http_error(%struct.connection* %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %61
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.connection*, i64) #1

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @http_return_file(%struct.connection*, i32*, i64, i32) #1

declare dso_local i32 @write_http_error(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
