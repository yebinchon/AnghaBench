; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_resend_one.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_resend_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.gather = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__*, %struct.search_extra*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.search_extra = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.rpc_query = type { i64 }

@CC = common dso_local global %struct.TYPE_8__* null, align 8
@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@merge_query_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resend_one(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gather*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.search_extra*, align 8
  %8 = alloca %struct.rpc_query*, align 8
  store %struct.gather* %0, %struct.gather** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gather*, %struct.gather** %4, align 8
  %10 = getelementptr inbounds %struct.gather, %struct.gather* %9, i32 0, i32 9
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** @CC, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.gather*, %struct.gather** %4, align 8
  %20 = getelementptr inbounds %struct.gather, %struct.gather* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @get_free_rpc_qid(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CC, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @rpc_proxy_store_init(i32* %28, i64 %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %136

33:                                               ; preds = %18
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.gather*, %struct.gather** %4, align 8
  %36 = getelementptr inbounds %struct.gather, %struct.gather* %35, i32 0, i32 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  %39 = load %struct.gather*, %struct.gather** %4, align 8
  %40 = getelementptr inbounds %struct.gather, %struct.gather* %39, i32 0, i32 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @assert(%struct.TYPE_7__* %41)
  %43 = load %struct.gather*, %struct.gather** %4, align 8
  %44 = getelementptr inbounds %struct.gather, %struct.gather* %43, i32 0, i32 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @tl_store_header(%struct.TYPE_7__* %45)
  %47 = load %struct.gather*, %struct.gather** %4, align 8
  %48 = getelementptr inbounds %struct.gather, %struct.gather* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @assert(%struct.TYPE_7__* %49)
  %51 = load %struct.gather*, %struct.gather** %4, align 8
  %52 = getelementptr inbounds %struct.gather, %struct.gather* %51, i32 0, i32 7
  %53 = load %struct.search_extra*, %struct.search_extra** %52, align 8
  store %struct.search_extra* %53, %struct.search_extra** %7, align 8
  %54 = load %struct.search_extra*, %struct.search_extra** %7, align 8
  %55 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tl_store_int(i32 %56)
  %58 = load %struct.search_extra*, %struct.search_extra** %7, align 8
  %59 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tl_store_int(i32 %60)
  %62 = load %struct.search_extra*, %struct.search_extra** %7, align 8
  %63 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @tl_store_int(i32 %64)
  %66 = load %struct.gather*, %struct.gather** %4, align 8
  %67 = getelementptr inbounds %struct.gather, %struct.gather* %66, i32 0, i32 6
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.gather*, %struct.gather** %4, align 8
  %70 = getelementptr inbounds %struct.gather, %struct.gather* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @tl_store_raw_data(%struct.TYPE_7__* %68, i32 %71)
  %73 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %74 = call i32 @tl_store_end_ext(i32 %73)
  %75 = load %struct.gather*, %struct.gather** %4, align 8
  %76 = getelementptr inbounds %struct.gather, %struct.gather* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %33
  %85 = load %struct.gather*, %struct.gather** %4, align 8
  %86 = getelementptr inbounds %struct.gather, %struct.gather* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @free(i32 %92)
  br label %94

94:                                               ; preds = %84, %33
  %95 = load %struct.gather*, %struct.gather** %4, align 8
  %96 = getelementptr inbounds %struct.gather, %struct.gather* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 -2, i32* %101, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.gather*, %struct.gather** %4, align 8
  %104 = getelementptr inbounds %struct.gather, %struct.gather* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.gather*, %struct.gather** %4, align 8
  %107 = getelementptr inbounds %struct.gather, %struct.gather* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.gather*, %struct.gather** %4, align 8
  %110 = getelementptr inbounds %struct.gather, %struct.gather* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @merge_query_type, align 4
  %113 = call %struct.rpc_query* @create_rpc_query(i64 %102, i32 %105, i32 %108, i32 %111, i32 %112, i32 0)
  store %struct.rpc_query* %113, %struct.rpc_query** %8, align 8
  %114 = call i64 @malloc(i32 16)
  %115 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %116 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.gather*, %struct.gather** %4, align 8
  %118 = bitcast %struct.gather* %117 to i8*
  %119 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %120 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8**
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  store i8* %118, i8** %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.rpc_query*, %struct.rpc_query** %8, align 8
  %128 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8**
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  store i8* %126, i8** %131, align 8
  %132 = load %struct.gather*, %struct.gather** %4, align 8
  %133 = getelementptr inbounds %struct.gather, %struct.gather* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %94, %32, %17
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @get_free_rpc_qid(i32) #1

declare dso_local i64 @rpc_proxy_store_init(i32*, i64) #1

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @tl_store_header(%struct.TYPE_7__*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_raw_data(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.rpc_query* @create_rpc_query(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
