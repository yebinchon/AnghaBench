; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_get_target_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_get_target_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.connection* }
%struct.conn_target = type { %struct.connection* }

@cr_ok = common dso_local global i32 0, align 4
@ROUND_ROBIN_EXTENSION = common dso_local global i64 0, align 8
@cr_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_connection(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store %struct.connection* null, %struct.connection** %5, align 8
  store i32 10000, i32* %7, align 4
  %8 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %9 = icmp ne %struct.conn_target* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %13 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %12, i32 0, i32 0
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  store %struct.connection* %14, %struct.connection** %4, align 8
  br label %15

15:                                               ; preds = %52, %11
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %18 = bitcast %struct.conn_target* %17 to %struct.connection*
  %19 = icmp ne %struct.connection* %16, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = load %struct.connection*, %struct.connection** %4, align 8
  %22 = call i32 @mcp_check_ready(%struct.connection* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @cr_ok, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i64, i64* @ROUND_ROBIN_EXTENSION, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = call i32 @rotate_target(%struct.conn_target* %30, %struct.connection* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %34, %struct.connection** %2, align 8
  br label %58

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @cr_stopped, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.connection*, %struct.connection** %4, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %49, %struct.connection** %5, align 8
  br label %50

50:                                               ; preds = %45, %39, %35
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.connection*, %struct.connection** %4, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 1
  %55 = load %struct.connection*, %struct.connection** %54, align 8
  store %struct.connection* %55, %struct.connection** %4, align 8
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.connection*, %struct.connection** %5, align 8
  store %struct.connection* %57, %struct.connection** %2, align 8
  br label %58

58:                                               ; preds = %56, %33, %10
  %59 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %59
}

declare dso_local i32 @mcp_check_ready(%struct.connection*) #1

declare dso_local i32 @rotate_target(%struct.conn_target*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
