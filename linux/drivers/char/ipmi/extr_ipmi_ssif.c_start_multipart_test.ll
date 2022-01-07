; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_multipart_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_start_multipart_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@SSIF_SEND_RETRIES = common dso_local global i32 0, align 4
@SSIF_IPMI_MULTI_PART_REQUEST_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"Could not write multi-part start, though the BMC said it could handle it.  Just limit sends to one part.\0A\00", align 1
@SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"Could not write multi-part middle, though the BMC said it could handle it.  Just limit sends to one part.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*, i32)* @start_multipart_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_multipart_test(%struct.i2c_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @SSIF_SEND_RETRIES, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* @SSIF_IPMI_MULTI_PART_REQUEST_START, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %12, i32 %13, i32 32, i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %11

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %47

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 32
  %38 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %34, i32 %35, i32 32, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %32, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @i2c_smbus_write_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
