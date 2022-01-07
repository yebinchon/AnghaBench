; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_is_correctable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_is_correctable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i64, i32 }

@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@MCI_STATUS_DEFERRED = common dso_local global i32 0, align 4
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@MCI_STATUS_UC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_is_correctable(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %4 = load %struct.mce*, %struct.mce** %3, align 8
  %5 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @X86_VENDOR_AMD, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.mce*, %struct.mce** %3, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %40

17:                                               ; preds = %9, %1
  %18 = load %struct.mce*, %struct.mce** %3, align 8
  %19 = getelementptr inbounds %struct.mce, %struct.mce* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.mce*, %struct.mce** %3, align 8
  %25 = getelementptr inbounds %struct.mce, %struct.mce* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %23, %17
  %32 = load %struct.mce*, %struct.mce** %3, align 8
  %33 = getelementptr inbounds %struct.mce, %struct.mce* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MCI_STATUS_UC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %30, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
