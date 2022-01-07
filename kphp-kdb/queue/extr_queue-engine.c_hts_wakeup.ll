; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_hts_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_hts_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i64, i64 }
%struct.hts_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8*, i64, i32*, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hts_wakeup : keys [\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8
@QF_KEEPALIVE = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i64 0, align 8
@conn_generation = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.hts_data*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = call %struct.hts_data* @HTS_DATA(%struct.connection* %8)
  store %struct.hts_data* %9, %struct.hts_data** %3, align 8
  %10 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %11 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %47, %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.2, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %45)
  br label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %1
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @conn_expect_query, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.connection*, %struct.connection** %2, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @conn_wait_net, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ true, %53 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* @conn_expect_query, align 8
  %70 = load %struct.connection*, %struct.connection** %2, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.connection*, %struct.connection** %2, align 8
  %73 = call i32 @clear_connection_timeout(%struct.connection* %72)
  %74 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %75 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @QF_KEEPALIVE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %65
  %81 = load i64, i64* @conn_write_close, align 8
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.connection*, %struct.connection** %2, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %65
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = call i8* @get_events_http_group(%struct.TYPE_6__* %87)
  store i8* %88, i8** %6, align 8
  %89 = load i64, i64* @conn_generation, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* @conn_generation, align 8
  %91 = load %struct.connection*, %struct.connection** %2, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.connection*, %struct.connection** %2, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %140, %86
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %104, i64 %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %122, i64 %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %130, i64 %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %101
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %95

143:                                              ; preds = %95
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = call i32 @qkey_group_free(%struct.TYPE_6__* %144)
  %146 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %147 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %146, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %147, align 8
  %148 = load %struct.connection*, %struct.connection** %2, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @http_return_history(%struct.connection* %148, i8* %149)
  ret i32 %150
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i8* @get_events_http_group(%struct.TYPE_6__*) #1

declare dso_local i32 @qkey_group_free(%struct.TYPE_6__*) #1

declare dso_local i32 @http_return_history(%struct.connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
