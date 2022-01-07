; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/extr_tplinkpart.c_tplink_check_rootfs_magic.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/extr_tplinkpart.c_tplink_check_rootfs_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SQUASHFS_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64)* @tplink_check_rootfs_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tplink_check_rootfs_magic(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = bitcast i32* %6 to i8*
  %12 = call i32 @mtd_read(%struct.mtd_info* %9, i64 %10, i32 4, i64* %7, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* @SQUASHFS_MAGIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 428154883
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %28, %23
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %20, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
