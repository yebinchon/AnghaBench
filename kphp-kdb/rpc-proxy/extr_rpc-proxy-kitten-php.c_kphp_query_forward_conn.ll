; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kphp_query_forward_conn.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_kphp_query_forward_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 (i64)* }
%struct.TYPE_5__ = type { %struct.tl_query_header* }
%struct.tl_query_header = type { i64, double, i64, i32 }
%struct.connection = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"default_query_forward: CC->id = %lld, CC->timeout = %lf\0A\00", align 1
@CC = common dso_local global %struct.TYPE_6__* null, align 8
@forwarded_queries = common dso_local global i32 0, align 4
@CQ = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kphp_query_forward_conn(%struct.connection* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.tl_query_header*, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load %struct.connection*, %struct.connection** %6, align 8
  %21 = ptrtoint %struct.connection* %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i64 (...) @tl_fetch_error()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %98

26:                                               ; preds = %4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @forwarded_queries, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @forwarded_queries, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CQ, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.tl_query_header*, %struct.tl_query_header** %34, align 8
  %36 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CQ, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.tl_query_header*, %struct.tl_query_header** %39, align 8
  %41 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  store double %42, double* %11, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CQ, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.tl_query_header*, %struct.tl_query_header** %44, align 8
  %46 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fmul double %47, 9.000000e-01
  store double %48, double* %46, align 8
  %49 = load %struct.connection*, %struct.connection** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @tl_store_init(%struct.connection* %49, i64 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CQ, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.tl_query_header*, %struct.tl_query_header** %53, align 8
  store %struct.tl_query_header* %54, %struct.tl_query_header** %12, align 8
  %55 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %56 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %66 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %69 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %71 = call i32 @tl_store_header(%struct.tl_query_header* %70)
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %74 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %79 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load double, double* %11, align 8
  %81 = load %struct.tl_query_header*, %struct.tl_query_header** %12, align 8
  %82 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %81, i32 0, i32 1
  store double %80, double* %82, align 8
  %83 = call i32 (...) @tl_fetch_unread()
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @tl_copy_through(i32 %83, i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (i64)*, i32 (i64)** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 %89(i64 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CQ, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.tl_query_header*, %struct.tl_query_header** %93, align 8
  %95 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @tl_store_end_ext(i32 %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %26, %25
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i64) #1

declare dso_local i32 @tl_store_header(%struct.tl_query_header*) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

declare dso_local i32 @tl_store_end_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
