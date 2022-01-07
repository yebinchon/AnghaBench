; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_target_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_target_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.connection* }
%struct.conn_target = type { %struct.TYPE_2__*, %struct.connection* }
%struct.TYPE_2__ = type { i32 (%struct.connection*)* }

@cr_ok = common dso_local global i32 0, align 4
@cr_notyet = common dso_local global i32 0, align 4
@cr_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @get_target_connection(%struct.conn_target* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.conn_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.conn_target* %0, %struct.conn_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.connection* null, %struct.connection** %7, align 8
  store i32 10000, i32* %8, align 4
  %10 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %11 = icmp ne %struct.conn_target* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.connection* null, %struct.connection** %3, align 8
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %15 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %14, i32 0, i32 1
  %16 = load %struct.connection*, %struct.connection** %15, align 8
  store %struct.connection* %16, %struct.connection** %6, align 8
  br label %17

17:                                               ; preds = %59, %13
  %18 = load %struct.connection*, %struct.connection** %6, align 8
  %19 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %20 = bitcast %struct.conn_target* %19 to %struct.connection*
  %21 = icmp ne %struct.connection* %18, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load %struct.conn_target*, %struct.conn_target** %4, align 8
  %24 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %26, align 8
  %28 = load %struct.connection*, %struct.connection** %6, align 8
  %29 = call i32 %27(%struct.connection* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @cr_ok, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @cr_notyet, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %22
  %41 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %41, %struct.connection** %3, align 8
  br label %65

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @cr_stopped, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.connection*, %struct.connection** %6, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.connection*, %struct.connection** %6, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %56, %struct.connection** %7, align 8
  br label %57

57:                                               ; preds = %52, %46, %42
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.connection*, %struct.connection** %6, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 1
  %62 = load %struct.connection*, %struct.connection** %61, align 8
  store %struct.connection* %62, %struct.connection** %6, align 8
  br label %17

63:                                               ; preds = %17
  %64 = load %struct.connection*, %struct.connection** %7, align 8
  store %struct.connection* %64, %struct.connection** %3, align 8
  br label %65

65:                                               ; preds = %63, %40, %12
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
