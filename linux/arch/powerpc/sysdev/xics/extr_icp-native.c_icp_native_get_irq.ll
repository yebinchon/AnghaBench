; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-native.c_icp_native_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-native.c_icp_native_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XICS_IRQ_SPURIOUS = common dso_local global i32 0, align 4
@xics_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @icp_native_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_native_get_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @icp_native_get_xirr()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 16777215
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @XICS_IRQ_SPURIOUS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %28

12:                                               ; preds = %0
  %13 = load i32, i32* @xics_host, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @irq_find_mapping(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @xics_push_cppr(i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %1, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @xics_mask_unknown_vec(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @icp_native_set_xirr(i32 %26)
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %23, %19, %11
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @icp_native_get_xirr(...) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xics_push_cppr(i32) #1

declare dso_local i32 @xics_mask_unknown_vec(i32) #1

declare dso_local i32 @icp_native_set_xirr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
