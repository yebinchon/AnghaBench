; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_prepare_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_prepare_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }

@DRBD_MAX_SIZE_H80_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, i32, i8*, i32, i32)* @prepare_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_header(%struct.drbd_connection* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %13 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 100
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @prepare_header100(i8* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %24 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 95
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @DRBD_MAX_SIZE_H80_PACKET, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @prepare_header95(i8* %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %27, %22
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @prepare_header80(i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %31, %16
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @prepare_header100(i8*, i32, i32, i32) #1

declare dso_local i32 @prepare_header95(i8*, i32, i32) #1

declare dso_local i32 @prepare_header80(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
