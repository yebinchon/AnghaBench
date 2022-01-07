; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_get_target_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_get_target_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.connection* }
%struct.conn_target = type { %struct.connection*, %struct.connection*, i32 }

@cr_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_connection(%struct.conn_target* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  %5 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %6 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %12 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %11, i32 0, i32 1
  %13 = load %struct.connection*, %struct.connection** %12, align 8
  store %struct.connection* %13, %struct.connection** %4, align 8
  br label %14

14:                                               ; preds = %10, %28
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = call i64 @server_check_ready(%struct.connection* %15)
  %17 = load i64, i64* @cr_ok, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %20, %struct.connection** %2, align 8
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %24 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %23, i32 0, i32 0
  %25 = load %struct.connection*, %struct.connection** %24, align 8
  %26 = icmp eq %struct.connection* %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.connection*, %struct.connection** %4, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load %struct.connection*, %struct.connection** %30, align 8
  store %struct.connection* %31, %struct.connection** %4, align 8
  br label %14

32:                                               ; preds = %27
  store %struct.connection* null, %struct.connection** %2, align 8
  br label %33

33:                                               ; preds = %32, %19, %9
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  ret %struct.connection* %34
}

declare dso_local i64 @server_check_ready(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
