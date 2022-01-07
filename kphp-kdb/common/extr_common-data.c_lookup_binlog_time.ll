; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_lookup_binlog_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_common-data.c_lookup_binlog_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@fbd_rptr = common dso_local global i32 0, align 4
@fbd_wptr = common dso_local global i32 0, align 4
@BINLOGPOS_QUEUE_SIZE = common dso_local global i32 0, align 4
@fbd_data = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_binlog_time(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @fbd_rptr, align 4
  %6 = load i32, i32* @fbd_wptr, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @fbd_rptr, align 4
  %11 = load i32, i32* @BINLOGPOS_QUEUE_SIZE, align 4
  %12 = call i32 @lookup_binlog_binsearch(i64 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BINLOGPOS_QUEUE_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbd_data, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %46

23:                                               ; preds = %8
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @fbd_wptr, align 4
  %26 = call i32 @lookup_binlog_binsearch(i64 %24, i32 0, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @fbd_rptr, align 4
  %30 = load i32, i32* @fbd_wptr, align 4
  %31 = call i32 @lookup_binlog_binsearch(i64 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @fbd_wptr, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbd_data, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %37, %36
  %45 = phi i64 [ 0, %36 ], [ %43, %37 ]
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @lookup_binlog_binsearch(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
