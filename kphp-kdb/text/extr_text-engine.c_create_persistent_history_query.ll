; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_create_persistent_history_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_create_persistent_history_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.connection = type { i32 }
%struct.conn_query = type { i64, %struct.TYPE_5__, i32*, i64, %struct.connection*, %struct.connection*, i64 }
%struct.TYPE_5__ = type { i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"create_persistent_history_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@history_cq_func = common dso_local global i32 0, align 4
@pending_http_queries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_persistent_history_query(%struct.TYPE_6__* %0, %struct.connection* %1, double %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store double %2, double* %6, align 8
  %8 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %8, %struct.conn_query** %7, align 8
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.connection*, %struct.connection** %5, align 8
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %13, i32 %16, %struct.connection* %17, i32 %20, %struct.conn_query* %21)
  br label %23

23:                                               ; preds = %11, %3
  %24 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %25 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i64 @USER_PCONN(%struct.TYPE_6__* %26)
  %28 = inttoptr i64 %27 to %struct.connection*
  %29 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 5
  store %struct.connection* %28, %struct.connection** %30, align 8
  %31 = load %struct.connection*, %struct.connection** %5, align 8
  %32 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 4
  store %struct.connection* %31, %struct.connection** %33, align 8
  %34 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %35 = call i64 @get_utime(i32 %34)
  %36 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %37 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %39 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %41 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %40, i32 0, i32 2
  store i32* @history_cq_func, i32** %41, align 8
  %42 = load double, double* %6, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %51

44:                                               ; preds = %23
  %45 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %46 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load double, double* %6, align 8
  %50 = fadd double %48, %49
  br label %52

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi double [ %50, %44 ], [ 0.000000e+00, %51 ]
  %54 = fptosi double %53 to i64
  %55 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %56 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* @pending_http_queries, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @pending_http_queries, align 4
  %60 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %61 = call i32 @insert_conn_query(%struct.conn_query* %60)
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %52
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @USER_PCONN(%struct.TYPE_6__*) #1

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
