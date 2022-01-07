; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.socket = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_all(%struct.drbd_connection* %0, %struct.socket* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @drbd_send(%struct.drbd_connection* %13, %struct.socket* %14, i8* %15, i64 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %32

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %28, %21
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @drbd_send(%struct.drbd_connection*, %struct.socket*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
