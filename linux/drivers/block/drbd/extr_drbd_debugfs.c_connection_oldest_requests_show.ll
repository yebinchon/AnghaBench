; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_connection_oldest_requests_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_connection_oldest_requests_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drbd_connection* }
%struct.drbd_connection = type { %struct.TYPE_2__*, %struct.drbd_request*, %struct.drbd_request*, %struct.drbd_request* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_request = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"v: %u\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @connection_oldest_requests_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connection_oldest_requests_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drbd_connection*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drbd_request*, align 8
  %8 = alloca %struct.drbd_request*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %10, align 8
  store %struct.drbd_connection* %11, %struct.drbd_connection** %5, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %16 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 3
  %22 = load %struct.drbd_request*, %struct.drbd_request** %21, align 8
  store %struct.drbd_request* %22, %struct.drbd_request** %7, align 8
  %23 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %24 = icmp ne %struct.drbd_request* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @seq_print_minor_vnr_req(%struct.seq_file* %26, %struct.drbd_request* %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %32 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %31, i32 0, i32 2
  %33 = load %struct.drbd_request*, %struct.drbd_request** %32, align 8
  store %struct.drbd_request* %33, %struct.drbd_request** %8, align 8
  %34 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %35 = icmp ne %struct.drbd_request* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %38 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %39 = icmp ne %struct.drbd_request* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  store %struct.drbd_request* %41, %struct.drbd_request** %7, align 8
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @seq_print_minor_vnr_req(%struct.seq_file* %42, %struct.drbd_request* %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %36, %30
  %47 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %48 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %47, i32 0, i32 1
  %49 = load %struct.drbd_request*, %struct.drbd_request** %48, align 8
  store %struct.drbd_request* %49, %struct.drbd_request** %8, align 8
  %50 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %51 = icmp ne %struct.drbd_request* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %54 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %55 = icmp ne %struct.drbd_request* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @seq_print_minor_vnr_req(%struct.seq_file* %57, %struct.drbd_request* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %52, %46
  %62 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %63 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @seq_print_minor_vnr_req(%struct.seq_file*, %struct.drbd_request*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
