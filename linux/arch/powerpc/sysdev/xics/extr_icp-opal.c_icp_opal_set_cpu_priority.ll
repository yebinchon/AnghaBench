; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-opal.c_icp_opal_set_cpu_priority.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-opal.c_icp_opal_set_cpu_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_PRIORITY = common dso_local global i8 0, align 1
@LOWEST_PRIORITY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @icp_opal_set_cpu_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_opal_set_cpu_priority(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* @DEFAULT_PRIORITY, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp sge i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8, i8* @LOWEST_PRIORITY, align 1
  store i8 %9, i8* %2, align 1
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8, i8* %2, align 1
  %12 = call i32 @xics_set_base_cppr(i8 zeroext %11)
  %13 = load i8, i8* %2, align 1
  %14 = call i32 @opal_int_set_cppr(i8 zeroext %13)
  %15 = call i32 (...) @iosync()
  ret void
}

declare dso_local i32 @xics_set_base_cppr(i8 zeroext) #1

declare dso_local i32 @opal_int_set_cppr(i8 zeroext) #1

declare dso_local i32 @iosync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
