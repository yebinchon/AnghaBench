; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_setup_mmrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_setup_mmrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UVH_NMI_MMRX_SUPPORTED = common dso_local global i32 0, align 4
@UVH_NMI_MMRX_REQ = common dso_local global i32 0, align 4
@UVH_NMI_MMRX_REQ_SHIFT = common dso_local global i64 0, align 8
@UVH_NMI_MMRX = common dso_local global i32 0, align 4
@nmi_mmr = common dso_local global i32 0, align 4
@UVH_NMI_MMRX_CLEAR = common dso_local global i32 0, align 4
@nmi_mmr_clear = common dso_local global i32 0, align 4
@UVH_NMI_MMRX_SHIFT = common dso_local global i64 0, align 8
@nmi_mmr_pending = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"UV: SMI NMI support: %s\0A\00", align 1
@UVH_NMI_MMRX_TYPE = common dso_local global i32 0, align 4
@UVH_NMI_MMR = common dso_local global i32 0, align 4
@UVH_NMI_MMR_CLEAR = common dso_local global i32 0, align 4
@UVH_NMI_MMR_SHIFT = common dso_local global i64 0, align 8
@UVH_NMI_MMR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv_nmi_setup_mmrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_nmi_setup_mmrs() #0 {
  %1 = load i32, i32* @UVH_NMI_MMRX_SUPPORTED, align 4
  %2 = call i64 @uv_read_local_mmr(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @UVH_NMI_MMRX_REQ, align 4
  %6 = load i64, i64* @UVH_NMI_MMRX_REQ_SHIFT, align 8
  %7 = shl i64 1, %6
  %8 = call i32 @uv_write_local_mmr(i32 %5, i64 %7)
  %9 = load i32, i32* @UVH_NMI_MMRX, align 4
  store i32 %9, i32* @nmi_mmr, align 4
  %10 = load i32, i32* @UVH_NMI_MMRX_CLEAR, align 4
  store i32 %10, i32* @nmi_mmr_clear, align 4
  %11 = load i64, i64* @UVH_NMI_MMRX_SHIFT, align 8
  %12 = shl i64 1, %11
  store i64 %12, i64* @nmi_mmr_pending, align 8
  %13 = load i32, i32* @UVH_NMI_MMRX_TYPE, align 4
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @UVH_NMI_MMR, align 4
  store i32 %16, i32* @nmi_mmr, align 4
  %17 = load i32, i32* @UVH_NMI_MMR_CLEAR, align 4
  store i32 %17, i32* @nmi_mmr_clear, align 4
  %18 = load i64, i64* @UVH_NMI_MMR_SHIFT, align 8
  %19 = shl i64 1, %18
  store i64 %19, i64* @nmi_mmr_pending, align 8
  %20 = load i32, i32* @UVH_NMI_MMR_TYPE, align 4
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %4
  ret void
}

declare dso_local i64 @uv_read_local_mmr(i32) #1

declare dso_local i32 @uv_write_local_mmr(i32, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
