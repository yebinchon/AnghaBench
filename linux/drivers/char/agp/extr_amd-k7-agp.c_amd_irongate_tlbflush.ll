; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd-k7-agp.c_amd_irongate_tlbflush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd-k7-agp.c_amd_irongate_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.agp_memory = type { i32 }

@amd_irongate_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AMD_TLBFLUSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @amd_irongate_tlbflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_irongate_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_irongate_private, i32 0, i32 0), align 8
  %4 = load i64, i64* @AMD_TLBFLUSH, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @writel(i32 1, i64 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_irongate_private, i32 0, i32 0), align 8
  %8 = load i64, i64* @AMD_TLBFLUSH, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
