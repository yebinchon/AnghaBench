; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_apic.c_hv_apic_eoi_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_apic.c_hv_apic_eoi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vp_assist_page = type { i32 }

@hv_vp_assist_page = common dso_local global %struct.hv_vp_assist_page** null, align 8
@HV_X64_MSR_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @hv_apic_eoi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_apic_eoi_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_vp_assist_page*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** @hv_vp_assist_page, align 8
  %7 = call i64 (...) @smp_processor_id()
  %8 = getelementptr inbounds %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %6, i64 %7
  %9 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %8, align 8
  store %struct.hv_vp_assist_page* %9, %struct.hv_vp_assist_page** %5, align 8
  %10 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %5, align 8
  %11 = icmp ne %struct.hv_vp_assist_page* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %5, align 8
  %14 = getelementptr inbounds %struct.hv_vp_assist_page, %struct.hv_vp_assist_page* %13, i32 0, i32 0
  %15 = call i32 @xchg(i32* %14, i32 0)
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @HV_X64_MSR_EOI, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @wrmsr(i32 %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
