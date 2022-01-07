; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_text_engine_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_text_engine_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.mcs_data = type { i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"text_engine_wakeup (%p)\0A\00", align 1
@conn_generation = common dso_local global i64 0, align 8
@conn_reading_query = common dso_local global i32 0, align 4
@mct_get_resume = common dso_local global i64 0, align 8
@mct_replace_resume = common dso_local global i64 0, align 8
@C_WANTWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @text_engine_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.mcs_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.mcs_data* @MCS_DATA(%struct.connection* %4)
  store %struct.mcs_data* %5, %struct.mcs_data** %3, align 8
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.connection* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i64, i64* @conn_generation, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @conn_generation, align 8
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @conn_reading_query, align 4
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mcs_data*, %struct.mcs_data** %3, align 8
  %23 = getelementptr inbounds %struct.mcs_data, %struct.mcs_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @mct_get_resume, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %12
  %28 = load %struct.mcs_data*, %struct.mcs_data** %3, align 8
  %29 = getelementptr inbounds %struct.mcs_data, %struct.mcs_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @mct_replace_resume, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %12
  %34 = phi i1 [ true, %12 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = call i32 @clear_connection_timeout(%struct.connection* %37)
  %39 = load %struct.connection*, %struct.connection** %2, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @C_WANTWR, align 4
  %46 = load %struct.connection*, %struct.connection** %2, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %33
  ret i32 0
}

declare dso_local %struct.mcs_data* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
