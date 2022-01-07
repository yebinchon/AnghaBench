; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue*, i32 }
%struct.elevator_queue = type { %struct.deadline_data*, i32 }
%struct.deadline_data = type { i32, i32, i32, i32, i32, i32, i32*, i8**, i32* }
%struct.elevator_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@RB_ROOT = common dso_local global i8* null, align 8
@read_expire = common dso_local global i32 0, align 4
@write_expire = common dso_local global i32 0, align 4
@writes_starved = common dso_local global i32 0, align 4
@fifo_batch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.elevator_type*)* @dd_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dd_init_queue(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.deadline_data*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %10 = call %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %8, %struct.elevator_type* %9)
  store %struct.elevator_queue* %10, %struct.elevator_queue** %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %12 = icmp ne %struct.elevator_queue* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.deadline_data* @kzalloc_node(i32 48, i32 %17, i32 %20)
  store %struct.deadline_data* %21, %struct.deadline_data** %6, align 8
  %22 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %23 = icmp ne %struct.deadline_data* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %26 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %25, i32 0, i32 1
  %27 = call i32 @kobject_put(i32* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %16
  %31 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %32 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %33 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %32, i32 0, i32 0
  store %struct.deadline_data* %31, %struct.deadline_data** %33, align 8
  %34 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %35 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @READ, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %41 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @WRITE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i8*, i8** @RB_ROOT, align 8
  %47 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %48 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %47, i32 0, i32 7
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @READ, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %46, i8** %51, align 8
  %52 = load i8*, i8** @RB_ROOT, align 8
  %53 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %54 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %53, i32 0, i32 7
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @WRITE, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* @read_expire, align 4
  %59 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %60 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @READ, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @write_expire, align 4
  %65 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %66 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @WRITE, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @writes_starved, align 4
  %71 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %72 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %74 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @fifo_batch, align 4
  %76 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %77 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %79 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %78, i32 0, i32 3
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %82 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %81, i32 0, i32 2
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %85 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %84, i32 0, i32 1
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %88 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %89 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %88, i32 0, i32 0
  store %struct.elevator_queue* %87, %struct.elevator_queue** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %30, %24, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.elevator_queue* @elevator_alloc(%struct.request_queue*, %struct.elevator_type*) #1

declare dso_local %struct.deadline_data* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
