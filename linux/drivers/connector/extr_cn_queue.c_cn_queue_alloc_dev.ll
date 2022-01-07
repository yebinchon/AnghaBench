; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_cn_queue.c_cn_queue_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_cn_queue.c_cn_queue_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_queue_dev = type { %struct.sock*, i32, i32, i32, i32 }
%struct.sock = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cn_queue_dev* @cn_queue_alloc_dev(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.cn_queue_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.cn_queue_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cn_queue_dev* @kzalloc(i32 24, i32 %7)
  store %struct.cn_queue_dev* %8, %struct.cn_queue_dev** %6, align 8
  %9 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %10 = icmp ne %struct.cn_queue_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.cn_queue_dev* null, %struct.cn_queue_dev** %3, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %14 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %18, i32 0, i32 3
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %22 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %25 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %29 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %28, i32 0, i32 0
  store %struct.sock* %27, %struct.sock** %29, align 8
  %30 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  store %struct.cn_queue_dev* %30, %struct.cn_queue_dev** %3, align 8
  br label %31

31:                                               ; preds = %12, %11
  %32 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %3, align 8
  ret %struct.cn_queue_dev* %32
}

declare dso_local %struct.cn_queue_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
