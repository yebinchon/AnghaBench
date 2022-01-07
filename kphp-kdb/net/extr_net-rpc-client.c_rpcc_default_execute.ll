; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_default_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_default_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.connection*)* }

@.str = private unnamed_addr constant [36 x i8] c"rpcc_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@RPC_PING = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@rpcc_default_execute.Q = internal global [12 x i32] zeroinitializer, align 16
@rpcc_default_execute.P = internal global [12 x i32] zeroinitializer, align 16
@RPC_PONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Received ping from fd=%d. ping_id = %lld. Sending pong\0A\00", align 1
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_default_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.connection*, %struct.connection** %5, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, i32, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RPC_PING, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i32, i32* @precise_now, align 4
  %23 = load %struct.connection*, %struct.connection** %5, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 2
  %27 = call i32 @read_in(i32* %26, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.Q, i64 0, i64 0), i32 24)
  %28 = icmp eq i32 %27, 24
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 24, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 0), align 16
  %31 = load %struct.connection*, %struct.connection** %5, align 8
  %32 = call %struct.TYPE_4__* @RPCC_DATA(%struct.connection* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 1), align 4
  %36 = load i32, i32* @RPC_PONG, align 4
  store i32 %36, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 2), align 8
  %37 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.Q, i64 0, i64 3), align 4
  store i32 %37, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 3), align 4
  %38 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.Q, i64 0, i64 4), align 16
  store i32 %38, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 4), align 16
  %39 = call i32 @compute_crc32(i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 0), i32 20)
  store i32 %39, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 5), align 4
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* bitcast (i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.Q, i64 0, i64 3) to i64*), align 8
  %44 = call i32 (i32, i8*, i32, i64, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  %45 = load %struct.connection*, %struct.connection** %5, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  %47 = call i32 @write_out(i32* %46, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @rpcc_default_execute.P, i64 0, i64 0), i32 24)
  %48 = load %struct.connection*, %struct.connection** %5, align 8
  %49 = call %struct.TYPE_3__* @RPCC_FUNC(%struct.connection* %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %50, align 8
  %52 = load %struct.connection*, %struct.connection** %5, align 8
  %53 = call i32 %51(%struct.connection* %52)
  store i32 24, i32* %4, align 4
  br label %56

54:                                               ; preds = %18, %3
  %55 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @RPCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
