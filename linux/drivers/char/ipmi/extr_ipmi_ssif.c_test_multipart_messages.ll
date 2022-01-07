; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_test_multipart_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_test_multipart_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ssif_info = type { i32, i32 }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_ID_CMD = common dso_local global i8 0, align 1
@SSIF_IPMI_MULTI_PART_REQUEST_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Second multipart test failed.\0A\00", align 1
@SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.ssif_info*, i8*)* @test_multipart_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_multipart_messages(%struct.i2c_client* %0, %struct.ssif_info* %1, i8* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ssif_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [65 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ssif_info* %1, %struct.ssif_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %11 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %93

15:                                               ; preds = %3
  %16 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %17 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 63
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 65)
  %23 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %24 = shl i32 %23, 2
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  store i8 %25, i8* %26, align 16
  %27 = load i8, i8* @IPMI_GET_DEVICE_ID_CMD, align 1
  %28 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @start_multipart_test(%struct.i2c_client* %29, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %90

36:                                               ; preds = %15
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @SSIF_IPMI_MULTI_PART_REQUEST_END, align 4
  %39 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 64
  %41 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %37, i32 %38, i32 1, i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @read_response(%struct.i2c_client* %45, i8* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %53 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %93

54:                                               ; preds = %48
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @start_multipart_test(%struct.i2c_client* %55, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %90

65:                                               ; preds = %54
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @SSIF_IPMI_MULTI_PART_REQUEST_MIDDLE, align 4
  %68 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 64
  %70 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %66, i32 %67, i32 0, i8* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @read_response(%struct.i2c_client* %74, i8* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %93

81:                                               ; preds = %77
  %82 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %83 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 63
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %88 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %87, i32 0, i32 0
  store i32 63, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %93

90:                                               ; preds = %61, %35
  %91 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %92 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %91, i32 0, i32 0
  store i32 32, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %89, %80, %51, %14
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @start_multipart_test(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @read_response(%struct.i2c_client*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
