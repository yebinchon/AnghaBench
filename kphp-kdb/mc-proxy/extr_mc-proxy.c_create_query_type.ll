; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_create_query_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_create_query_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i32, i64, %struct.TYPE_2__, i32*, i64, %struct.connection*, %struct.connection* }
%struct.TYPE_2__ = type { i64 }
%struct.connection = type { i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"create_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@proxy_query_type = common dso_local global i32 0, align 4
@active_queries = common dso_local global i32 0, align 4
@tot_forwarded_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_query* @create_query_type(%struct.connection* %0, %struct.connection* %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.connection* %1, %struct.connection** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %10, %struct.conn_query** %9, align 8
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.connection*, %struct.connection** %6, align 8
  %20 = load %struct.connection*, %struct.connection** %6, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.connection* %15, i32 %18, %struct.connection* %19, i32 %22, %struct.conn_query* %23)
  br label %25

25:                                               ; preds = %13, %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %28 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %31 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %30, i32 0, i32 6
  store %struct.connection* %29, %struct.connection** %31, align 8
  %32 = load %struct.connection*, %struct.connection** %6, align 8
  %33 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %34 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %33, i32 0, i32 5
  store %struct.connection* %32, %struct.connection** %34, align 8
  %35 = load %struct.connection*, %struct.connection** %6, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %39 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %41 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 3
  store i32* @proxy_query_type, i32** %43, align 8
  %44 = load double, double* %7, align 8
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %46, label %53

46:                                               ; preds = %25
  %47 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %48 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = load double, double* %7, align 8
  %52 = fadd double %50, %51
  br label %54

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi double [ %52, %46 ], [ 0.000000e+00, %53 ]
  %56 = fptosi double %55 to i64
  %57 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %58 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %61 = call i32 @insert_conn_query(%struct.conn_query* %60)
  %62 = load i32, i32* @active_queries, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @active_queries, align 4
  %64 = load i32, i32* @tot_forwarded_queries, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @tot_forwarded_queries, align 4
  %66 = load i32, i32* @verbosity, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %54
  %72 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  ret %struct.conn_query* %72
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
