; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_send_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.atmtcp_control = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.atm_vcc* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMTCP_HDR_MAGIC = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32, %struct.atmtcp_control*, i32)* @atmtcp_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_send_control(%struct.atm_vcc* %0, i32 %1, %struct.atmtcp_control* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmtcp_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.atmtcp_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.atmtcp_control* %2, %struct.atmtcp_control** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @wait, align 4
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @DECLARE_WAITQUEUE(i32 %15, i32 %16)
  store i32 0, i32* %14, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @PRIV(i32 %20)
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_4__* @PRIV(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %28, align 8
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi %struct.atm_vcc* [ %29, %23 ], [ null, %30 ]
  store %struct.atm_vcc* %32, %struct.atm_vcc** %10, align 8
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %34 = icmp ne %struct.atm_vcc* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EUNATCH, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %151

38:                                               ; preds = %31
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sk_buff* @alloc_skb(i32 12, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %151

46:                                               ; preds = %38
  %47 = call i32 (...) @mb()
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_4__* @PRIV(i32 %50)
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %55 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_4__* @PRIV(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %58, align 8
  br label %61

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi %struct.atm_vcc* [ %59, %53 ], [ null, %60 ]
  store %struct.atm_vcc* %62, %struct.atm_vcc** %10, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %64 = icmp ne %struct.atm_vcc* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* @EUNATCH, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %151

70:                                               ; preds = %61
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @atm_force_charge(%struct.atm_vcc* %71, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = call %struct.atmtcp_control* @skb_put(%struct.sk_buff* %76, i32 12)
  store %struct.atmtcp_control* %77, %struct.atmtcp_control** %12, align 8
  %78 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %79 = load %struct.atmtcp_control*, %struct.atmtcp_control** %8, align 8
  %80 = bitcast %struct.atmtcp_control* %78 to i8*
  %81 = bitcast %struct.atmtcp_control* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = load i32, i32* @ATMTCP_HDR_MAGIC, align 4
  %83 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %84 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %88 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %90 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %89, i32 0, i32 1
  %91 = call i32 @memset(i32* %90, i32 0, i32 4)
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %93 = load %struct.atmtcp_control*, %struct.atmtcp_control** %12, align 8
  %94 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %93, i32 0, i32 1
  %95 = bitcast i32* %94 to %struct.atm_vcc**
  store %struct.atm_vcc* %92, %struct.atm_vcc** %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %98 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %97, i32 0, i32 1
  %99 = call i32 @test_bit(i32 %96, i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %101 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %100, i32 0, i32 2
  %102 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %101, align 8
  %103 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = call i32 %102(%struct.atm_vcc* %103, %struct.sk_buff* %104)
  %106 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %107 = call i32 @sk_atm(%struct.atm_vcc* %106)
  %108 = call i32 @sk_sleep(i32 %107)
  %109 = call i32 @add_wait_queue(i32 %108, i32* @wait)
  br label %110

110:                                              ; preds = %139, %70
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %113 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %112, i32 0, i32 1
  %114 = call i32 @test_bit(i32 %111, i32* %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %110
  %118 = call i32 (...) @mb()
  %119 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %120 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_4__* @PRIV(i32 %121)
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %126 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.TYPE_4__* @PRIV(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.atm_vcc*, %struct.atm_vcc** %129, align 8
  br label %132

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %124
  %133 = phi %struct.atm_vcc* [ %130, %124 ], [ null, %131 ]
  store %struct.atm_vcc* %133, %struct.atm_vcc** %10, align 8
  %134 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %135 = icmp ne %struct.atm_vcc* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @EUNATCH, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %14, align 4
  br label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %141 = call i32 @set_current_state(i32 %140)
  %142 = call i32 (...) @schedule()
  br label %110

143:                                              ; preds = %136, %110
  %144 = load i32, i32* @TASK_RUNNING, align 4
  %145 = call i32 @set_current_state(i32 %144)
  %146 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %147 = call i32 @sk_atm(%struct.atm_vcc* %146)
  %148 = call i32 @sk_sleep(i32 %147)
  %149 = call i32 @remove_wait_queue(i32 %148, i32* @wait)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %143, %65, %43, %35
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.TYPE_4__* @PRIV(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atm_force_charge(%struct.atm_vcc*, i32) #1

declare dso_local %struct.atmtcp_control* @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
