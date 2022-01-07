; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_reenlightenment_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_reenlightenment_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.hv_tsc_emulation_status = type { i64 }

@HV_X64_MSR_TSC_EMULATION_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @hv_reenlightenment_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_reenlightenment_notify(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.hv_tsc_emulation_status, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = load i32, i32* @HV_X64_MSR_TSC_EMULATION_STATUS, align 4
  %5 = bitcast %struct.hv_tsc_emulation_status* %3 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @rdmsrl(i32 %4, i32 %6)
  br i1 true, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hv_tsc_emulation_status, %struct.hv_tsc_emulation_status* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @hv_reenlightenment_cb()
  br label %14

14:                                               ; preds = %12, %8, %1
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @hv_reenlightenment_cb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
