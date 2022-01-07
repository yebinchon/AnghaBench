; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlps_ready_to_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlps_ready_to_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.conn_query*)* }
%struct.conn_query = type { %struct.TYPE_2__* }
%struct.connection = type { i32, %struct.conn_query* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mysql server connection %d is ready to write\0A\00", align 1
@proxy_watermark_query_type = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlps_ready_to_write(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 1
  %6 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  store %struct.conn_query* %6, %struct.conn_query** %3, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = bitcast %struct.connection* %17 to %struct.conn_query*
  %19 = icmp ne %struct.conn_query* %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %22 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp eq %struct.TYPE_2__* %23, @proxy_watermark_query_type
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %28 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)** %30, align 8
  %32 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %33 = call i32 %31(%struct.conn_query* %32)
  br label %34

34:                                               ; preds = %20, %15
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
