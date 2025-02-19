; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_kexec_mark_crashkres.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_kexec_mark_crashkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@crashk_low_res = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@kexec_crash_image = common dso_local global %struct.TYPE_4__* null, align 8
@crashk_res = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@KEXEC_CONTROL_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kexec_mark_crashkres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kexec_mark_crashkres(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crashk_low_res, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crashk_low_res, i32 0, i32 1), align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @kexec_mark_range(i64 %4, i64 %5, i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kexec_crash_image, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @page_to_pfn(i32 %10)
  %12 = call i64 @PFN_PHYS(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @crashk_res, i32 0, i32 0), align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = add i64 %14, %15
  %17 = sub i64 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @kexec_mark_range(i64 %13, i64 %17, i32 %18)
  %20 = load i64, i64* @KEXEC_CONTROL_PAGE_SIZE, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @crashk_res, i32 0, i32 1), align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @kexec_mark_range(i64 %23, i64 %24, i32 %25)
  ret void
}

declare dso_local i32 @kexec_mark_range(i64, i64, i32) #1

declare dso_local i64 @PFN_PHYS(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
