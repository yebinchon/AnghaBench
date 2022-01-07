; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__drbd_request_state_holding_state_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__drbd_request_state_holding_state_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32 }
%union.drbd_state = type { i32 }

@CS_SERIALIZE = common dso_local global i32 0, align 4
@SS_IN_TRANSIENT_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_drbd_request_state_holding_state_mutex(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @CS_SERIALIZE, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drbd_req_state(%struct.drbd_device* %19, i32 %22, i32 %24, i32 %20)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mutex_unlock(i32 %31)
  %33 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %34 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mutex_lock(i32 %35)
  %37 = call i32 @wait_event_cmd(i32 %18, i32 %28, i32 %32, i32 %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_event_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @drbd_req_state(%struct.drbd_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @mutex_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
