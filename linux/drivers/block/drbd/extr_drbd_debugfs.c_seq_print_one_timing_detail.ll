; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_one_timing_detail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_one_timing_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_thread_timing_details = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"%u\09%d\09%s:%u\09%ps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.drbd_thread_timing_details*, i64)* @seq_print_one_timing_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_one_timing_detail(%struct.seq_file* %0, %struct.drbd_thread_timing_details* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.drbd_thread_timing_details*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drbd_thread_timing_details, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.drbd_thread_timing_details* %1, %struct.drbd_thread_timing_details** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %12, %3
  %9 = load %struct.drbd_thread_timing_details*, %struct.drbd_thread_timing_details** %5, align 8
  %10 = bitcast %struct.drbd_thread_timing_details* %7 to i8*
  %11 = bitcast %struct.drbd_thread_timing_details* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  br label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drbd_thread_timing_details*, %struct.drbd_thread_timing_details** %5, align 8
  %16 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %8, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %40

24:                                               ; preds = %19
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %28, %30
  %32 = call i32 @jiffies_to_msecs(i64 %31)
  %33 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %32, i32 %34, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @jiffies_to_msecs(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
