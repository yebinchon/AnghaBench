; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_create_history_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_create_history_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.connection = type { i32 }
%struct.conn_query = type { i64, %struct.TYPE_6__, i32*, i32, %struct.connection*, %struct.connection*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"OPPA\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"create_history_query (%p[%s], key = %p[%s], %p[%d]): q=%p\0A\00", align 1
@str_memory = common dso_local global i32 0, align 4
@history_cq_func = common dso_local global i32 0, align 4
@pending_http_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"after insert_conn_query()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_history_query(%struct.TYPE_7__* %0, %struct.connection* %1, double %2, %struct.conn_query** %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.conn_query**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.conn_query*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.connection* %1, %struct.connection** %7, align 8
  store double %2, double* %8, align 8
  store %struct.conn_query** %3, %struct.conn_query*** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %12, %struct.conn_query** %11, align 8
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %5
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.connection*, %struct.connection** %7, align 8
  %24 = call %struct.TYPE_9__* @HTS_DATA(%struct.connection* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.connection*, %struct.connection** %7, align 8
  %31 = call %struct.TYPE_9__* @HTS_DATA(%struct.connection* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.connection*, %struct.connection** %7, align 8
  %38 = load %struct.connection*, %struct.connection** %7, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %19, i8* %22, i8* %29, i8* %36, %struct.connection* %37, i32 %40, %struct.conn_query* %41)
  br label %43

43:                                               ; preds = %15, %5
  %44 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %45 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = bitcast %struct.TYPE_7__* %46 to %struct.connection*
  %48 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %49 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %48, i32 0, i32 5
  store %struct.connection* %47, %struct.connection** %49, align 8
  %50 = load %struct.connection*, %struct.connection** %7, align 8
  %51 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %52 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %51, i32 0, i32 4
  store %struct.connection* %50, %struct.connection** %52, align 8
  %53 = call i64 (...) @mytime()
  %54 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %55 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 %57, 1
  %59 = load i32, i32* @str_memory, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @str_memory, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @dl_strdup(i8* %63)
  %65 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %66 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %68 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %67, i32 0, i32 2
  store i32* @history_cq_func, i32** %68, align 8
  %69 = load double, double* %8, align 8
  %70 = fcmp ogt double %69, 0.000000e+00
  br i1 %70, label %71, label %78

71:                                               ; preds = %43
  %72 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %73 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = load double, double* %8, align 8
  %77 = fadd double %75, %76
  br label %79

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78, %71
  %80 = phi double [ %77, %71 ], [ 0.000000e+00, %78 ]
  %81 = fptosi double %80 to i64
  %82 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %83 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load i32, i32* @pending_http_queries, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @pending_http_queries, align 4
  %87 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %88 = call i32 @insert_conn_query(%struct.conn_query* %87)
  %89 = load i32, i32* @verbosity, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %79
  %95 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %96 = load %struct.conn_query**, %struct.conn_query*** %9, align 8
  store %struct.conn_query* %95, %struct.conn_query** %96, align 8
  ret i32 1
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @HTS_DATA(%struct.connection*) #1

declare dso_local i64 @mytime(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dl_strdup(i8*) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
