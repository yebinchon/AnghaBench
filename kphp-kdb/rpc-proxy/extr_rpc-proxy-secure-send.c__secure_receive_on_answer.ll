; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_receive_on_answer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-secure-send.c__secure_receive_on_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_query = type { i32, i32 }
%struct.secure_receive_answer = type { i32, i8*, i32, i32, i32, i32, i32, i64 }
%struct.lev_answer_tx = type { i32, i8*, i32, i32, i32 }

@_secure_receive_on_answer.buf = internal global [131072 x i8] zeroinitializer, align 16
@CQ = common dso_local global %struct.TYPE_4__* null, align 8
@secure_receive_answer_tree = common dso_local global i32 0, align 4
@secure_answer_allocated = common dso_local global i32 0, align 4
@LEV_ANSWER_TX = common dso_local global i32 0, align 4
@binlog_mode_on = common dso_local global i32 0, align 4
@RPC_FUN_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_secure_receive_on_answer(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_query*, align 8
  %9 = alloca %struct.secure_receive_answer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_answer_tx*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.rpc_query*
  store %struct.rpc_query* %14, %struct.rpc_query** %8, align 8
  %15 = call %struct.secure_receive_answer* @zmalloc(i32 48)
  store %struct.secure_receive_answer* %15, %struct.secure_receive_answer** %9, align 8
  %16 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %17 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %20 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %22 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %25 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %27 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @tl_write_header(%struct.TYPE_3__* %30, i32* bitcast ([131072 x i8]* @_secure_receive_on_answer.buf to i32*), i32 131072)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %42 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @tl_fetch_unread()
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %47 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %49 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @malloc(i32 %50)
  %52 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %53 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %55 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %57 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i8* %58, i8* getelementptr inbounds ([131072 x i8], [131072 x i8]* @_secure_receive_on_answer.buf, i64 0, i64 0), i32 %59)
  %61 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %62 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %68 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @tl_fetch_lookup_data(i8* %66, i32 %71)
  %73 = load i32, i32* @secure_receive_answer_tree, align 4
  %74 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %75 = call i32 (...) @lrand48()
  %76 = call i32 @tree_insert_secure_receive_answer(i32 %73, %struct.secure_receive_answer* %74, i32 %75)
  store i32 %76, i32* @secure_receive_answer_tree, align 4
  %77 = load i32, i32* @secure_answer_allocated, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @secure_answer_allocated, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %3
  %82 = call i32 (...) @log_last_pos()
  %83 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %84 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %86 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @insert_binlog_pos(i32 %87, i32 0)
  %89 = load i32, i32* @LEV_ANSWER_TX, align 4
  %90 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %91 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 32, %93
  %95 = trunc i64 %94 to i32
  %96 = call %struct.lev_answer_tx* @alloc_log_event(i32 %89, i32 %95, i32 0)
  store %struct.lev_answer_tx* %96, %struct.lev_answer_tx** %11, align 8
  %97 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %98 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %11, align 8
  %101 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %103 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %11, align 8
  %106 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %108 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %11, align 8
  %111 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %113 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %11, align 8
  %116 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.lev_answer_tx*, %struct.lev_answer_tx** %11, align 8
  %118 = getelementptr inbounds %struct.lev_answer_tx, %struct.lev_answer_tx* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %121 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %124 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i8* %119, i8* %122, i32 %125)
  %127 = load %struct.secure_receive_answer*, %struct.secure_receive_answer** %9, align 8
  %128 = getelementptr inbounds %struct.secure_receive_answer, %struct.secure_receive_answer* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* @binlog_mode_on, align 4
  %130 = and i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %81
  %133 = call i32 @flush_cbinlog(i32 0)
  br label %134

134:                                              ; preds = %132, %81
  br label %135

135:                                              ; preds = %134, %3
  %136 = load i32, i32* @RPC_FUN_NEXT, align 4
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.secure_receive_answer* @zmalloc(i32) #1

declare dso_local i32 @tl_write_header(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tl_fetch_lookup_data(i8*, i32) #1

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
