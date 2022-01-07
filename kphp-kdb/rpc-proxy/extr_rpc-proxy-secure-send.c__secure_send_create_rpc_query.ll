; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_send_create_rpc_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_send_create_rpc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rpc_query = type { i32, i32, %struct.secure_send_extra* }
%struct.secure_send_extra = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.lev_query_tx = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@tl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TL_OUT_TYPE = common dso_local global i64 0, align 8
@tl_type_conn = common dso_local global i64 0, align 8
@TL_OUT_CONN = common dso_local global i32 0, align 4
@CC = common dso_local global %struct.TYPE_6__* null, align 8
@secure_send_s0 = common dso_local global i32 0, align 4
@LEV_QUERY_TX = common dso_local global i32 0, align 4
@binlog_mode_on = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_query* @_secure_send_create_rpc_query(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_query*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_query*, align 8
  %7 = alloca %struct.secure_send_extra*, align 8
  %8 = alloca %struct.lev_query_tx*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.rpc_query* @default_create_rpc_query(i64 %9)
  store %struct.rpc_query* %10, %struct.rpc_query** %6, align 8
  %11 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %12 = icmp ne %struct.rpc_query* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  store %struct.rpc_query* %14, %struct.rpc_query** %3, align 8
  br label %137

15:                                               ; preds = %2
  %16 = call %struct.secure_send_extra* @zmalloc(i32 40)
  store %struct.secure_send_extra* %16, %struct.secure_send_extra** %7, align 8
  %17 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %18 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tl, i32 0, i32 0), align 8
  %20 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %21 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %23 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @malloc(i64 %24)
  %26 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %27 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %29 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %32 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memset(i32 %30, i32 0, i64 %33)
  %35 = load i64, i64* @TL_OUT_TYPE, align 8
  %36 = load i64, i64* @tl_type_conn, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* @TL_OUT_CONN, align 4
  %41 = call %struct.TYPE_5__* @RPCS_DATA(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %45 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %50 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %52 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %54 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %57 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @tl_store_read_back_nondestruct(i32 %55, i64 %58)
  %60 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %61 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @secure_send_s0, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @secure_send_s0, align 4
  %68 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %69 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %70 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %69, i32 0, i32 2
  store %struct.secure_send_extra* %68, %struct.secure_send_extra** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %15
  %74 = call i32 (...) @log_last_pos()
  %75 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %76 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %78 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @insert_binlog_pos(i32 %79, i32 0)
  %81 = load i32, i32* @LEV_QUERY_TX, align 4
  %82 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %83 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 32, %84
  %86 = call %struct.lev_query_tx* @alloc_log_event(i32 %81, i64 %85, i32 0)
  store %struct.lev_query_tx* %86, %struct.lev_query_tx** %8, align 8
  %87 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %88 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %91 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  %93 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %96 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %101 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %103 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %106 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %108 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %111 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %113 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %116 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.lev_query_tx*, %struct.lev_query_tx** %8, align 8
  %118 = getelementptr inbounds %struct.lev_query_tx, %struct.lev_query_tx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %121 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %124 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i32 %119, i32 %122, i64 %125)
  %127 = load %struct.secure_send_extra*, %struct.secure_send_extra** %7, align 8
  %128 = getelementptr inbounds %struct.secure_send_extra, %struct.secure_send_extra* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* @binlog_mode_on, align 4
  %130 = and i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %73
  %133 = call i32 @flush_cbinlog(i32 0)
  br label %134

134:                                              ; preds = %132, %73
  br label %135

135:                                              ; preds = %134, %15
  %136 = load %struct.rpc_query*, %struct.rpc_query** %6, align 8
  store %struct.rpc_query* %136, %struct.rpc_query** %3, align 8
  br label %137

137:                                              ; preds = %135, %13
  %138 = load %struct.rpc_query*, %struct.rpc_query** %3, align 8
  ret %struct.rpc_query* %138
}

declare dso_local %struct.rpc_query* @default_create_rpc_query(i64) #1

declare dso_local %struct.secure_send_extra* @zmalloc(i32) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @RPCS_DATA(i32) #1

declare dso_local i64 @tl_store_read_back_nondestruct(i32, i64) #1

declare dso_local i32 @log_last_pos(...) #1

declare dso_local i32 @insert_binlog_pos(i32, i32) #1

declare dso_local %struct.lev_query_tx* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @flush_cbinlog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
