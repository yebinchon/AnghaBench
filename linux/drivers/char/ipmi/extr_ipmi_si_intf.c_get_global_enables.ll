; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_get_global_enables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_get_global_enables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [60 x i8] c"Error getting response from get global enables command: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Invalid return from get global enables command: %ld %x %x %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*, i8*)* @get_global_enables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_global_enables(%struct.smi_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smi_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %20 = shl i32 %19, 2
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* @IPMI_GET_BMC_GLOBAL_ENABLES_CMD, align 1
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %26 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %28, align 8
  %30 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %34 = call i32 %29(i32 %32, i8* %33, i32 2)
  %35 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %36 = call i32 @wait_for_msg_done(%struct.smi_info* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %18
  %40 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %41 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %111

47:                                               ; preds = %18
  %48 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %49 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %51, align 8
  %53 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %54 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %58 = call i64 %52(i32 %55, i8* %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %84, label %61

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %67 = or i32 %66, 1
  %68 = shl i32 %67, 2
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @IPMI_GET_BMC_GLOBAL_ENABLES_CMD, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %78, %70, %61, %47
  %85 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %86 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %89, i32 %93, i32 %97, i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %111

105:                                              ; preds = %78
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %5, align 8
  store i8 %108, i8* %109, align 1
  br label %110

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %84, %39
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @kfree(i8* %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @wait_for_msg_done(%struct.smi_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, ...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
