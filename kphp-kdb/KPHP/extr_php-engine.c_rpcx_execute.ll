; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32 }
%struct.rpcs_data = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rpcs_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@rpcx_execute.buf = internal global [126214400 x i8] zeroinitializer, align 16
@sigterm_on = common dso_local global i64 0, align 8
@sigterm_time = common dso_local global i64 0, align 8
@precise_now = common dso_local global i64 0, align 8
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"got RPC_INVOKE_KPHP_REQ [req_id = %016llx]\0A\00", align 1
@script_timeout = common dso_local global i32 0, align 4
@run_once = common dso_local global i32 0, align 4
@once_worker = common dso_local global i32 0, align 4
@rpc_worker = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i32 0, align 4
@MAX_RPC_QUERY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcx_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpcs_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %16)
  store %struct.rpcs_data* %17, %struct.rpcs_data** %8, align 8
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %22, i32 %23)
  %25 = load i64, i64* @sigterm_on, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i64, i64* @sigterm_time, align 8
  %29 = load i64, i64* @precise_now, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %32, i32* %4, align 4
  br label %167

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %165 [
    i32 128, label %35
    i32 129, label %37
    i32 131, label %37
    i32 130, label %37
  ]

35:                                               ; preds = %33
  %36 = call i32 (...) @do_rpc_stop_lease()
  br label %165

37:                                               ; preds = %33, %33, %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 126214400
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %41, i32* %4, align 4
  br label %167

42:                                               ; preds = %37
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 2
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @read_in(i32* %44, i8* getelementptr inbounds ([126214400 x i8], [126214400 x i8]* @rpcx_execute.buf, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = srem i32 %51, 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %56, 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %61, i32* %4, align 4
  br label %167

62:                                               ; preds = %42
  store i32* bitcast ([126214400 x i8]* @rpcx_execute.buf to i32*), i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32* %64, i32** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %93

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %73, i32* %4, align 4
  br label %167

74:                                               ; preds = %69
  %75 = call i32 @assert(i32 0)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32* %79, i32** %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 3
  store i32 %81, i32* %7, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %10, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* @precise_now, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i32 @do_rpc_start_lease(i32 %87, i64 %91)
  store i32 0, i32* %4, align 4
  br label %167

93:                                               ; preds = %62
  %94 = load i32*, i32** %10, align 8
  %95 = bitcast i32* %94 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32* %98, i32** %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %7, align 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load %struct.connection*, %struct.connection** %5, align 8
  %104 = load i32, i32* @script_timeout, align 4
  %105 = call i32 @set_connection_timeout(%struct.connection* %103, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.rpcs_data*, %struct.rpcs_data** %8, align 8
  %110 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rpcs_data*, %struct.rpcs_data** %8, align 8
  %114 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rpcs_data*, %struct.rpcs_data** %8, align 8
  %118 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rpcs_data*, %struct.rpcs_data** %8, align 8
  %122 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32* @rpc_query_data_create(i32* %106, i32 %107, i64 %108, i32 %112, i32 %116, i32 %120, i32 %124)
  store i32* %125, i32** %13, align 8
  %126 = load i32, i32* @run_once, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %93
  %129 = load i32, i32* @once_worker, align 4
  br label %132

130:                                              ; preds = %93
  %131 = load i32, i32* @rpc_worker, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.connection*, %struct.connection** %5, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @script_timeout, align 4
  %137 = load i64, i64* %12, align 8
  %138 = call i32* @php_worker_create(i32 %133, %struct.connection* %134, i32* null, i32* %135, i32 %136, i64 %137)
  store i32* %138, i32** %14, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.rpcs_data*, %struct.rpcs_data** %8, align 8
  %141 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @php_worker_main(i32* %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %132
  %147 = load %struct.connection*, %struct.connection** %5, align 8
  %148 = call i32 @rpcx_at_query_end(%struct.connection* %147)
  br label %164

149:                                              ; preds = %132
  %150 = load %struct.connection*, %struct.connection** %5, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.connection*, %struct.connection** %5, align 8
  %156 = getelementptr inbounds %struct.connection, %struct.connection* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @conn_wait_net, align 4
  %159 = icmp eq i32 %157, %158
  br label %160

160:                                              ; preds = %154, %149
  %161 = phi i1 [ false, %149 ], [ %159, %154 ]
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  br label %164

164:                                              ; preds = %160, %146
  store i32 0, i32* %4, align 4
  br label %167

165:                                              ; preds = %33, %35
  %166 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %164, %74, %72, %60, %40, %31
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @do_rpc_stop_lease(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @do_rpc_start_lease(i32, i64) #1

declare dso_local i32 @set_connection_timeout(%struct.connection*, i32) #1

declare dso_local i32* @rpc_query_data_create(i32*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32* @php_worker_create(i32, %struct.connection*, i32*, i32*, i32, i64) #1

declare dso_local i32 @php_worker_main(i32*) #1

declare dso_local i32 @rpcx_at_query_end(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
