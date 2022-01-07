; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intel_secure_send_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intel_secure_send_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btusb_data = type { i32 }
%struct.intel_secure_send_result = type { i64 }

@BTUSB_FIRMWARE_FAILED = common dso_local global i32 0, align 4
@BTUSB_DOWNLOADING = common dso_local global i32 0, align 4
@BTUSB_FIRMWARE_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btusb_data*, i8*, i32)* @btusb_intel_secure_send_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_intel_secure_send_result(%struct.btusb_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_secure_send_result*, align 8
  store %struct.btusb_data* %0, %struct.btusb_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.intel_secure_send_result*
  store %struct.intel_secure_send_result* %9, %struct.intel_secure_send_result** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.intel_secure_send_result*, %struct.intel_secure_send_result** %7, align 8
  %16 = getelementptr inbounds %struct.intel_secure_send_result, %struct.intel_secure_send_result* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @BTUSB_FIRMWARE_FAILED, align 4
  %21 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %22 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @BTUSB_DOWNLOADING, align 4
  %26 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %27 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @BTUSB_FIRMWARE_LOADED, align 4
  %32 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %33 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %38 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %37, i32 0, i32 0
  %39 = load i32, i32* @BTUSB_DOWNLOADING, align 4
  %40 = call i32 @wake_up_bit(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %13, %36, %30, %24
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
