; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i64, i64 }
%struct.mcs_data = type { i32 }

@conn_generation = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NOT_STORED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.mcs_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.mcs_data* @MCS_DATA(%struct.connection* %4)
  store %struct.mcs_data* %5, %struct.mcs_data** %3, align 8
  %6 = load i64, i64* @conn_generation, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* @conn_generation, align 8
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 4
  store i64 %7, i64* %9, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @conn_expect_query, align 4
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mcs_data*, %struct.mcs_data** %3, align 8
  %16 = getelementptr inbounds %struct.mcs_data, %struct.mcs_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 12287
  switch i32 %18, label %43 [
    i32 131, label %19
    i32 130, label %23
    i32 133, label %23
    i32 132, label %23
    i32 134, label %33
    i32 129, label %33
    i32 128, label %33
  ]

19:                                               ; preds = %1
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = call i32 @write_out(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  br label %43

23:                                               ; preds = %1, %1, %1
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = call i32 @write_out(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  br label %32

32:                                               ; preds = %28, %23
  br label %43

33:                                               ; preds = %1, %1, %1
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.connection*, %struct.connection** %2, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = call i32 @write_out(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %1, %42, %32, %19
  %44 = load %struct.connection*, %struct.connection** %2, align 8
  %45 = call i32 @clear_connection_timeout(%struct.connection* %44)
  %46 = load %struct.connection*, %struct.connection** %2, align 8
  %47 = call i32 @mcs_pad_response(%struct.connection* %46)
  ret i32 0
}

declare dso_local %struct.mcs_data* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @mcs_pad_response(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
