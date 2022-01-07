; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32 }
%struct.ipmi_smi_msg = type { i32, i32* }
%struct.cmd_rcvr = type { %struct.ipmi_user* }
%struct.ipmi_user = type { i32 }
%struct.ipmi_lan_addr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, i32, %struct.TYPE_2__, i32, %struct.ipmi_user*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@free_user = common dso_local global i32 0, align 4
@IPMI_LAN_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_CMD_RECV_TYPE = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_lan_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lan_get_msg_cmd(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.ipmi_user*, align 8
  %12 = alloca %struct.ipmi_lan_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.ipmi_user* null, %struct.ipmi_user** %11, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 12
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %20 = load i32, i32* @invalid_commands, align 4
  %21 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %208

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
  br label %208

30:                                               ; preds = %22
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 10
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
  br label %206

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
  br label %205

84:                                               ; preds = %75
  %85 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %86 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %85, i32 0, i32 5
  %87 = bitcast i32* %86 to %struct.ipmi_lan_addr*
  store %struct.ipmi_lan_addr* %87, %struct.ipmi_lan_addr** %12, align 8
  %88 = load i32, i32* @IPMI_LAN_ADDR_TYPE, align 4
  %89 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %90 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %92 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %97 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %99 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %104 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %106 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %111 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %113 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 3
  %118 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %119 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %121 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 15
  %126 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %127 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %129 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 4
  %134 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %135 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ipmi_user*, %struct.ipmi_user** %11, align 8
  %137 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %138 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %137, i32 0, i32 4
  store %struct.ipmi_user* %136, %struct.ipmi_user** %138, align 8
  %139 = load i32, i32* @IPMI_CMD_RECV_TYPE, align 4
  %140 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %141 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %143 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 9
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 2
  %148 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %149 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %151 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 2
  %156 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %157 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %160 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 10
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %165 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %168 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %171 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  store i32 %169, i32* %172, align 4
  %173 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %174 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, 12
  %177 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %178 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 8
  %180 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %181 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %184 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 11
  %187 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %188 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 12
  %191 = call i32 @memcpy(i32 %182, i32* %186, i32 %190)
  %192 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %193 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %194 = call i64 @deliver_response(%struct.ipmi_smi* %192, %struct.ipmi_recv_msg* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %84
  %197 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %198 = load i32, i32* @unhandled_commands, align 4
  %199 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %197, i32 %198)
  br label %204

200:                                              ; preds = %84
  %201 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %202 = load i32, i32* @handled_commands, align 4
  %203 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %196
  br label %205

205:                                              ; preds = %204, %79
  br label %206

206:                                              ; preds = %205, %71
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %29, %18
  %209 = load i32, i32* %3, align 4
  ret i32 %209
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
