; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_enable_event_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_enable_event_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i8*, i32)*, i32 (i32, i8*, i32)* }

@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [89 x i8] c"Error getting response from get global enables command, the event buffer is not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Invalid return from get global enables command, cannot enable the event buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPMI_BMC_EVT_MSG_BUFF = common dso_local global i8 0, align 1
@IPMI_SET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"Error getting response from set global, enables command, the event buffer is not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"Invalid return from get global, enables command, not enable the event buffer\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @try_enable_event_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_enable_event_buffer(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca [3 x i8], align 1
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
  br label %176

16:                                               ; preds = %1
  %17 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %18 = shl i32 %17, 2
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @IPMI_GET_BMC_GLOBAL_ENABLES_CMD, align 1
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %26, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %32 = call i32 %27(i32 %30, i8* %31, i32 2)
  %33 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %34 = call i32 @wait_for_msg_done(%struct.smi_info* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %172

39:                                               ; preds = %16
  %40 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %41 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %43, align 8
  %45 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %46 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %50 = call i64 %44(i32 %47, i8* %48, i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %76, label %53

53:                                               ; preds = %39
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %59 = or i32 %58, 1
  %60 = shl i32 %59, 2
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @IPMI_GET_BMC_GLOBAL_ENABLES_CMD, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %62, %53, %39
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %172

80:                                               ; preds = %70
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @IPMI_BMC_EVT_MSG_BUFF, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %91 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %172

92:                                               ; preds = %80
  %93 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %94 = shl i32 %93, 2
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  store i8 %95, i8* %96, align 1
  %97 = load i8, i8* @IPMI_SET_BMC_GLOBAL_ENABLES_CMD, align 1
  %98 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 1
  store i8 %97, i8* %98, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @IPMI_BMC_EVT_MSG_BUFF, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 2
  store i8 %106, i8* %107, align 1
  %108 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %109 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %111, align 8
  %113 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %114 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %117 = call i32 %112(i32 %115, i8* %116, i32 3)
  %118 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %119 = call i32 @wait_for_msg_done(%struct.smi_info* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %92
  %123 = call i32 @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  br label %172

124:                                              ; preds = %92
  %125 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %128, align 8
  %130 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %131 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %135 = call i64 %129(i32 %132, i8* %133, i32 %134)
  store i64 %135, i64* %6, align 8
  %136 = load i64, i64* %6, align 8
  %137 = icmp ult i64 %136, 3
  br i1 %137, label %155, label %138

138:                                              ; preds = %124
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %144 = or i32 %143, 1
  %145 = shl i32 %144, 2
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %138
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @IPMI_SET_BMC_GLOBAL_ENABLES_CMD, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %147, %138, %124
  %156 = call i32 @pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %172

159:                                              ; preds = %147
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @ENOENT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %7, align 4
  br label %171

168:                                              ; preds = %159
  %169 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %170 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %155, %122, %89, %76, %37
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @kfree(i8* %173)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %13
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @wait_for_msg_done(%struct.smi_info*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
