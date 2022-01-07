; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_do_memory_failure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_do_memory_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32 }

@MF_ACTION_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Uncorrected hardware memory error in user-access at %llx\00", align 1
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@MF_MUST_KILL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Memory error not recovered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*)* @do_memory_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_memory_failure(%struct.mce* %0) #0 {
  %2 = alloca %struct.mce*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %2, align 8
  %5 = load i32, i32* @MF_ACTION_REQUIRED, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.mce*, %struct.mce** %2, align 8
  %7 = getelementptr inbounds %struct.mce, %struct.mce* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.mce*, %struct.mce** %2, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @MF_MUST_KILL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.mce*, %struct.mce** %2, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @memory_failure(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.mce*, %struct.mce** %2, align 8
  %34 = getelementptr inbounds %struct.mce, %struct.mce* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = call i32 @set_mce_nospec(i32 %37)
  br label %39

39:                                               ; preds = %32, %30
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memory_failure(i32, i32) #1

declare dso_local i32 @set_mce_nospec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
