; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_generic_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_generic_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.bio = type { i32, i32 }

@local = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"drbd_generic_make_request: bio->bi_disk == NULL\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i32, %struct.bio*)* @drbd_generic_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_generic_make_request(%struct.drbd_device* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load i32, i32* @local, align 4
  %8 = call i32 @__release(i32 %7)
  %9 = load %struct.bio*, %struct.bio** %6, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %15 = call i32 @drbd_err(%struct.drbd_device* %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @BLK_STS_IOERR, align 4
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = call i32 @bio_endio(%struct.bio* %19)
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @drbd_insert_fault(%struct.drbd_device* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = call i32 @bio_io_error(%struct.bio* %27)
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = call i32 @generic_make_request(%struct.bio* %30)
  br label %32

32:                                               ; preds = %13, %29, %26
  ret void
}

declare dso_local i32 @__release(i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @drbd_insert_fault(%struct.drbd_device*, i32) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
