; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_handle_send_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_handle_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_req = type { i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32, %struct.ipmi_addr*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_user*, %struct.ipmi_req*, i32, i32)* @handle_send_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_req(%struct.ipmi_user* %0, %struct.ipmi_req* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_user*, align 8
  %7 = alloca %struct.ipmi_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipmi_addr, align 4
  %12 = alloca %struct.kernel_ipmi_msg, align 8
  store %struct.ipmi_user* %0, %struct.ipmi_user** %6, align 8
  store %struct.ipmi_req* %1, %struct.ipmi_req** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %14 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %115

21:                                               ; preds = %4
  %22 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %23 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %26 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @copy_from_user(%struct.ipmi_addr* %11, i32* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %115

33:                                               ; preds = %21
  %34 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %35 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %40 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %45 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.ipmi_addr* @kmalloc(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 1
  store %struct.ipmi_addr* %51, %struct.ipmi_addr** %52, align 8
  %53 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 1
  %54 = load %struct.ipmi_addr*, %struct.ipmi_addr** %53, align 8
  %55 = icmp ne %struct.ipmi_addr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %115

59:                                               ; preds = %33
  %60 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %61 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ipmi_validate_addr(%struct.ipmi_addr* %11, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %110

67:                                               ; preds = %59
  %68 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %69 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %75 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %110

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 1
  %85 = load %struct.ipmi_addr*, %struct.ipmi_addr** %84, align 8
  %86 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %87 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %91 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @copy_from_user(%struct.ipmi_addr* %85, i32* %89, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %110

99:                                               ; preds = %83
  br label %102

100:                                              ; preds = %67
  %101 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %104 = load %struct.ipmi_req*, %struct.ipmi_req** %7, align 8
  %105 = getelementptr inbounds %struct.ipmi_req, %struct.ipmi_req* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ipmi_request_settime(%struct.ipmi_user* %103, %struct.ipmi_addr* %11, i32 %106, %struct.kernel_ipmi_msg* %12, i32* null, i32 0, i32 %107, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %102, %96, %80, %66
  %111 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %12, i32 0, i32 1
  %112 = load %struct.ipmi_addr*, %struct.ipmi_addr** %111, align 8
  %113 = call i32 @kfree(%struct.ipmi_addr* %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %56, %30, %18
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @copy_from_user(%struct.ipmi_addr*, i32*, i32) #1

declare dso_local %struct.ipmi_addr* @kmalloc(i32, i32) #1

declare dso_local i32 @ipmi_validate_addr(%struct.ipmi_addr*, i32) #1

declare dso_local i32 @ipmi_request_settime(%struct.ipmi_user*, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ipmi_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
