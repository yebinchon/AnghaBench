; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_client_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_client_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.rpc_query = type { i32 }

@CQ = common dso_local global %struct.TYPE_6__* null, align 8
@received_bad_answers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can not fetch header\0A\00", align 1
@skipped_answers = common dso_local global i32 0, align 4
@RPC_REQ_ERROR = common dso_local global i64 0, align 8
@RPC_REQ_ERROR_WRAPPED = common dso_local global i64 0, align 8
@received_errors = common dso_local global i32 0, align 4
@received_answers = common dso_local global i32 0, align 4
@received_expired_answers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Answer for unknown query (qid = %lld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Query end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_execute() #0 {
  %1 = alloca %struct.rpc_query*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i32 @tl_query_header_delete(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  br label %13

13:                                               ; preds = %6, %0
  %14 = call %struct.TYPE_5__* @zmalloc(i32 16)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i64 @tl_fetch_query_answer_header(%struct.TYPE_5__* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* @received_bad_answers, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @received_bad_answers, align 4
  %25 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @skipped_answers, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @skipped_answers, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %29, align 8
  %31 = call i32 %30(i32 0, i32 0, i32 0)
  br label %82

32:                                               ; preds = %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RPC_REQ_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RPC_REQ_ERROR_WRAPPED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %32
  %49 = load i32, i32* @received_errors, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @received_errors, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @received_answers, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @received_answers, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.rpc_query* @get_rpc_query(i32 %59)
  store %struct.rpc_query* %60, %struct.rpc_query** %1, align 8
  %61 = load %struct.rpc_query*, %struct.rpc_query** %1, align 8
  %62 = icmp ne %struct.rpc_query* %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @received_expired_answers, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @received_expired_answers, align 4
  %66 = load i32, i32* @skipped_answers, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @skipped_answers, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %69, align 8
  %71 = call i32 %70(i32 0, i32 0, i32 0)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CQ, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %82

78:                                               ; preds = %54
  %79 = load %struct.rpc_query*, %struct.rpc_query** %1, align 8
  %80 = call i32 @query_on_answer(%struct.rpc_query* %79)
  %81 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %22, %78, %63
  ret void
}

declare dso_local i32 @tl_query_header_delete(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local i64 @tl_fetch_query_answer_header(%struct.TYPE_5__*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.rpc_query* @get_rpc_query(i32) #1

declare dso_local i32 @query_on_answer(%struct.rpc_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
