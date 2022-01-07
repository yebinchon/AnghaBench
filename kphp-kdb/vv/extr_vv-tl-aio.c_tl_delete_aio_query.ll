; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_delete_aio_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_delete_aio_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@total_aio_time = common dso_local global double 0.000000e+00, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"delete_aio_query(%p): query time %.6f\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_delete_aio_query(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca double, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = call double @get_utime(i32 %9)
  %11 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %12 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to double
  %15 = fsub double %10, %14
  store double %15, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = load double, double* @total_aio_time, align 8
  %18 = fadd double %17, %16
  store double %18, double* @total_aio_time, align 8
  %19 = load i32, i32* @verbosity, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %24 = load double, double* %3, align 8
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %23, double %24)
  br label %26

26:                                               ; preds = %21, %8
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @active_aio_queries, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @active_aio_queries, align 4
  %30 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %31 = call i32 @delete_conn_query(%struct.conn_query* %30)
  %32 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %33 = call i32 @zfree(%struct.conn_query* %32, i32 8)
  ret i32 0
}

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*, double) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
