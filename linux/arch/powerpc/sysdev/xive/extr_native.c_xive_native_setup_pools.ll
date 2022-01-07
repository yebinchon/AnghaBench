; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_pools.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"XIVE: Allocating VP block for pool size %u\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@xive_pool_vps = common dso_local global i64 0, align 8
@XIVE_INVALID_VP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"XIVE: Failed to allocate pool VP, KVM might not function\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"XIVE: Pool VPs allocated at 0x%x for %u max CPUs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xive_native_setup_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_native_setup_pools() #0 {
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %2 = sext i32 %1 to i64
  %3 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %2)
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %5 = call i64 @xive_native_alloc_vp_block(i32 %4)
  store i64 %5, i64* @xive_pool_vps, align 8
  %6 = load i64, i64* @xive_pool_vps, align 8
  %7 = load i64, i64* @XIVE_INVALID_VP, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i64, i64* @xive_pool_vps, align 8
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %17 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %15, i32 %16)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @xive_native_alloc_vp_block(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
