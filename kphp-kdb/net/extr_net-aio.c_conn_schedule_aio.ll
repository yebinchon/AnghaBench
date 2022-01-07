; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_conn_schedule_aio.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_conn_schedule_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i32 }
%struct.connection = type { i32, i64, i64 }
%struct.conn_query_functions = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"in conn_schedule_aio(%p,%p)\0A\00", align 1
@conn_generation = common dso_local global i64 0, align 8
@conn_wait_aio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conn_schedule_aio(%struct.aio_connection* %0, %struct.connection* %1, double %2, %struct.conn_query_functions* %3) #0 {
  %5 = alloca %struct.aio_connection*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.conn_query_functions*, align 8
  store %struct.aio_connection* %0, %struct.aio_connection** %5, align 8
  store %struct.connection* %1, %struct.connection** %6, align 8
  store double %2, double* %7, align 8
  store %struct.conn_query_functions* %3, %struct.conn_query_functions** %8, align 8
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %14 = load %struct.connection*, %struct.connection** %6, align 8
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.aio_connection* %13, %struct.connection* %14)
  br label %16

16:                                               ; preds = %11, %4
  %17 = load i64, i64* @conn_generation, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @conn_generation, align 8
  %19 = load %struct.connection*, %struct.connection** %6, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.connection*, %struct.connection** %6, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %24 = load %struct.connection*, %struct.connection** %6, align 8
  %25 = load double, double* %7, align 8
  %26 = load %struct.conn_query_functions*, %struct.conn_query_functions** %8, align 8
  %27 = call i32 @create_aio_query(%struct.aio_connection* %23, %struct.connection* %24, double %25, %struct.conn_query_functions* %26)
  %28 = load i32, i32* @conn_wait_aio, align 4
  %29 = load %struct.connection*, %struct.connection** %6, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret i32 -1
}

declare dso_local i32 @fprintf(i32, i8*, %struct.aio_connection*, %struct.connection*) #1

declare dso_local i32 @create_aio_query(%struct.aio_connection*, %struct.connection*, double, %struct.conn_query_functions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
