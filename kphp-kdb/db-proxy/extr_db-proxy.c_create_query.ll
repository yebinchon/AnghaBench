; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64 }
%struct.conn_query = type { i64, %struct.TYPE_3__, i32*, i64, %struct.connection*, %struct.connection* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"create_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@proxy_query_type = common dso_local global i32 0, align 4
@query_running = common dso_local global i32 0, align 4
@active_queries = common dso_local global i32 0, align 4
@tot_forwarded_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_query(%struct.connection* %0, %struct.connection* %1, double %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store double %2, double* %6, align 8
  %8 = call %struct.conn_query* @zmalloc(i32 48)
  store %struct.conn_query* %8, %struct.conn_query** %7, align 8
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.connection*, %struct.connection** %5, align 8
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.connection* %13, i32 %16, %struct.connection* %17, i32 %20, %struct.conn_query* %21)
  br label %23

23:                                               ; preds = %11, %3
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %26 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %25, i32 0, i32 5
  store %struct.connection* %24, %struct.connection** %26, align 8
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 4
  store %struct.connection* %27, %struct.connection** %29, align 8
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %36 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %38 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %37, i32 0, i32 2
  store i32* @proxy_query_type, i32** %38, align 8
  %39 = load double, double* %6, align 8
  %40 = fcmp ogt double %39, 0.000000e+00
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = load double, double* %6, align 8
  %47 = fadd double %45, %46
  br label %49

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi double [ %47, %41 ], [ 0.000000e+00, %48 ]
  %51 = fptosi double %50 to i64
  %52 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %53 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @query_running, align 4
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = call %struct.TYPE_4__* @SQLS_DATA(%struct.connection* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %60 = call i32 @insert_conn_query(%struct.conn_query* %59)
  %61 = load i32, i32* @active_queries, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @active_queries, align 4
  %63 = load i32, i32* @tot_forwarded_queries, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @tot_forwarded_queries, align 4
  %65 = load i32, i32* @verbosity, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %49
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @SQLS_DATA(%struct.connection*) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
