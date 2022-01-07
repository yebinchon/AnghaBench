; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_recv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_user_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vhost_user_msg*, i64)* @vhost_user_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_recv(i32 %0, %struct.vhost_user_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_user_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vhost_user_msg* %1, %struct.vhost_user_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %6, align 8
  %12 = call i32 @vhost_user_recv_header(i32 %10, %struct.vhost_user_msg* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %6, align 8
  %19 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EPROTO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %6, align 8
  %31 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @full_read(i32 %29, i32* %31, i64 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %25, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @vhost_user_recv_header(i32, %struct.vhost_user_msg*) #1

declare dso_local i32 @full_read(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
