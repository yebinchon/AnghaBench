; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_create_inbound_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_create_inbound_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_3__, i64, i32*, %struct.gather_data*, %struct.connection*, %struct.connection*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.gather_data = type { i32 }
%struct.connection = type { i64 }
%struct.TYPE_4__ = type { i32 }

@search_query_type = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"after insert_conn_query(). Q->start_time = %lf, Q->timer.wakeup_time=%lf. cur_time=%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_query* @create_inbound_query(%struct.gather_data* %0, %struct.connection* %1, double %2) #0 {
  %4 = alloca %struct.gather_data*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.conn_query*, align 8
  store %struct.gather_data* %0, %struct.gather_data** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store double %2, double* %6, align 8
  %8 = call %struct.conn_query* @zmalloc(i32 56)
  store %struct.conn_query* %8, %struct.conn_query** %7, align 8
  %9 = load %struct.connection*, %struct.connection** %5, align 8
  %10 = call %struct.TYPE_4__* @MCS_DATA(%struct.connection* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %14 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %17 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %16, i32 0, i32 5
  store %struct.connection* %15, %struct.connection** %17, align 8
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %20 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %19, i32 0, i32 4
  store %struct.connection* %18, %struct.connection** %20, align 8
  %21 = load %struct.connection*, %struct.connection** %5, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %25 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.gather_data*, %struct.gather_data** %4, align 8
  %27 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %28 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %27, i32 0, i32 3
  store %struct.gather_data* %26, %struct.gather_data** %28, align 8
  %29 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 2
  store i32* @search_query_type, i32** %30, align 8
  %31 = load double, double* %6, align 8
  %32 = fcmp ogt double %31, 0.000000e+00
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = load double, double* %6, align 8
  %39 = fadd double %37, %38
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi double [ %39, %33 ], [ 0.000000e+00, %40 ]
  %43 = fptosi double %42 to i64
  %44 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %45 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %48 = call i32 @insert_conn_query(%struct.conn_query* %47)
  %49 = load i32, i32* @verbosity, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i32, i32* @stderr, align 4
  %53 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %54 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  %57 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (...) @get_utime_monotonic()
  %61 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %41
  %63 = load %struct.conn_query*, %struct.conn_query** %7, align 8
  ret %struct.conn_query* %63
}

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local %struct.TYPE_4__* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @get_utime_monotonic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
