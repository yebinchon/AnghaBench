; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_coherency_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_coherency_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cca = common dso_local global i32 0, align 4
@CONF_CM_CMASK = common dso_local global i32 0, align 4
@_CACHE_SHIFT = common dso_local global i32 0, align 4
@_page_cachable_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Using cache attribute %d\0A\00", align 1
@CONF_CU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @coherency_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coherency_setup() #0 {
  %1 = load i32, i32* @cca, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @cca, align 4
  %5 = icmp sgt i32 %4, 7
  br i1 %5, label %6, label %10

6:                                                ; preds = %3, %0
  %7 = call i32 (...) @read_c0_config()
  %8 = load i32, i32* @CONF_CM_CMASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* @cca, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = load i32, i32* @cca, align 4
  %12 = load i32, i32* @_CACHE_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* @_page_cachable_default, align 4
  %14 = load i32, i32* @cca, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @CONF_CM_CMASK, align 4
  %17 = load i32, i32* @cca, align 4
  %18 = call i32 @change_c0_config(i32 %16, i32 %17)
  %19 = call i32 (...) @current_cpu_type()
  switch i32 %19, label %27 [
    i32 133, label %20
    i32 132, label %20
    i32 134, label %20
    i32 130, label %20
    i32 129, label %20
    i32 131, label %20
    i32 135, label %23
    i32 128, label %25
  ]

20:                                               ; preds = %10, %10, %10, %10, %10, %10
  %21 = load i32, i32* @CONF_CU, align 4
  %22 = call i32 @clear_c0_config(i32 %21)
  br label %27

23:                                               ; preds = %10
  %24 = call i32 (...) @au1x00_fixup_config_od()
  br label %27

25:                                               ; preds = %10
  %26 = call i32 (...) @nxp_pr4450_fixup_config()
  br label %27

27:                                               ; preds = %10, %25, %23, %20
  ret void
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @change_c0_config(i32, i32) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @clear_c0_config(i32) #1

declare dso_local i32 @au1x00_fixup_config_od(...) #1

declare dso_local i32 @nxp_pr4450_fixup_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
