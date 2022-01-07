; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_async_queue_prio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_async_queue_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32 }
%struct.bfq_data = type { i32 }
%struct.bfq_group = type { %struct.bfq_queue*, %struct.bfq_queue*** }

@IOPRIO_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue** (%struct.bfq_data*, %struct.bfq_group*, i32, i32)* @bfq_async_queue_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue** @bfq_async_queue_prio(%struct.bfq_data* %0, %struct.bfq_group* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfq_queue**, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.bfq_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %6, align 8
  store %struct.bfq_group* %1, %struct.bfq_group** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %34 [
    i32 128, label %11
    i32 129, label %20
    i32 131, label %22
    i32 130, label %31
  ]

11:                                               ; preds = %4
  %12 = load %struct.bfq_group*, %struct.bfq_group** %7, align 8
  %13 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %12, i32 0, i32 1
  %14 = load %struct.bfq_queue***, %struct.bfq_queue**** %13, align 8
  %15 = getelementptr inbounds %struct.bfq_queue**, %struct.bfq_queue*** %14, i64 0
  %16 = load %struct.bfq_queue**, %struct.bfq_queue*** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %16, i64 %18
  store %struct.bfq_queue** %19, %struct.bfq_queue*** %5, align 8
  br label %35

20:                                               ; preds = %4
  %21 = load i32, i32* @IOPRIO_NORM, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %4, %20
  %23 = load %struct.bfq_group*, %struct.bfq_group** %7, align 8
  %24 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %23, i32 0, i32 1
  %25 = load %struct.bfq_queue***, %struct.bfq_queue**** %24, align 8
  %26 = getelementptr inbounds %struct.bfq_queue**, %struct.bfq_queue*** %25, i64 1
  %27 = load %struct.bfq_queue**, %struct.bfq_queue*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bfq_queue*, %struct.bfq_queue** %27, i64 %29
  store %struct.bfq_queue** %30, %struct.bfq_queue*** %5, align 8
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.bfq_group*, %struct.bfq_group** %7, align 8
  %33 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %32, i32 0, i32 0
  store %struct.bfq_queue** %33, %struct.bfq_queue*** %5, align 8
  br label %35

34:                                               ; preds = %4
  store %struct.bfq_queue** null, %struct.bfq_queue*** %5, align 8
  br label %35

35:                                               ; preds = %34, %31, %22, %11
  %36 = load %struct.bfq_queue**, %struct.bfq_queue*** %5, align 8
  ret %struct.bfq_queue** %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
