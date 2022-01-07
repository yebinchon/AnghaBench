; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_request_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_request_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_request = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"\090x%08x\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\09master: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"completed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\09local:\00", align 1
@RQ_IN_ACT_LOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"in-AL\00", align 1
@RQ_POSTPONED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"postponed\00", align 1
@RQ_COMPLETION_SUSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@RQ_LOCAL_PENDING = common dso_local global i32 0, align 4
@RQ_LOCAL_COMPLETED = common dso_local global i32 0, align 4
@RQ_LOCAL_ABORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@RQ_LOCAL_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\09net:\00", align 1
@RQ_NET_PENDING = common dso_local global i32 0, align 4
@RQ_NET_QUEUED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@RQ_NET_SENT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@RQ_NET_DONE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@RQ_NET_SIS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"sis\00", align 1
@RQ_NET_OK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@RQ_EXP_RECEIVE_ACK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@RQ_EXP_WRITE_ACK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@RQ_EXP_BARR_ACK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"barr\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.drbd_request*)* @seq_print_request_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_request_state(%struct.seq_file* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %4, align 8
  %7 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %8 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i8 32, i8* %6, align 1
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RQ_IN_ACT_LOG, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %23, i32 %26, i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RQ_POSTPONED, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %28, i32 %31, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %33, i32 %36, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8 32, i8* %6, align 1
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %38, i32 %41, i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RQ_LOCAL_COMPLETED, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %43, i32 %46, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %48, i32 %51, i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @RQ_LOCAL_OK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %53, i32 %56, i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %2
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8 32, i8* %6, align 1
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @RQ_NET_PENDING, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %67, i32 %70, i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @RQ_NET_QUEUED, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %72, i32 %75, i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RQ_NET_SENT, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %77, i32 %80, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @RQ_NET_DONE, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %82, i32 %85, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @RQ_NET_SIS, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %87, i32 %90, i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @RQ_NET_OK, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %92, i32 %95, i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i8, i8* %6, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %103

100:                                              ; preds = %64
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = call i32 @seq_puts(%struct.seq_file* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %64
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  store i8 32, i8* %6, align 1
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @RQ_EXP_RECEIVE_ACK, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %106, i32 %109, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @RQ_EXP_WRITE_ACK, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %111, i32 %114, i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @RQ_EXP_BARR_ACK, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @seq_print_rq_state_bit(%struct.seq_file* %116, i32 %119, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %121 = load i8, i8* %6, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %127

124:                                              ; preds = %103
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = call i32 @seq_puts(%struct.seq_file* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %103
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_print_rq_state_bit(%struct.seq_file*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
