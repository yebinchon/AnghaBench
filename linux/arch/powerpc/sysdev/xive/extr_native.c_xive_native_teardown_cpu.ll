; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_teardown_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_teardown_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32 }

@xive_pool_vps = common dso_local global i64 0, align 8
@XIVE_INVALID_VP = common dso_local global i64 0, align 8
@xive_tima = common dso_local global i64 0, align 8
@TM_SPC_PULL_POOL_CTX = common dso_local global i64 0, align 8
@OPAL_BUSY = common dso_local global i64 0, align 8
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xive_cpu*)* @xive_native_teardown_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_native_teardown_cpu(i32 %0, %struct.xive_cpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xive_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.xive_cpu* %1, %struct.xive_cpu** %4, align 8
  %7 = load i64, i64* @xive_pool_vps, align 8
  %8 = load i64, i64* @XIVE_INVALID_VP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load i64, i64* @xive_tima, align 8
  %13 = load i64, i64* @TM_SPC_PULL_POOL_CTX, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @in_be64(i64 %14)
  %16 = load i64, i64* @xive_pool_vps, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %27, %11
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @opal_xive_set_vp_info(i64 %21, i32 0, i32 0)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @OPAL_BUSY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %29 = call i32 @msleep(i32 %28)
  br label %20

30:                                               ; preds = %10, %26
  ret void
}

declare dso_local i32 @in_be64(i64) #1

declare dso_local i64 @opal_xive_set_vp_info(i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
