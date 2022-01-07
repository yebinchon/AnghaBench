; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_receive_on_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_receive_on_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64, i32, i32 }
%struct.secure_receive_answer = type { i32, i8*, i32, i32, i32, i32, i32, i64 }
%struct.lev_answer_tx = type { i32, i8*, i32, i32, i32 }

@RPC_REQ_ERROR_WRAPPED = common dso_local global i32 0, align 4
@_secure_receive_on_alarm.buf = internal global [1000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [34 x i8] c"Query timeout: working_time = %lf\00", align 1
@precise_now = common dso_local global i64 0, align 8
@TL_ERROR_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@secure_receive_answer_tree = common dso_local global i32 0, align 4
@secure_answer_allocated = common dso_local global i32 0, align 4
@LEV_ANSWER_TX = common dso_local global i32 0, align 4
@binlog_mode_on = common dso_local global i32 0, align 4
@RPC_FUN_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_secure_receive_on_alarm(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_query*, align 8
  %9 = alloca %struct.secure_receive_answer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_answer_tx*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.rpc_query*
  store %struct.rpc_query* %15, %struct.rpc_query** %8, align 8
  %16 = call %struct.secure_receive_answer* @zmalloc(i32 48)
  store %struct.secure_receive_answer* %16, %struct.secure_receive_answer** %9, align 8
  %17 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %18 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %20 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %23 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %25 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %28 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @RPC_REQ_ERROR_WRAPPED, align 4
  %30 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %31 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @precise_now, align 8
  %33 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %34 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @sprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 1), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @TL_ERROR_QUERY_TIMEOUT, align 4
  %39 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 1), i32 %38)
  %40 = call i32 @strlen(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 1))
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 3
  %44 = and i32 %43, -4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 0), i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @memset(i8* %49, i32 0, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 0), align 16
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = srem i32 %57, 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 4, %62
  %64 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %65 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %67 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @malloc(i32 %68)
  %70 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %71 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %73 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @TL_ERROR_QUERY_TIMEOUT, align 4
  %75 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %76 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to i32*
  store i32 %74, i32* %78, align 4
  %79 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %80 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @memcpy(i8* %82, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @_secure_receive_on_alarm.buf, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @secure_receive_answer_tree, align 4
  %86 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %87 = call i32 (...) @lrand48()
  %88 = call i32 @tree_insert_secure_receive_answer(i32 %85, %struct.secure_receive_answer* %86, i32 %87)
  store i32 %88, i32* @secure_receive_answer_tree, align 4
  %89 = load i32, i32* @secure_answer_allocated, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @secure_answer_allocated, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %147

93:                                               ; preds = %3
  %94 = call i32 (...) @log_last_pos()
  %95 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %96 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %98 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @insert_binlog_pos(i32 %99, i32 0)
  %101 = load i32, i32* @LEV_ANSWER_TX, align 4
  %102 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %103 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add i64 32, %105
  %107 = trunc i64 %106 to i32
  %108 = call %struct.lev_answer_tx* @alloc_log_event(i32 %101, i32 %107, i32 0)
  store %struct.lev_answer_tx* %108, %struct.lev_answer_tx** %12, align 8
  %109 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %110 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %12, align 8
  %113 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %115 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %12, align 8
  %118 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %120 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %12, align 8
  %123 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %125 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %12, align 8
  %128 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %12, align 8
  %130 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %133 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %136 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy(i8* %131, i8* %134, i32 %137)
  %139 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %140 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @binlog_mode_on, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %93
  %145 = call i32 @flush_cbinlog(i32 0)
  br label %146

146:                                              ; preds = %144, %93
  br label %147

147:                                              ; preds = %146, %3
  %148 = load i32, i32* @RPC_FUN_NEXT, align 4
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.secure_receive_answer* @zmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tree_insert_secure_receive_answer(i32, %struct.secure_receive_answer*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @log_last_pos(...) #1

declare dso_local i32 @insert_binlog_pos(i32, i32) #1

declare dso_local %struct.lev_answer_tx* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @flush_cbinlog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
