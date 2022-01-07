; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_one_flush_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_one_flush_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.one_flush_context* }
%struct.one_flush_context = type { %struct.issue_flush_context*, %struct.drbd_device* }
%struct.issue_flush_context = type { i32, i32, i32 }
%struct.drbd_device = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"local disk FLUSH FAILED with status %d\0A\00", align 1
@FLUSH_PENDING = common dso_local global i32 0, align 4
@drbd_destroy_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @one_flush_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_flush_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.one_flush_context*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.issue_flush_context*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.one_flush_context*, %struct.one_flush_context** %7, align 8
  store %struct.one_flush_context* %8, %struct.one_flush_context** %3, align 8
  %9 = load %struct.one_flush_context*, %struct.one_flush_context** %3, align 8
  %10 = getelementptr inbounds %struct.one_flush_context, %struct.one_flush_context* %9, i32 0, i32 1
  %11 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  store %struct.drbd_device* %11, %struct.drbd_device** %4, align 8
  %12 = load %struct.one_flush_context*, %struct.one_flush_context** %3, align 8
  %13 = getelementptr inbounds %struct.one_flush_context, %struct.one_flush_context* %12, i32 0, i32 0
  %14 = load %struct.issue_flush_context*, %struct.issue_flush_context** %13, align 8
  store %struct.issue_flush_context* %14, %struct.issue_flush_context** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @blk_status_to_errno(i64 %22)
  %24 = load %struct.issue_flush_context*, %struct.issue_flush_context** %5, align 8
  %25 = getelementptr inbounds %struct.issue_flush_context, %struct.issue_flush_context* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drbd_info(%struct.drbd_device* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.one_flush_context*, %struct.one_flush_context** %3, align 8
  %33 = call i32 @kfree(%struct.one_flush_context* %32)
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = call i32 @bio_put(%struct.bio* %34)
  %36 = load i32, i32* @FLUSH_PENDING, align 4
  %37 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %38 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %41 = call i32 @put_ldev(%struct.drbd_device* %40)
  %42 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 0
  %44 = load i32, i32* @drbd_destroy_device, align 4
  %45 = call i32 @kref_put(i32* %43, i32 %44)
  %46 = load %struct.issue_flush_context*, %struct.issue_flush_context** %5, align 8
  %47 = getelementptr inbounds %struct.issue_flush_context, %struct.issue_flush_context* %46, i32 0, i32 1
  %48 = call i64 @atomic_dec_and_test(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = load %struct.issue_flush_context*, %struct.issue_flush_context** %5, align 8
  %52 = getelementptr inbounds %struct.issue_flush_context, %struct.issue_flush_context* %51, i32 0, i32 0
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %31
  ret void
}

declare dso_local i32 @blk_status_to_errno(i64) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.one_flush_context*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
