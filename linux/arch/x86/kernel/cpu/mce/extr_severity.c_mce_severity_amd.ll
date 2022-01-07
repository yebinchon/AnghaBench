; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_severity.c_mce_severity_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_severity.c_mce_severity_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.mce = type { i32 }

@MCI_STATUS_PCC = common dso_local global i32 0, align 4
@MCE_PANIC_SEVERITY = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@IN_KERNEL = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MCE_AR_SEVERITY = common dso_local global i32 0, align 4
@MCI_STATUS_OVER = common dso_local global i32 0, align 4
@MCE_UC_SEVERITY = common dso_local global i32 0, align 4
@MCI_STATUS_DEFERRED = common dso_local global i32 0, align 4
@MCE_DEFERRED_SEVERITY = common dso_local global i32 0, align 4
@MCE_KEEP_SEVERITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*, i32, i8**, i32)* @mce_severity_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_severity_amd(%struct.mce* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mce*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mce*, %struct.mce** %6, align 8
  %12 = call i32 @error_context(%struct.mce* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.mce*, %struct.mce** %6, align 8
  %14 = getelementptr inbounds %struct.mce, %struct.mce* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MCI_STATUS_PCC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @MCE_PANIC_SEVERITY, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load %struct.mce*, %struct.mce** %6, align 8
  %23 = getelementptr inbounds %struct.mce, %struct.mce* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MCI_STATUS_UC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IN_KERNEL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MCE_PANIC_SEVERITY, align 4
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %28
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 1), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.mce*, %struct.mce** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mce_severity_amd_smca(%struct.mce* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %69

44:                                               ; preds = %37
  %45 = load i32, i32* @MCE_AR_SEVERITY, align 4
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.mce*, %struct.mce** %6, align 8
  %48 = getelementptr inbounds %struct.mce, %struct.mce* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MCI_STATUS_OVER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @MCE_PANIC_SEVERITY, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @MCE_UC_SEVERITY, align 4
  store i32 %57, i32* %5, align 4
  br label %69

58:                                               ; preds = %21
  %59 = load %struct.mce*, %struct.mce** %6, align 8
  %60 = getelementptr inbounds %struct.mce, %struct.mce* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @MCE_DEFERRED_SEVERITY, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @MCE_KEEP_SEVERITY, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65, %56, %53, %44, %40, %32, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @error_context(%struct.mce*) #1

declare dso_local i32 @mce_severity_amd_smca(%struct.mce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
