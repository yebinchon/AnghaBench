; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-mysql-server.c_sqls_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.connection*)* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sqls_wakeup for #%d: status=%d\0A\00", align 1
@conn_wait_net = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i64 0, align 8
@C_WANTWR = common dso_local global i32 0, align 4
@conn_generation = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @sqls_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqls_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %5, %1
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @conn_wait_net, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = call %struct.TYPE_4__* @SQLS_FUNC(%struct.connection* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %24, align 8
  %26 = load %struct.connection*, %struct.connection** %2, align 8
  %27 = call i32 %25(%struct.connection* %26)
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @conn_wait_net, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load i64, i64* @conn_expect_query, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %21
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @C_WANTWR, align 4
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64, i64* @conn_generation, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* @conn_generation, align 8
  %55 = load %struct.connection*, %struct.connection** %2, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.connection*, %struct.connection** %2, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @SQLS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
