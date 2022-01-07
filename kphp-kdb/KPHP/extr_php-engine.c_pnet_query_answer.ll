; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_pnet_query_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_pnet_query_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, i64, %struct.connection* }
%struct.connection = type { i64, i32* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@ct_php_engine_rpc_server = common dso_local global i32 0, align 4
@ct_php_rpc_client = common dso_local global i32 0, align 4
@ct_php_engine_http_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected type of connection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnet_query_answer(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %5 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %6 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %5, i32 0, i32 2
  %7 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %7, %struct.connection** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = icmp ne %struct.connection* %8, null
  br i1 %9, label %10, label %65

10:                                               ; preds = %1
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %15 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %10
  store i8* null, i8** %4, align 8
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, @ct_php_engine_rpc_server
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = call %struct.TYPE_6__* @RPCS_DATA(%struct.connection* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %56

28:                                               ; preds = %18
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, @ct_php_rpc_client
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = call %struct.TYPE_7__* @RPCC_DATA(%struct.connection* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @ct_php_engine_http_server
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = call %struct.TYPE_8__* @HTS_DATA(%struct.connection* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %4, align 8
  br label %54

48:                                               ; preds = %38
  br i1 true, label %49, label %50

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i1 [ false, %48 ], [ false, %49 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %59 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @php_worker_answer_query(i8* %57, i32 %63)
  br label %65

65:                                               ; preds = %56, %10, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @RPCS_DATA(%struct.connection*) #1

declare dso_local %struct.TYPE_7__* @RPCC_DATA(%struct.connection*) #1

declare dso_local %struct.TYPE_8__* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_worker_answer_query(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
