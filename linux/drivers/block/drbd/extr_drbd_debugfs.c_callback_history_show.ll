; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_callback_history_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_callback_history_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drbd_connection* }
%struct.drbd_connection = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"v: %u\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"n\09age\09callsite\09fn\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"receiver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @callback_history_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback_history_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drbd_connection*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  store %struct.drbd_connection* %9, %struct.drbd_connection** %5, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %17 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @seq_print_timing_details(%struct.seq_file* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %21, i64 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %26 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %29 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @seq_print_timing_details(%struct.seq_file* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %30, i64 %31)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_print_timing_details(%struct.seq_file*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
