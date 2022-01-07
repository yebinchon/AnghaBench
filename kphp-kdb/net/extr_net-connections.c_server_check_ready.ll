; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32 }

@conn_none = common dso_local global i64 0, align 8
@conn_connecting = common dso_local global i64 0, align 8
@cr_notyet = common dso_local global i32 0, align 4
@conn_error = common dso_local global i64 0, align 8
@cr_failed = common dso_local global i64 0, align 8
@cr_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @conn_none, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @conn_connecting, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @cr_notyet, align 4
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  store i32 %16, i32* %2, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @conn_error, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @cr_failed, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25, %19
  %33 = load i64, i64* @cr_failed, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 %34, i32* %2, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @cr_ok, align 4
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32 %38, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %32, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
