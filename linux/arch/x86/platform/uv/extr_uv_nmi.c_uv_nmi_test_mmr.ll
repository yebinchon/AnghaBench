; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_test_mmr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_test_mmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_hub_nmi_s = type { i32, i32 }

@nmi_mmr = common dso_local global i32 0, align 4
@nmi_mmr_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uv_hub_nmi_s*)* @uv_nmi_test_mmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_nmi_test_mmr(%struct.uv_hub_nmi_s* %0) #0 {
  %2 = alloca %struct.uv_hub_nmi_s*, align 8
  store %struct.uv_hub_nmi_s* %0, %struct.uv_hub_nmi_s** %2, align 8
  %3 = load i32, i32* @nmi_mmr, align 4
  %4 = call i32 @uv_read_local_mmr(i32 %3)
  %5 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %6 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %8 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %2, align 8
  %11 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @nmi_mmr_pending, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @uv_read_local_mmr(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
