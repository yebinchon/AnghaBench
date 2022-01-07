; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/extr_tplinkpart.c_tplink_read_header.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/extr_tplinkpart.c_tplink_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tplink_fw_header = type { i32, i32 }
%struct.mtd_info = type { i32 }

@TPLINK_HEADER_V1 = common dso_local global i64 0, align 8
@TPLINK_HEADER_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tplink_fw_header* (%struct.mtd_info*, i64)* @tplink_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tplink_fw_header* @tplink_read_header(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca %struct.tplink_fw_header*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tplink_fw_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call %struct.tplink_fw_header* @vmalloc(i32 8)
  store %struct.tplink_fw_header* %11, %struct.tplink_fw_header** %6, align 8
  %12 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  %13 = icmp ne %struct.tplink_fw_header* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %57

15:                                               ; preds = %2
  store i64 8, i64* %7, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  %20 = bitcast %struct.tplink_fw_header* %19 to i8*
  %21 = call i32 @mtd_read(%struct.mtd_info* %16, i64 %17, i64 %18, i64* %8, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %54

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %54

30:                                               ; preds = %25
  %31 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  %32 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be32_to_cpu(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @TPLINK_HEADER_V1, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @TPLINK_HEADER_V2, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %54

43:                                               ; preds = %38, %30
  %44 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  %45 = getelementptr inbounds %struct.tplink_fw_header, %struct.tplink_fw_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @be32_to_cpu(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %54

52:                                               ; preds = %43
  %53 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  store %struct.tplink_fw_header* %53, %struct.tplink_fw_header** %3, align 8
  br label %58

54:                                               ; preds = %51, %42, %29, %24
  %55 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %6, align 8
  %56 = call i32 @vfree(%struct.tplink_fw_header* %55)
  br label %57

57:                                               ; preds = %54, %14
  store %struct.tplink_fw_header* null, %struct.tplink_fw_header** %3, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = load %struct.tplink_fw_header*, %struct.tplink_fw_header** %3, align 8
  ret %struct.tplink_fw_header* %59
}

declare dso_local %struct.tplink_fw_header* @vmalloc(i32) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @vfree(%struct.tplink_fw_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
