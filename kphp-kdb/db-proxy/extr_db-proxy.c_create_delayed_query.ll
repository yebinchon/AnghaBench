; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_delayed_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_create_delayed_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32 }
%struct.connection = type { i32, i64 }
%struct.conn_query = type { i64, %struct.TYPE_3__, i32*, i64, %struct.connection* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"create_delayed_query(%p, %p[%d]): Q=%p\0A\00", align 1
@proxy_delayed_query_type = common dso_local global i32 0, align 4
@query_wait_target = common dso_local global i32 0, align 4
@waiting_queries = common dso_local global i32 0, align 4
@tot_delayed_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"after insert_conn_query_into_list()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_delayed_query(%struct.conn_target* %0, %struct.connection* %1, double %2) #0 {
  %4 = alloca %struct.conn_target*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store double %2, double* %6, align 8
  %8 = call %struct.conn_query* @zmalloc(i32 40)
  store %struct.conn_query* %8, %struct.conn_query** %7, align 8
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %14 = load %struct.connection*, %struct.connection** %5, align 8
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.conn_target* %13, %struct.connection* %14, i32 %17, %struct.conn_query* %18)
  br label %20

20:                                               ; preds = %11, %3
  %21 = load %struct.connection*, %struct.connection** %5, align 8
  %22 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %23 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %22, i32 0, i32 4
  store %struct.connection* %21, %struct.connection** %23, align 8
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %28 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %32 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %31, i32 0, i32 2
  store i32* @proxy_delayed_query_type, i32** %32, align 8
  %33 = load double, double* %6, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %37 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to double
  %40 = load double, double* %6, align 8
  %41 = fadd double %39, %40
  br label %43

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi double [ %41, %35 ], [ 0.000000e+00, %42 ]
  %45 = fptosi double %44 to i64
  %46 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %47 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* @query_wait_target, align 4
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = call %struct.TYPE_4__* @SQLS_DATA(%struct.connection* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %54 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %55 = bitcast %struct.conn_target* %54 to %struct.conn_query*
  %56 = call i32 @insert_conn_query_into_list(%struct.conn_query* %53, %struct.conn_query* %55)
  %57 = load i32, i32* @waiting_queries, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @waiting_queries, align 4
  %59 = load i32, i32* @tot_delayed_queries, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @tot_delayed_queries, align 4
  %61 = load i32, i32* @verbosity, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %43
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @SQLS_DATA(%struct.connection*) #1

declare dso_local i32 @insert_conn_query_into_list(%struct.conn_query*, %struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
