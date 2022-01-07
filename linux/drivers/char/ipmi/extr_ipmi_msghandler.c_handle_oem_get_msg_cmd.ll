; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_oem_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_oem_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32 }
%struct.ipmi_smi_msg = type { i32, i32* }
%struct.cmd_rcvr = type { %struct.ipmi_user* }
%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, %struct.TYPE_2__, i32, i32*, %struct.ipmi_user*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@free_user = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_OEM_RECV_TYPE = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_oem_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_oem_get_msg_cmd(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.ipmi_user*, align 8
  %12 = alloca %struct.ipmi_system_interface_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.ipmi_user* null, %struct.ipmi_user** %11, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %20 = load i32, i32* @invalid_commands, align 4
  %21 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %168

22:                                               ; preds = %2
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %168

30:                                               ; preds = %22
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  %44 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %10, align 1
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %53 = load i8, i8* %8, align 1
  %54 = load i8, i8* %9, align 1
  %55 = load i8, i8* %10, align 1
  %56 = call %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi* %52, i8 zeroext %53, i8 zeroext %54, i8 zeroext %55)
  store %struct.cmd_rcvr* %56, %struct.cmd_rcvr** %6, align 8
  %57 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %58 = icmp ne %struct.cmd_rcvr* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %30
  %60 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %61 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %60, i32 0, i32 0
  %62 = load %struct.ipmi_user*, %struct.ipmi_user** %61, align 8
  store %struct.ipmi_user* %62, %struct.ipmi_user** %11, align 8
  %63 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %64 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %63, i32 0, i32 0
  %65 = call i32 @kref_get(i32* %64)
  br label %67

66:                                               ; preds = %30
  store %struct.ipmi_user* null, %struct.ipmi_user** %11, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %70 = icmp eq %struct.ipmi_user* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %73 = load i32, i32* @unhandled_commands, align 4
  %74 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %72, i32 %73)
  store i32 0, i32* %7, align 4
  br label %166

75:                                               ; preds = %67
  %76 = call %struct.ipmi_recv_msg* (...) @ipmi_alloc_recv_msg()
  store %struct.ipmi_recv_msg* %76, %struct.ipmi_recv_msg** %13, align 8
  %77 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %78 = icmp ne %struct.ipmi_recv_msg* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  %80 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %81 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %80, i32 0, i32 0
  %82 = load i32, i32* @free_user, align 4
  %83 = call i32 @kref_put(i32* %81, i32 %82)
  br label %165

84:                                               ; preds = %75
  %85 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %86 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %85, i32 0, i32 5
  %87 = bitcast i32* %86 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %87, %struct.ipmi_system_interface_addr** %12, align 8
  %88 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %89 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %90 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %92 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %93 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %95 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 3
  %100 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %101 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %103 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %104 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %103, i32 0, i32 4
  store %struct.ipmi_user* %102, %struct.ipmi_user** %104, align 8
  %105 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %106 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load i32, i32* @IPMI_OEM_RECV_TYPE, align 4
  %108 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %109 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %111 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 2
  %116 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %117 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %120 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %125 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %128 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %131 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 4
  %133 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %134 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 4
  %137 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %138 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %141 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %144 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %148 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 4
  %151 = call i32 @memcpy(i32 %142, i32* %146, i32 %150)
  %152 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %153 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %154 = call i64 @deliver_response(%struct.ipmi_smi* %152, %struct.ipmi_recv_msg* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %84
  %157 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %158 = load i32, i32* @unhandled_commands, align 4
  %159 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %157, i32 %158)
  br label %164

160:                                              ; preds = %84
  %161 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %162 = load i32, i32* @handled_commands, align 4
  %163 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %156
  br label %165

165:                                              ; preds = %164, %79
  br label %166

166:                                              ; preds = %165, %71
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %29, %18
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.ipmi_recv_msg* @ipmi_alloc_recv_msg(...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @deliver_response(%struct.ipmi_smi*, %struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
