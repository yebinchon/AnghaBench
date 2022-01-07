; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_strict_guarantees_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_strict_guarantees_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.bfq_data* }
%struct.bfq_data = type { i64, i32 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elevator_queue*, i8*, i64)* @bfq_strict_guarantees_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_strict_guarantees_store(%struct.elevator_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elevator_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfq_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.elevator_queue* %0, %struct.elevator_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %12 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %11, i32 0, i32 0
  %13 = load %struct.bfq_data*, %struct.bfq_data** %12, align 8
  store %struct.bfq_data* %13, %struct.bfq_data** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @bfq_var_store(i64* %9, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 1, i64* %9, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %26 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %34 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NSEC_PER_MSEC, align 4
  %37 = mul nsw i32 8, %36
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @NSEC_PER_MSEC, align 4
  %41 = mul nsw i32 8, %40
  %42 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %43 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %32, %29, %24
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %47 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @bfq_var_store(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
