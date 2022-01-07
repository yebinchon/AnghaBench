; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_join.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64 }
%struct.rpc_join = type { i32, i32, i32, i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rpc_execute_join: len = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_join(%struct.connection* %0, %struct.rpc_join* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_join*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_join* %1, %struct.rpc_join** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 24
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %15
  %21 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %36 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %39 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %42 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = load %struct.rpc_join*, %struct.rpc_join** %6, align 8
  %46 = getelementptr inbounds %struct.rpc_join, %struct.rpc_join* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @add_node(i64 %34, i32 %37, i32 %40, i32 %43, %struct.connection* %44, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.connection*, %struct.connection** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @rpc_send_join_ack(%struct.connection* %49, i64 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %58

54:                                               ; preds = %33
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @rpc_send_delays(%struct.connection* %55, i64 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %53, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @add_node(i64, i32, i32, i32, %struct.connection*, i32) #1

declare dso_local i64 @rpc_send_join_ack(%struct.connection*, i64) #1

declare dso_local i32 @rpc_send_delays(%struct.connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
