; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_max_budget_store.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_max_budget_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.bfq_data* }
%struct.bfq_data = type { i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elevator_queue*, i8*, i64)* @bfq_max_budget_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_max_budget_store(%struct.elevator_queue* %0, i8* %1, i64 %2) #0 {
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
  br label %44

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %25 = call i64 @bfq_calc_max_budget(%struct.bfq_data* %24)
  %26 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %27 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %38

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @INT_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @INT_MAX, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %37 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %41 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @bfq_var_store(i64*, i8*) #1

declare dso_local i64 @bfq_calc_max_budget(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
