; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_i_ipmi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_smi = type { i32, i64 }
%struct.ipmi_addr = type { i64 }
%struct.kernel_ipmi_msg = type { i32 }
%struct.ipmi_recv_msg = type { i64, %struct.kernel_ipmi_msg, %struct.ipmi_user*, i8* }
%struct.ipmi_smi_msg = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@sent_invalid_commands = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_user*, %struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, i8*, i8*, %struct.ipmi_recv_msg*, i32, i8, i8, i32, i32)* @i_ipmi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_ipmi_request(%struct.ipmi_user* %0, %struct.ipmi_smi* %1, %struct.ipmi_addr* %2, i64 %3, %struct.kernel_ipmi_msg* %4, i8* %5, i8* %6, %struct.ipmi_recv_msg* %7, i32 %8, i8 zeroext %9, i8 zeroext %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ipmi_user*, align 8
  %15 = alloca %struct.ipmi_smi*, align 8
  %16 = alloca %struct.ipmi_addr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.kernel_ipmi_msg*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ipmi_recv_msg*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.ipmi_smi_msg*, align 8
  %28 = alloca %struct.ipmi_recv_msg*, align 8
  %29 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %14, align 8
  store %struct.ipmi_smi* %1, %struct.ipmi_smi** %15, align 8
  store %struct.ipmi_addr* %2, %struct.ipmi_addr** %16, align 8
  store i64 %3, i64* %17, align 8
  store %struct.kernel_ipmi_msg* %4, %struct.kernel_ipmi_msg** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store %struct.ipmi_recv_msg* %7, %struct.ipmi_recv_msg** %21, align 8
  store i32 %8, i32* %22, align 4
  store i8 %9, i8* %23, align 1
  store i8 %10, i8* %24, align 1
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  store i32 0, i32* %29, align 4
  %30 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %21, align 8
  %31 = icmp ne %struct.ipmi_recv_msg* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %13
  %33 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %21, align 8
  store %struct.ipmi_recv_msg* %33, %struct.ipmi_recv_msg** %28, align 8
  br label %42

34:                                               ; preds = %13
  %35 = call %struct.ipmi_recv_msg* (...) @ipmi_alloc_recv_msg()
  store %struct.ipmi_recv_msg* %35, %struct.ipmi_recv_msg** %28, align 8
  %36 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %37 = icmp eq %struct.ipmi_recv_msg* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %29, align 4
  br label %177

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i8*, i8** %19, align 8
  %44 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %45 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %20, align 8
  %50 = bitcast i8* %49 to %struct.ipmi_smi_msg*
  store %struct.ipmi_smi_msg* %50, %struct.ipmi_smi_msg** %27, align 8
  br label %65

51:                                               ; preds = %42
  %52 = call %struct.ipmi_smi_msg* (...) @ipmi_alloc_smi_msg()
  store %struct.ipmi_smi_msg* %52, %struct.ipmi_smi_msg** %27, align 8
  %53 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %54 = icmp eq %struct.ipmi_smi_msg* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %21, align 8
  %57 = icmp ne %struct.ipmi_recv_msg* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %60 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %29, align 4
  br label %177

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %48
  %66 = call i32 (...) @rcu_read_lock()
  %67 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %68 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %29, align 4
  br label %155

74:                                               ; preds = %65
  %75 = load %struct.ipmi_user*, %struct.ipmi_user** %14, align 8
  %76 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %77 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %76, i32 0, i32 2
  store %struct.ipmi_user* %75, %struct.ipmi_user** %77, align 8
  %78 = load %struct.ipmi_user*, %struct.ipmi_user** %14, align 8
  %79 = icmp ne %struct.ipmi_user* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.ipmi_user*, %struct.ipmi_user** %14, align 8
  %82 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %81, i32 0, i32 0
  %83 = call i32 @kref_get(i32* %82)
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %87 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %89 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %88, i32 0, i32 1
  %90 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %18, align 8
  %91 = bitcast %struct.kernel_ipmi_msg* %89 to i8*
  %92 = bitcast %struct.kernel_ipmi_msg* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %94 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %84
  %99 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %100 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %18, align 8
  %103 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %104 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* %26, align 4
  %107 = call i32 @i_ipmi_req_sysintf(%struct.ipmi_smi* %99, %struct.ipmi_addr* %100, i64 %101, %struct.kernel_ipmi_msg* %102, %struct.ipmi_smi_msg* %103, %struct.ipmi_recv_msg* %104, i32 %105, i32 %106)
  store i32 %107, i32* %29, align 4
  br label %151

108:                                              ; preds = %84
  %109 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %110 = call i64 @is_ipmb_addr(%struct.ipmi_addr* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %114 = call i64 @is_ipmb_bcast_addr(%struct.ipmi_addr* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112, %108
  %117 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %118 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %18, align 8
  %121 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %122 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %123 = load i8, i8* %23, align 1
  %124 = load i8, i8* %24, align 1
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %26, align 4
  %127 = call i32 @i_ipmi_req_ipmb(%struct.ipmi_smi* %117, %struct.ipmi_addr* %118, i64 %119, %struct.kernel_ipmi_msg* %120, %struct.ipmi_smi_msg* %121, %struct.ipmi_recv_msg* %122, i8 zeroext %123, i8 zeroext %124, i32 %125, i32 %126)
  store i32 %127, i32* %29, align 4
  br label %150

128:                                              ; preds = %112
  %129 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %130 = call i64 @is_lan_addr(%struct.ipmi_addr* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %134 = load %struct.ipmi_addr*, %struct.ipmi_addr** %16, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %18, align 8
  %137 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %138 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %139 = load i8, i8* %24, align 1
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @i_ipmi_req_lan(%struct.ipmi_smi* %133, %struct.ipmi_addr* %134, i64 %135, %struct.kernel_ipmi_msg* %136, %struct.ipmi_smi_msg* %137, %struct.ipmi_recv_msg* %138, i8 zeroext %139, i32 %140, i32 %141)
  store i32 %142, i32* %29, align 4
  br label %149

143:                                              ; preds = %128
  %144 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %145 = load i32, i32* @sent_invalid_commands, align 4
  %146 = call i32 @ipmi_inc_stat(%struct.ipmi_smi* %144, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %29, align 4
  br label %149

149:                                              ; preds = %143, %132
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %150, %98
  %152 = load i32, i32* %29, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %71
  %156 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %157 = call i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg* %156)
  %158 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %28, align 8
  %159 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %158)
  br label %175

160:                                              ; preds = %151
  %161 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %162 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %165 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ipmi_debug_msg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %163, i32 %166)
  %168 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %169 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  %170 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %27, align 8
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @smi_send(%struct.ipmi_smi* %168, i32 %171, %struct.ipmi_smi_msg* %172, i32 %173)
  br label %175

175:                                              ; preds = %160, %155
  %176 = call i32 (...) @rcu_read_unlock()
  br label %177

177:                                              ; preds = %175, %61, %38
  %178 = load i32, i32* %29, align 4
  ret i32 %178
}

declare dso_local %struct.ipmi_recv_msg* @ipmi_alloc_recv_msg(...) #1

declare dso_local %struct.ipmi_smi_msg* @ipmi_alloc_smi_msg(...) #1

declare dso_local i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @kref_get(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i_ipmi_req_sysintf(%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i32, i32) #1

declare dso_local i64 @is_ipmb_addr(%struct.ipmi_addr*) #1

declare dso_local i64 @is_ipmb_bcast_addr(%struct.ipmi_addr*) #1

declare dso_local i32 @i_ipmi_req_ipmb(%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i64 @is_lan_addr(%struct.ipmi_addr*) #1

declare dso_local i32 @i_ipmi_req_lan(%struct.ipmi_smi*, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, %struct.ipmi_smi_msg*, %struct.ipmi_recv_msg*, i8 zeroext, i32, i32) #1

declare dso_local i32 @ipmi_inc_stat(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg*) #1

declare dso_local i32 @ipmi_debug_msg(i8*, i32, i32) #1

declare dso_local i32 @smi_send(%struct.ipmi_smi*, i32, %struct.ipmi_smi_msg*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
