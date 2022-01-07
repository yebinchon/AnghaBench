; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_timing_details.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_timing_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_thread_timing_details = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DRBD_THREAD_DETAILS_HIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*, i32, %struct.drbd_thread_timing_details*, i64)* @seq_print_timing_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_timing_details(%struct.seq_file* %0, i8* %1, i32 %2, %struct.drbd_thread_timing_details* %3, i64 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_thread_timing_details*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drbd_thread_timing_details* %3, %struct.drbd_thread_timing_details** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DRBD_THREAD_DETAILS_HIST, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %32, %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @DRBD_THREAD_DETAILS_HIST, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %26 = load %struct.drbd_thread_timing_details*, %struct.drbd_thread_timing_details** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %26, i64 %28
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @seq_print_one_timing_detail(%struct.seq_file* %25, %struct.drbd_thread_timing_details* %29, i64 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %42 = load %struct.drbd_thread_timing_details*, %struct.drbd_thread_timing_details** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.drbd_thread_timing_details, %struct.drbd_thread_timing_details* %42, i64 %44
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @seq_print_one_timing_detail(%struct.seq_file* %41, %struct.drbd_thread_timing_details* %45, i64 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %36

51:                                               ; preds = %36
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_print_one_timing_detail(%struct.seq_file*, %struct.drbd_thread_timing_details*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
