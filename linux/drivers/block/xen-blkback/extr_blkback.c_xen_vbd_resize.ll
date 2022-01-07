; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_vbd_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_vbd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, i32, %struct.xen_vbd }
%struct.xen_vbd = type { i64, i32 }
%struct.xenbus_transaction = type { i32 }
%struct.xenbus_device = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"VBD Resize: Domid: %d, Device: (%d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"VBD Resize: new size %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error starting transaction\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Error writing new size\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Error writing the state\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Error ending transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif*)* @xen_vbd_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_vbd_resize(%struct.xen_blkif* %0) #0 {
  %2 = alloca %struct.xen_blkif*, align 8
  %3 = alloca %struct.xen_vbd*, align 8
  %4 = alloca %struct.xenbus_transaction, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca i64, align 8
  store %struct.xen_blkif* %0, %struct.xen_blkif** %2, align 8
  %8 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %9 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %8, i32 0, i32 2
  store %struct.xen_vbd* %9, %struct.xen_vbd** %3, align 8
  %10 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %11 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.xenbus_device* @xen_blkbk_xenbus(i32 %12)
  store %struct.xenbus_device* %13, %struct.xenbus_device** %6, align 8
  %14 = load %struct.xen_vbd*, %struct.xen_vbd** %3, align 8
  %15 = call i64 @vbd_sz(%struct.xen_vbd* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %17 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load %struct.xen_vbd*, %struct.xen_vbd** %3, align 8
  %21 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MAJOR(i32 %22)
  %24 = load %struct.xen_vbd*, %struct.xen_vbd** %3, align 8
  %25 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @MINOR(i32 %26)
  %28 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %23, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.xen_vbd*, %struct.xen_vbd** %3, align 8
  %33 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %75, %1
  %35 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %86

40:                                               ; preds = %34
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %42 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xen_vbd*, %struct.xen_vbd** %3, align 8
  %45 = call i64 @vbd_sz(%struct.xen_vbd* %44)
  %46 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xenbus_printf(i32 %47, i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %82

53:                                               ; preds = %40
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %55 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %58 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xenbus_printf(i32 %61, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %59)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %82

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @xenbus_transaction_end(i32 %69, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %34

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  br label %86

82:                                               ; preds = %65, %51
  %83 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xenbus_transaction_end(i32 %84, i32 1)
  br label %86

86:                                               ; preds = %82, %81, %38
  ret void
}

declare dso_local %struct.xenbus_device* @xen_blkbk_xenbus(i32) #1

declare dso_local i64 @vbd_sz(%struct.xen_vbd*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
