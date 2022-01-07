; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_alloc_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_alloc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_socket = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_socket*)* @drbd_alloc_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_alloc_socket(%struct.drbd_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_socket*, align 8
  store %struct.drbd_socket* %0, %struct.drbd_socket** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @__get_free_page(i32 %4)
  %6 = inttoptr i64 %5 to i8*
  %7 = load %struct.drbd_socket*, %struct.drbd_socket** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.drbd_socket*, %struct.drbd_socket** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @__get_free_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.drbd_socket*, %struct.drbd_socket** %3, align 8
  %21 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.drbd_socket*, %struct.drbd_socket** %3, align 8
  %23 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @__get_free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
