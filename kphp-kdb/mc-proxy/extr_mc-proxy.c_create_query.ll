; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_create_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.TYPE_3__, i32*, i64, %struct.connection*, %struct.connection*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.connection = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"create_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@proxy_query_type = common dso_local global i32 0, align 4
@active_queries = common dso_local global i32 0, align 4
@tot_forwarded_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_query* @create_query(%struct.connection* %0, %struct.connection* %1, double %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store double %2, double* %6, align 8
  %8 = call %struct.conn_query* @zmalloc(i32 56)
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
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = call %struct.TYPE_4__* @MCS_DATA(%struct.connection* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.connection*, %struct.connection** %4, align 8
  %31 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %32 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %31, i32 0, i32 5
  store %struct.connection* %30, %struct.connection** %32, align 8
  %33 = load %struct.connection*, %struct.connection** %5, align 8
  %34 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 4
  store %struct.connection* %33, %struct.connection** %35, align 8
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %40 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %42 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %44 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %43, i32 0, i32 2
  store i32* @proxy_query_type, i32** %44, align 8
  %45 = load double, double* %6, align 8
  %46 = fcmp ogt double %45, 0.000000e+00
  br i1 %46, label %47, label %54

47:                                               ; preds = %23
  %48 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %49 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = load double, double* %6, align 8
  %53 = fadd double %51, %52
  br label %55

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi double [ %53, %47 ], [ 0.000000e+00, %54 ]
  %57 = fptosi double %56 to i64
  %58 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %59 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %62 = call i32 @insert_conn_query(%struct.conn_query* %61)
  %63 = load i32, i32* @active_queries, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @active_queries, align 4
  %65 = load i32, i32* @tot_forwarded_queries, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @tot_forwarded_queries, align 4
  %67 = load i32, i32* @verbosity, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %55
  %73 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  ret %struct.conn_query* %73
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
