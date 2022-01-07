; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_submit_one_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_submit_one_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.issue_flush_context = type { i32, i32 }
%struct.bio = type { i32, i32, %struct.one_flush_context* }
%struct.one_flush_context = type { %struct.issue_flush_context*, %struct.drbd_device* }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not allocate a bio, CANNOT ISSUE FLUSH\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@drbd_destroy_device = common dso_local global i32 0, align 4
@one_flush_endio = common dso_local global i32 0, align 4
@REQ_OP_FLUSH = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@FLUSH_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.issue_flush_context*)* @submit_one_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_one_flush(%struct.drbd_device* %0, %struct.issue_flush_context* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.issue_flush_context*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.one_flush_context*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.issue_flush_context* %1, %struct.issue_flush_context** %4, align 8
  %7 = load i32, i32* @GFP_NOIO, align 4
  %8 = call %struct.bio* @bio_alloc(i32 %7, i32 0)
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load i32, i32* @GFP_NOIO, align 4
  %10 = call %struct.one_flush_context* @kmalloc(i32 16, i32 %9)
  store %struct.one_flush_context* %10, %struct.one_flush_context** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = icmp ne %struct.bio* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.one_flush_context*, %struct.one_flush_context** %6, align 8
  %15 = icmp ne %struct.one_flush_context* %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = call i32 @drbd_warn(%struct.drbd_device* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.one_flush_context*, %struct.one_flush_context** %6, align 8
  %20 = call i32 @kfree(%struct.one_flush_context* %19)
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = icmp ne %struct.bio* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = call i32 @bio_put(%struct.bio* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.issue_flush_context*, %struct.issue_flush_context** %4, align 8
  %30 = getelementptr inbounds %struct.issue_flush_context, %struct.issue_flush_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %32 = call i32 @put_ldev(%struct.drbd_device* %31)
  %33 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %34 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %33, i32 0, i32 3
  %35 = load i32, i32* @drbd_destroy_device, align 4
  %36 = call i32 @kref_put(i32* %34, i32 %35)
  br label %74

37:                                               ; preds = %13
  %38 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %39 = load %struct.one_flush_context*, %struct.one_flush_context** %6, align 8
  %40 = getelementptr inbounds %struct.one_flush_context, %struct.one_flush_context* %39, i32 0, i32 1
  store %struct.drbd_device* %38, %struct.drbd_device** %40, align 8
  %41 = load %struct.issue_flush_context*, %struct.issue_flush_context** %4, align 8
  %42 = load %struct.one_flush_context*, %struct.one_flush_context** %6, align 8
  %43 = getelementptr inbounds %struct.one_flush_context, %struct.one_flush_context* %42, i32 0, i32 0
  store %struct.issue_flush_context* %41, %struct.issue_flush_context** %43, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %46 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bio_set_dev(%struct.bio* %44, i32 %49)
  %51 = load %struct.one_flush_context*, %struct.one_flush_context** %6, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 2
  store %struct.one_flush_context* %51, %struct.one_flush_context** %53, align 8
  %54 = load i32, i32* @one_flush_endio, align 4
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @REQ_OP_FLUSH, align 4
  %58 = load i32, i32* @REQ_PREFLUSH, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @jiffies, align 4
  %63 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %64 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @FLUSH_PENDING, align 4
  %66 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %67 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load %struct.issue_flush_context*, %struct.issue_flush_context** %4, align 8
  %70 = getelementptr inbounds %struct.issue_flush_context, %struct.issue_flush_context* %69, i32 0, i32 0
  %71 = call i32 @atomic_inc(i32* %70)
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = call i32 @submit_bio(%struct.bio* %72)
  br label %74

74:                                               ; preds = %37, %26
  ret void
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local %struct.one_flush_context* @kmalloc(i32, i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*) #1

declare dso_local i32 @kfree(%struct.one_flush_context*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
