; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i32, i32, i32* }

@cron.cur_conn_idx = internal global i32 0, align 4
@now = common dso_local global i32 0, align 4
@Connections = common dso_local global %struct.connection* null, align 8
@ct_dns_server = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Closing idle TCP connection %d.\0A\00", align 1
@conn_write_close = common dso_local global i64 0, align 8
@max_connection = common dso_local global i32 0, align 4
@worker_id = common dso_local global i64 0, align 8
@semaphore = common dso_local global i32 0, align 4
@WStats = common dso_local global i64 0, align 8
@wstat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cron() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  store i32 100, i32* %1, align 4
  %5 = load i32, i32* @cron.cur_conn_idx, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @now, align 4
  %7 = sub nsw i32 %6, 120
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %55, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  %12 = load %struct.connection*, %struct.connection** @Connections, align 8
  %13 = load i32, i32* @cron.cur_conn_idx, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %12, i64 %14
  store %struct.connection* %15, %struct.connection** %4, align 8
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, @ct_dns_server
  br i1 %19, label %20, label %44

20:                                               ; preds = %11
  %21 = load %struct.connection*, %struct.connection** %4, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.connection*, %struct.connection** %4, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @conn_expect_query, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @conn_write_close, align 8
  %38 = load %struct.connection*, %struct.connection** %4, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.connection*, %struct.connection** %4, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @put_event_into_heap(i32 %42)
  br label %44

44:                                               ; preds = %32, %26, %20, %11
  %45 = load i32, i32* @cron.cur_conn_idx, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @cron.cur_conn_idx, align 4
  %47 = load i32, i32* @max_connection, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* @cron.cur_conn_idx, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* @cron.cur_conn_idx, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %1, align 4
  br label %8

58:                                               ; preds = %54, %8
  %59 = load i64, i64* @worker_id, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = call i32 (...) @update_idle_stats()
  %63 = call i32 @sem_wait(i32* @semaphore)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* @WStats, align 8
  %67 = load i64, i64* @worker_id, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @memcpy(i64 %68, i32* @wstat, i32 4)
  %70 = call i32 @sem_post(i32* @semaphore)
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71, %58
  %73 = call i32 (...) @check_children_status()
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @put_event_into_heap(i32) #1

declare dso_local i32 @update_idle_stats(...) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @check_children_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
