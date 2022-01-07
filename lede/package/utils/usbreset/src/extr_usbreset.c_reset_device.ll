; ModuleID = '/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_reset_device.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/usbreset/src/extr_usbreset.c_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbentry = type { i32, i32, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"/dev/bus/usb/%03d/%03d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Resetting %s ... \00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@USBDEVFS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"failed [%s]\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"can't open [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbentry*)* @reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_device(%struct.usbentry* %0) #0 {
  %2 = alloca %struct.usbentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.usbentry* %0, %struct.usbentry** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = sub i64 %7, 1
  %11 = trunc i64 %10 to i32
  %12 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %13 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %16 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snprintf(i8* %9, i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %20 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = call i32 @open(i8* %9, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @USBDEVFS_RESET, align 4
  %29 = call i64 @ioctl(i32 %27, i32 %28, i32 0)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %37

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @close(i32 %38)
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @ioctl(i32, i32, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
