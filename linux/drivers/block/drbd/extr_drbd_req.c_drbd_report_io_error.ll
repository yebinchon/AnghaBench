; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_report_io_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_report_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drbd_request = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@drbd_ratelimit_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"local %s IO error sector %llu+%u on %s\0A\00", align 1
@RQ_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.drbd_request*)* @drbd_report_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_report_io_error(%struct.drbd_device* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %4, align 8
  %8 = load i32, i32* @BDEVNAME_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = call i32 @__ratelimit(i32* @drbd_ratelimit_state)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %17 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %18 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RQ_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %26 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %30 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 9
  %34 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bdevname(i32 %38, i8* %11)
  %40 = call i32 @drbd_warn(%struct.drbd_device* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %28, i32 %33, i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %15, %14
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %45 [
    i32 0, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %41, %41
  ret void

45:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__ratelimit(i32*) #2

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i8*, i64, i32, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
