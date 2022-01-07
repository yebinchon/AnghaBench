; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_no_send_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_no_send_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_peer_device*, %struct.page*, i32, i64, i32)* @_drbd_no_send_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_drbd_no_send_page(%struct.drbd_peer_device* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.drbd_peer_device*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %15 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  store %struct.socket* %19, %struct.socket** %11, align 8
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i8* @kmap(%struct.page* %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  store i8* %24, i8** %12, align 8
  %25 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %26 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.socket*, %struct.socket** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @drbd_send_all(%struct.TYPE_6__* %27, %struct.socket* %28, i8* %29, i64 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @kunmap(%struct.page* %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %9, align 8
  %39 = lshr i64 %38, 9
  %40 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %41 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %39
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %37, %5
  %47 = load i32, i32* %13, align 4
  ret i32 %47
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @drbd_send_all(%struct.TYPE_6__*, %struct.socket*, i8*, i64, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
