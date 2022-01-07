; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_create_aio_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_create_aio_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i32, %struct.conn_query* }
%struct.conn_query = type { i64, %struct.TYPE_2__, %struct.conn_query_functions*, %struct.tl_saved_query*, %struct.connection*, %struct.connection*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.connection = type { i32, i32 }
%struct.conn_query_functions = type { i32 }
%struct.tl_saved_query = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"create_query(%p[%d], %p[%d]): Q=%p\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"!NOTICE! inserting second query to %p\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@tot_aio_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_create_aio_query(%struct.aio_connection* %0, %struct.connection* %1, double %2, %struct.conn_query_functions* %3, %struct.tl_saved_query* %4) #0 {
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.conn_query_functions*, align 8
  %10 = alloca %struct.tl_saved_query*, align 8
  %11 = alloca %struct.conn_query*, align 8
  store %struct.aio_connection* %0, %struct.aio_connection** %6, align 8
  store %struct.connection* %1, %struct.connection** %7, align 8
  store double %2, double* %8, align 8
  store %struct.conn_query_functions* %3, %struct.conn_query_functions** %9, align 8
  store %struct.tl_saved_query* %4, %struct.tl_saved_query** %10, align 8
  %12 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %12, %struct.conn_query** %11, align 8
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %18 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %19 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.connection*, %struct.connection** %7, align 8
  %22 = load %struct.connection*, %struct.connection** %7, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.aio_connection* %17, i32 %20, %struct.connection* %21, i32 %24, %struct.conn_query* %25)
  br label %27

27:                                               ; preds = %15, %5
  %28 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %31 = bitcast %struct.aio_connection* %30 to %struct.connection*
  %32 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 5
  store %struct.connection* %31, %struct.connection** %33, align 8
  %34 = load %struct.connection*, %struct.connection** %7, align 8
  %35 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %36 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %35, i32 0, i32 4
  store %struct.connection* %34, %struct.connection** %36, align 8
  %37 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %38 = call i64 @get_utime(i32 %37)
  %39 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %40 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.tl_saved_query*, %struct.tl_saved_query** %10, align 8
  %42 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 3
  store %struct.tl_saved_query* %41, %struct.tl_saved_query** %43, align 8
  %44 = load %struct.conn_query_functions*, %struct.conn_query_functions** %9, align 8
  %45 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %46 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %45, i32 0, i32 2
  store %struct.conn_query_functions* %44, %struct.conn_query_functions** %46, align 8
  %47 = load double, double* %8, align 8
  %48 = fcmp ogt double %47, 0.000000e+00
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  %50 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %51 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = load double, double* %8, align 8
  %55 = fadd double %53, %54
  br label %57

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi double [ %55, %49 ], [ 0.000000e+00, %56 ]
  %59 = fptosi double %58 to i64
  %60 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %61 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @verbosity, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %67 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %66, i32 0, i32 1
  %68 = load %struct.conn_query*, %struct.conn_query** %67, align 8
  %69 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %70 = bitcast %struct.aio_connection* %69 to %struct.conn_query*
  %71 = icmp ne %struct.conn_query* %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @stderr, align 4
  %74 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.aio_connection* %74)
  br label %76

76:                                               ; preds = %72, %65, %57
  %77 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %78 = call i32 @insert_conn_query(%struct.conn_query* %77)
  %79 = load %struct.connection*, %struct.connection** %7, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @active_aio_queries, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @active_aio_queries, align 4
  %85 = load i32, i32* @tot_aio_queries, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @tot_aio_queries, align 4
  %87 = load i32, i32* @verbosity, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %76
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
