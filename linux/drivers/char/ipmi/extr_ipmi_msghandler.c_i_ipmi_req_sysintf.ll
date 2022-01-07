; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_sysintf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_req_sysintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32, i64, i32, %struct.ipmi_system_interface_addr* }
%struct.ipmi_system_interface_addr = type { i32 }
%struct.ipmi_smi_msg = type { i32*, i64, i32, %struct.ipmi_recv_msg* }
%struct.ipmi_recv_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sent_invalid_commands = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i64 0, align 8
@IPMI_GET_MSG_CMD = common dso_local global i64 0, align 8
@IPMI_READ_EVENT_MSG_BUFFER_CMD = common dso_local global i64 0, align 8
@maintenance_mode_timeout_ms = common dso_local global i32 0, align 4
@IPMI_MAX_MSG_LENGTH = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@sent_local_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i32, i32)* @i_ipmi_req_sysintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_ipmi_req_sysintf(%struct.ipmi_smi* %0, %struct.ipmi_addr* %1, i64 %2, %struct.kernel_ipmi_msg* %3, %struct.ipmi_smi_msg* %4, %struct.ipmi_recv_msg* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_smi*, align 8
  %11 = alloca %struct.ipmi_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kernel_ipmi_msg*, align 8
  %14 = alloca %struct.ipmi_smi_msg*, align 8
  %15 = alloca %struct.ipmi_recv_msg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ipmi_system_interface_addr*, align 8
  %19 = alloca i64, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %10, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.kernel_ipmi_msg* %3, %struct.kernel_ipmi_msg** %13, align 8
  store %struct.ipmi_smi_msg* %4, %struct.ipmi_smi_msg** %14, align 8
  store %struct.ipmi_recv_msg* %5, %struct.ipmi_recv_msg** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %21 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %173

28:                                               ; preds = %8
  %29 = load %struct.ipmi_addr*, %struct.ipmi_addr** %11, align 8
  %30 = bitcast %struct.ipmi_addr* %29 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %30, %struct.ipmi_system_interface_addr** %18, align 8
  %31 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %18, align 8
  %32 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %37 = load i32, i32* @sent_invalid_commands, align 4
  %38 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %173

41:                                               ; preds = %28
  %42 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %15, align 8
  %43 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %42, i32 0, i32 0
  %44 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %18, align 8
  %45 = call i32 @memcpy(i32* %43, %struct.ipmi_system_interface_addr* %44, i32 4)
  %46 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %47 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  %52 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %53 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPMI_SEND_MSG_CMD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %59 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPMI_GET_MSG_CMD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %65 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IPMI_READ_EVENT_MSG_BUFFER_CMD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %57, %51
  %70 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %71 = load i32, i32* @sent_invalid_commands, align 4
  %72 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %70, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %173

75:                                               ; preds = %63, %41
  %76 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %77 = call i64 @is_maintenance_mode_cmd(%struct.kernel_ipmi_msg* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %80, i32 0, i32 1
  %82 = load i64, i64* %19, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load i32, i32* @maintenance_mode_timeout_ms, align 4
  %85 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %86 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %88 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %79
  %92 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %93 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %98 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %100 = call i32 @maintenance_mode_update(%struct.ipmi_smi* %99)
  br label %101

101:                                              ; preds = %96, %91, %79
  %102 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %103 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %102, i32 0, i32 1
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  br label %106

106:                                              ; preds = %101, %75
  %107 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %108 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 2
  %111 = load i32, i32* @IPMI_MAX_MSG_LENGTH, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %115 = load i32, i32* @sent_invalid_commands, align 4
  %116 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %114, i32 %115)
  %117 = load i32, i32* @EMSGSIZE, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %173

119:                                              ; preds = %106
  %120 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %121 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 2
  %124 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %18, align 8
  %125 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 3
  %128 = or i32 %123, %127
  %129 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %130 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %134 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %138 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %136, i32* %140, align 4
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %143 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %15, align 8
  %145 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %146 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %145, i32 0, i32 3
  store %struct.ipmi_recv_msg* %144, %struct.ipmi_recv_msg** %146, align 8
  %147 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %148 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %119
  %152 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %153 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %157 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %156, i32 0, i32 3
  %158 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %157, align 8
  %159 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %160 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @memcpy(i32* %155, %struct.ipmi_system_interface_addr* %158, i32 %161)
  br label %163

163:                                              ; preds = %151, %119
  %164 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %165 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 2
  %168 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %14, align 8
  %169 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %171 = load i32, i32* @sent_local_commands, align 4
  %172 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %170, i32 %171)
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %163, %113, %69, %35, %25
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ipmi_system_interface_addr*, i32) #1

declare dso_local i64 @is_maintenance_mode_cmd(%struct.kernel_ipmi_msg*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @maintenance_mode_update(%struct.ipmi_smi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
