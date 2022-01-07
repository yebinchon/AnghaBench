; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpucheck.c_check_knl_erratum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpucheck.c_check_knl_erratum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTEL_FAM6_XEON_PHI_KNL = common dso_local global i64 0, align 8
@CONFIG_X86_64 = common dso_local global i32 0, align 4
@CONFIG_X86_PAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [152 x i8] c"This 32-bit kernel can not run on this Xeon Phi x200\0Aprocessor due to a processor erratum.  Use a 64-bit\0Akernel, or enable PAE in this 32-bit kernel.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_knl_erratum() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @is_intel()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 6
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 1), align 8
  %9 = load i64, i64* @INTEL_FAM6_XEON_PHI_KNL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %4, %0
  store i32 0, i32* %1, align 4
  br label %23

12:                                               ; preds = %7
  %13 = load i32, i32* @CONFIG_X86_64, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @CONFIG_X86_PAE, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %16
  %22 = call i32 @puts(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %20, %11
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @is_intel(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
