; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_next_ioprio_data.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_next_ioprio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.bfq_queue = type { i32, i32, %struct.TYPE_6__, %struct.bfq_data* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bfq_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bfq_io_cq = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"bfq: bad prio class %d\0A\00", align 1
@IOPRIO_BE_NR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"bfq_set_next_ioprio_data: new_ioprio %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_queue*, %struct.bfq_io_cq*)* @bfq_set_next_ioprio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_set_next_ioprio_data(%struct.bfq_queue* %0, %struct.bfq_io_cq* %1) #0 {
  %3 = alloca %struct.bfq_queue*, align 8
  %4 = alloca %struct.bfq_io_cq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfq_data*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %3, align 8
  store %struct.bfq_io_cq* %1, %struct.bfq_io_cq** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %10 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %9, i32 0, i32 3
  %11 = load %struct.bfq_data*, %struct.bfq_data** %10, align 8
  store %struct.bfq_data* %11, %struct.bfq_data** %7, align 8
  %12 = load %struct.bfq_data*, %struct.bfq_data** %7, align 8
  %13 = icmp ne %struct.bfq_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %4, align 8
  %17 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IOPRIO_PRIO_CLASS(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %21 [
    i32 129, label %33
    i32 128, label %42
    i32 131, label %52
    i32 130, label %62
  ]

21:                                               ; preds = %15
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %23 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %22, i32 0, i32 3
  %24 = load %struct.bfq_data*, %struct.bfq_data** %23, align 8
  %25 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %15, %21
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = call i32 @task_nice_ioprio(%struct.task_struct* %34)
  %36 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %37 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = call i32 @task_nice_ioclass(%struct.task_struct* %38)
  %40 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %41 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %67

42:                                               ; preds = %15
  %43 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %4, align 8
  %44 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @IOPRIO_PRIO_DATA(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %49 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %51 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %50, i32 0, i32 1
  store i32 128, i32* %51, align 4
  br label %67

52:                                               ; preds = %15
  %53 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %4, align 8
  %54 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @IOPRIO_PRIO_DATA(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %59 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %61 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %60, i32 0, i32 1
  store i32 131, i32* %61, align 4
  br label %67

62:                                               ; preds = %15
  %63 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %64 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %63, i32 0, i32 1
  store i32 130, i32* %64, align 4
  %65 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %66 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %65, i32 0, i32 0
  store i32 7, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %52, %42, %33
  %68 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %69 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @IOPRIO_BE_NR, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %76 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 @pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* @IOPRIO_BE_NR, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %83 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %74, %67
  %85 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %86 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = call i32 @bfq_ioprio_to_weight(i64 %88)
  %90 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %91 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %94 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %84, %14
  ret void
}

declare dso_local i32 @IOPRIO_PRIO_CLASS(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @task_nice_ioprio(%struct.task_struct*) #1

declare dso_local i32 @task_nice_ioclass(%struct.task_struct*) #1

declare dso_local i8* @IOPRIO_PRIO_DATA(i32) #1

declare dso_local i32 @pr_crit(i8*, i64) #1

declare dso_local i32 @bfq_ioprio_to_weight(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
