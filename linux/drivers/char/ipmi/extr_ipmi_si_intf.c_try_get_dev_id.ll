; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_get_dev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_get_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_ID_CMD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @try_get_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_get_dev_id(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %18 = shl i32 %17, 2
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @IPMI_GET_DEVICE_ID_CMD, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %26, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %32 = call i32 %27(i32 %30, i8* %31, i32 2)
  %33 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %34 = call i32 @wait_for_msg_done(%struct.smi_info* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %66

38:                                               ; preds = %16
  %39 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %40 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %42, align 8
  %44 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %49 = call i64 %43(i32 %46, i8* %47, i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = ashr i32 %53, 2
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, 2
  %63 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %64 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %63, i32 0, i32 0
  %65 = call i32 @ipmi_demangle_device_id(i8 zeroext %55, i8 zeroext %58, i8* %60, i64 %62, i32* %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %38, %37
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @wait_for_msg_done(%struct.smi_info*) #1

declare dso_local i32 @ipmi_demangle_device_id(i8 zeroext, i8 zeroext, i8*, i64, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
