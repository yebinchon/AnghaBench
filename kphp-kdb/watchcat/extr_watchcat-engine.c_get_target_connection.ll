; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_get_target_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_get_target_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.connection* }
%struct.conn_target = type { %struct.connection* }

@cr_ok = common dso_local global i32 0, align 4
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
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %13 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %12, i32 0, i32 0
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  store %struct.connection* %14, %struct.connection** %4, align 8
  br label %15

15:                                               ; preds = %45, %11
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %18 = bitcast %struct.conn_target* %17 to %struct.connection*
  %19 = icmp ne %struct.connection* %16, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.connection*, %struct.connection** %4, align 8
  %22 = call i32 @server_check_ready(%struct.connection* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @cr_ok, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %27, %struct.connection** %2, align 8
  br label %51

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @cr_stopped, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.connection*, %struct.connection** %4, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %42, %struct.connection** %5, align 8
  br label %43

43:                                               ; preds = %38, %32, %28
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 1
  %48 = load %struct.connection*, %struct.connection** %47, align 8
  store %struct.connection* %48, %struct.connection** %4, align 8
  br label %15

49:                                               ; preds = %15
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  store %struct.connection* %50, %struct.connection** %2, align 8
  br label %51

51:                                               ; preds = %49, %26, %10
  %52 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %52
}

declare dso_local i32 @server_check_ready(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
