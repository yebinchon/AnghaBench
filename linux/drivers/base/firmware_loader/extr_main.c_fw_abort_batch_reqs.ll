; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_abort_batch_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_abort_batch_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { %struct.fw_priv* }
%struct.fw_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*)* @fw_abort_batch_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_abort_batch_reqs(%struct.firmware* %0) #0 {
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca %struct.fw_priv*, align 8
  store %struct.firmware* %0, %struct.firmware** %2, align 8
  %4 = load %struct.firmware*, %struct.firmware** %2, align 8
  %5 = icmp ne %struct.firmware* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.firmware*, %struct.firmware** %2, align 8
  %8 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 0
  %9 = load %struct.fw_priv*, %struct.fw_priv** %8, align 8
  %10 = icmp ne %struct.fw_priv* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %22

12:                                               ; preds = %6
  %13 = load %struct.firmware*, %struct.firmware** %2, align 8
  %14 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 0
  %15 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  store %struct.fw_priv* %15, %struct.fw_priv** %3, align 8
  %16 = load %struct.fw_priv*, %struct.fw_priv** %3, align 8
  %17 = call i32 @fw_state_is_aborted(%struct.fw_priv* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.fw_priv*, %struct.fw_priv** %3, align 8
  %21 = call i32 @fw_state_aborted(%struct.fw_priv* %20)
  br label %22

22:                                               ; preds = %11, %19, %12
  ret void
}

declare dso_local i32 @fw_state_is_aborted(%struct.fw_priv*) #1

declare dso_local i32 @fw_state_aborted(%struct.fw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
