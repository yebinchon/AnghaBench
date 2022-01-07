; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_blkback_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_blkback_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%d.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif*, i8*)* @blkback_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkback_name(%struct.xen_blkif* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_blkif*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xenbus_device*, align 8
  store %struct.xen_blkif* %0, %struct.xen_blkif** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %10 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  store %struct.xenbus_device* %13, %struct.xenbus_device** %8, align 8
  %14 = load i32, i32* @XBT_NIL, align 4
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @xenbus_read(i32 %14, i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %7, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @TASK_COMM_LEN, align 4
  %40 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %41 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %42, i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @kfree(i8* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @xenbus_read(i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
