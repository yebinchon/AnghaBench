; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_set_global_enables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_set_global_enables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [60 x i8] c"Error getting response from set global enables command: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Invalid return from set global enables command: %ld %x %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*, i8)* @set_global_enables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_global_enables(%struct.smi_info* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smi_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %4, align 8
  store i8 %1, i8* %5, align 1
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
  br label %109

18:                                               ; preds = %2
  %19 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %20 = shl i32 %19, 2
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* @IPMI_SET_BMC_GLOBAL_ENABLES_CMD, align 1
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load i8, i8* %5, align 1
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 %25, i8* %26, align 1
  %27 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %28 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %30, align 8
  %32 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %33 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %36 = call i32 %31(i32 %34, i8* %35, i32 3)
  %37 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %38 = call i32 @wait_for_msg_done(%struct.smi_info* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %18
  %42 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %43 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %105

49:                                               ; preds = %18
  %50 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %51 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %53, align 8
  %55 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %56 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %60 = call i64 %54(i32 %57, i8* %58, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ult i64 %61, 3
  br i1 %62, label %80, label %63

63:                                               ; preds = %49
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %69 = or i32 %68, 1
  %70 = shl i32 %69, 2
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @IPMI_SET_BMC_GLOBAL_ENABLES_CMD, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %72, %63, %49
  %81 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %82 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %89, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %105

97:                                               ; preds = %72
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %97
  br label %105

105:                                              ; preds = %104, %80, %41
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @kfree(i8* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %15
  %110 = load i32, i32* %3, align 4
  ret i32 %110
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
