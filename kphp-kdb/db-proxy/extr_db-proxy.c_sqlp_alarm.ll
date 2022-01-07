; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"proxy_mysql_server connection %d timeout alarm, %d queries pending, status=%d\0A\00", align 1
@conn_wait_net = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"connection %d (IN: %d+%d, OUT: %d+%d, FLAGS: %d) is in state %d, conn_wait_net expected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlp_alarm(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %5, %1
  %18 = load %struct.connection*, %struct.connection** %2, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @conn_wait_net, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.connection*, %struct.connection** %2, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.connection*, %struct.connection** %2, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.connection*, %struct.connection** %2, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %32, i32 %36, i32 %40, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %24, %17
  %53 = load %struct.connection*, %struct.connection** %2, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @conn_wait_net, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.connection*, %struct.connection** %2, align 8
  %62 = call i32 @sqlp_wakeup(%struct.connection* %61)
  ret i32 %62
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlp_wakeup(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
