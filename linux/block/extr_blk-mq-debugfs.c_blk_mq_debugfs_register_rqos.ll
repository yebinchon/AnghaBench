; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_rqos.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_rqos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { %struct.TYPE_2__*, i8*, %struct.request_queue*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"rqos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_debugfs_register_rqos(%struct.rq_qos* %0) #0 {
  %2 = alloca %struct.rq_qos*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i8*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %2, align 8
  %5 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %6 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %5, i32 0, i32 2
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %7, %struct.request_queue** %3, align 8
  %8 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %9 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @rq_qos_id_to_name(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %13 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %18 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %1
  br label %56

24:                                               ; preds = %16
  %25 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %39 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %38, i32 0, i32 2
  %40 = load %struct.request_queue*, %struct.request_queue** %39, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @debugfs_create_dir(i8* %37, i8* %42)
  %44 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %45 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %47 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %50 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %51 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @debugfs_create_files(i8* %48, %struct.rq_qos* %49, i32 %54)
  br label %56

56:                                               ; preds = %36, %23
  ret void
}

declare dso_local i8* @rq_qos_id_to_name(i32) #1

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @debugfs_create_files(i8*, %struct.rq_qos*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
