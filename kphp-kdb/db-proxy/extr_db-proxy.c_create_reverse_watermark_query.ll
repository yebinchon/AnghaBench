; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_reverse_watermark_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_reverse_watermark_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.conn_query = type { %struct.TYPE_2__, i32*, i64, i32, %struct.connection*, %struct.connection* }
%struct.TYPE_2__ = type { i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"create_rev_watermark_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@precise_now = common dso_local global i32 0, align 4
@proxy_watermark_query_type = common dso_local global i32 0, align 4
@watermark_rev_queries = common dso_local global i32 0, align 4
@tot_watermark_rev_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"after push_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_reverse_watermark_query(%struct.connection* %0, %struct.connection* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store %struct.connection* %1, %struct.connection** %4, align 8
  %6 = call %struct.conn_query* @zmalloc(i32 48)
  store %struct.conn_query* %6, %struct.conn_query** %5, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.connection* %11, i32 %14, %struct.connection* %15, i32 %18, %struct.conn_query* %19)
  br label %21

21:                                               ; preds = %9, %2
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %24 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %23, i32 0, i32 5
  store %struct.connection* %22, %struct.connection** %24, align 8
  %25 = load %struct.connection*, %struct.connection** %4, align 8
  %26 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %27 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %26, i32 0, i32 4
  store %struct.connection* %25, %struct.connection** %27, align 8
  %28 = load i32, i32* @precise_now, align 4
  %29 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %32 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 1
  store i32* @proxy_watermark_query_type, i32** %34, align 8
  %35 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %36 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %39 = call i32 @push_conn_query(%struct.conn_query* %38)
  %40 = load i32, i32* @watermark_rev_queries, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @watermark_rev_queries, align 4
  %42 = load i32, i32* @tot_watermark_rev_queries, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @tot_watermark_rev_queries, align 4
  %44 = load i32, i32* @verbosity, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %21
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @push_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
