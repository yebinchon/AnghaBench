; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_peer_request_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_peer_request_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_peer_request = type { i64 }

@EE_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"submitted\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"preparing\00", align 1
@EE_APPLICATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@EE_CALL_AL_COMPLETE_IO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"in-AL\00", align 1
@EE_SEND_WRITE_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@EE_MAY_SET_IN_SYNC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"set-in-sync\00", align 1
@EE_TRIM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@EE_ZEROOUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"zero-out\00", align 1
@EE_WRITE_SAME = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"write-same\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.drbd_peer_request*)* @seq_print_peer_request_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_peer_request_flags(%struct.seq_file* %0, %struct.drbd_peer_request* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.drbd_peer_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.drbd_peer_request* %1, %struct.drbd_peer_request** %4, align 8
  %7 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %4, align 8
  %8 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  store i8 32, i8* %6, align 1
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @EE_SUBMITTED, align 8
  %13 = and i64 %11, %12
  %14 = call i32 @__seq_print_rq_state_bit(%struct.seq_file* %10, i64 %13, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EE_APPLICATION, align 8
  %18 = and i64 %16, %17
  %19 = call i32 @__seq_print_rq_state_bit(%struct.seq_file* %15, i64 %18, i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @EE_CALL_AL_COMPLETE_IO, align 8
  %23 = and i64 %21, %22
  %24 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %20, i64 %23, i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @EE_SEND_WRITE_ACK, align 8
  %28 = and i64 %26, %27
  %29 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %25, i64 %28, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @EE_MAY_SET_IN_SYNC, align 8
  %33 = and i64 %31, %32
  %34 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %30, i64 %33, i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @EE_TRIM, align 8
  %38 = and i64 %36, %37
  %39 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %35, i64 %38, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @EE_ZEROOUT, align 8
  %43 = and i64 %41, %42
  %44 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %40, i64 %43, i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @EE_WRITE_SAME, align 8
  %48 = and i64 %46, %47
  %49 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %45, i64 %48, i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @seq_putc(%struct.seq_file* %50, i8 signext 10)
  ret void
}

declare dso_local i32 @__seq_print_rq_state_bit(%struct.seq_file*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @seq_print_rq_state_bit(%struct.seq_file*, i64, i8*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
