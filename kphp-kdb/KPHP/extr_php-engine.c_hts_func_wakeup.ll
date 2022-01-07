; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_func_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_func_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i64 }
%struct.hts_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8
@precise_now = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"timeout in http connection wakeup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_func_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.hts_data*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = call %struct.hts_data* @HTS_DATA(%struct.connection* %6)
  store %struct.hts_data* %7, %struct.hts_data** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @conn_expect_query, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @conn_wait_net, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @conn_expect_query, align 8
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %27 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load i64, i64* @precise_now, align 8
  %34 = sitofp i64 %33 to double
  %35 = fadd double %34, 1.000000e-02
  %36 = fcmp olt double %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = call i32 @php_worker_terminate(%struct.TYPE_4__* %38, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %19
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = call i32 @php_worker_main(%struct.TYPE_4__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.connection*, %struct.connection** %2, align 8
  %47 = call i32 @hts_at_query_end(%struct.connection* %46, i32 1)
  br label %63

48:                                               ; preds = %40
  %49 = load %struct.connection*, %struct.connection** %2, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @conn_wait_net, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi i1 [ false, %48 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %63

63:                                               ; preds = %59, %45
  ret i32 0
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_worker_terminate(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @php_worker_main(%struct.TYPE_4__*) #1

declare dso_local i32 @hts_at_query_end(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
