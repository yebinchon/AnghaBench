; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32 }
%struct.ipmi_smi_msg = type { i32, i32* }
%struct.ipmi_ipmb_addr = type { i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@invalid_ipmb_responses = common dso_local global i32 0, align 4
@IPMI_IPMB_ADDR_TYPE = common dso_local global i32 0, align 4
@unhandled_ipmb_responses = common dso_local global i32 0, align 4
@IPMI_RESPONSE_RECV_TYPE = common dso_local global i32 0, align 4
@handled_ipmb_responses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_ipmb_get_msg_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipmb_get_msg_rsp(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.ipmi_ipmb_addr, align 4
  %7 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 11
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %14 = load i32, i32* @invalid_ipmb_responses, align 4
  %15 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %130

24:                                               ; preds = %16
  %25 = load i32, i32* @IPMI_IPMB_ADDR_TYPE, align 4
  %26 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %6, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3
  %46 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %48 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %49 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 2
  %54 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %55 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  %60 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %61 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %66 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 2
  %71 = and i32 %70, -2
  %72 = bitcast %struct.ipmi_ipmb_addr* %6 to %struct.ipmi_addr*
  %73 = call i64 @intf_find_seq(%struct.ipmi_smi* %47, i32 %53, i32 %59, i32 %64, i32 %71, %struct.ipmi_addr* %72, %struct.ipmi_recv_msg** %7)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %24
  %76 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %77 = load i32, i32* @unhandled_ipmb_responses, align 4
  %78 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %130

79:                                               ; preds = %24
  %80 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %81 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %84 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  %87 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %88 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 9
  %91 = call i32 @memcpy(i32 %82, i32* %86, i32 %90)
  %92 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %93 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 2
  %98 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %99 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %102 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %105 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %108 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 10
  %111 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %112 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @IPMI_RESPONSE_RECV_TYPE, align 4
  %115 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %116 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %118 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %119 = call i64 @deliver_response(%struct.ipmi_smi* %117, %struct.ipmi_recv_msg* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %79
  %122 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %123 = load i32, i32* @unhandled_ipmb_responses, align 4
  %124 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %122, i32 %123)
  br label %129

125:                                              ; preds = %79
  %126 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %127 = load i32, i32* @handled_ipmb_responses, align 4
  %128 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %121
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %75, %23, %12
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i64 @intf_find_seq(%struct.ipmi_smi*, i32, i32, i32, i32, %struct.ipmi_addr*, %struct.ipmi_recv_msg**) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @deliver_response(%struct.ipmi_smi*, %struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
