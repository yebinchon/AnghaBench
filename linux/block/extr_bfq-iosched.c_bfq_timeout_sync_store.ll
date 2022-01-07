; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_timeout_sync_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_timeout_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.bfq_data* }
%struct.bfq_data = type { i64, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elevator_queue*, i8*, i64)* @bfq_timeout_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_timeout_sync_store(%struct.elevator_queue* %0, i8* %1, i64 %2) #0 {
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
  br label %48

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 1, i64* %9, align 8
  br label %31

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @INT_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @INT_MAX, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @msecs_to_jiffies(i64 %32)
  %34 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %35 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %37 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %42 = call i32 @bfq_calc_max_budget(%struct.bfq_data* %41)
  %43 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %44 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %31
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @bfq_var_store(i64*, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @bfq_calc_max_budget(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
