; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32, i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ace_device*)* @ace_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_teardown(%struct.ace_device* %0) #0 {
  %2 = alloca %struct.ace_device*, align 8
  store %struct.ace_device* %0, %struct.ace_device** %2, align 8
  %3 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %4 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %9 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @del_gendisk(i64 %10)
  %12 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @put_disk(i64 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %18 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %23 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @blk_cleanup_queue(i64 %24)
  %26 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %27 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %26, i32 0, i32 3
  %28 = call i32 @blk_mq_free_tag_set(i32* %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %31 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %30, i32 0, i32 2
  %32 = call i32 @tasklet_kill(i32* %31)
  %33 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %34 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %39 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %42 = call i32 @free_irq(i64 %40, %struct.ace_device* %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %45 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iounmap(i32 %46)
  ret void
}

declare dso_local i32 @del_gendisk(i64) #1

declare dso_local i32 @put_disk(i64) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.ace_device*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
