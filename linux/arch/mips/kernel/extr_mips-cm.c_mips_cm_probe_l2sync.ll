; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-cm.c_mips_cm_probe_l2sync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-cm.c_mips_cm_probe_l2sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CM_GCR_REV_MAJOR = common dso_local global i32 0, align 4
@CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE = common dso_local global i32 0, align 4
@CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN = common dso_local global i32 0, align 4
@MIPS_CM_L2SYNC_SIZE = common dso_local global i32 0, align 4
@mips_cm_l2sync_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_cm_probe_l2sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_cm_probe_l2sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @read_gcr_rev()
  %4 = load i32, i32* @CM_GCR_REV_MAJOR, align 4
  %5 = and i32 %3, %4
  %6 = load i32, i32* @CM_GCR_REV_MAJOR, align 4
  %7 = call i32 @__ffs(i32 %6)
  %8 = lshr i32 %5, %7
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ult i32 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %32

12:                                               ; preds = %0
  %13 = call i32 (...) @mips_cm_l2sync_phys_base()
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %32

24:                                               ; preds = %12
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @write_gcr_l2_only_sync_base(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MIPS_CM_L2SYNC_SIZE, align 4
  %31 = call i32 @ioremap_nocache(i32 %29, i32 %30)
  store i32 %31, i32* @mips_cm_l2sync_base, align 4
  br label %32

32:                                               ; preds = %24, %23, %11
  ret void
}

declare dso_local i32 @read_gcr_rev(...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @mips_cm_l2sync_phys_base(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_gcr_l2_only_sync_base(i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
