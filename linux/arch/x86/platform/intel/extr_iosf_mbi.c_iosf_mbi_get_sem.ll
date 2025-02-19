; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_get_sem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_get_sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@iosf_mbi_sem_address = common dso_local global i32 0, align 4
@mbi_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Error P-Unit semaphore read failed\0A\00", align 1
@PUNIT_SEMAPHORE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @iosf_mbi_get_sem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iosf_mbi_get_sem(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %6 = load i32, i32* @MBI_REG_READ, align 4
  %7 = load i32, i32* @iosf_mbi_sem_address, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @iosf_mbi_read(i32 %5, i32 %6, i32 %7, i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @PUNIT_SEMAPHORE_BIT, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
