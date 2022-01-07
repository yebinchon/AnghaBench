; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_pci.c_ipmi_pci_probe_regspacing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_pci.c_ipmi_pci_probe_regspacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_io = type { i64, i32, i8 (%struct.si_sm_io*, i32)*, {}*, i32 (%struct.si_sm_io*, i32, i32)*, i32, i64 (%struct.si_sm_io*)*, i64, i32 }

@SI_KCS = common dso_local global i64 0, align 8
@DEFAULT_REGSIZE = common dso_local global i32 0, align 4
@DEFAULT_REGSPACING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not setup I/O space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_io*)* @ipmi_pci_probe_regspacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_pci_probe_regspacing(%struct.si_sm_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si_sm_io*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.si_sm_io* %0, %struct.si_sm_io** %3, align 8
  %6 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %7 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SI_KCS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %1
  %12 = load i32, i32* @DEFAULT_REGSIZE, align 4
  %13 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %14 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %16 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @DEFAULT_REGSPACING, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %58, %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 16
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %24 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %26 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %25, i32 0, i32 6
  %27 = load i64 (%struct.si_sm_io*)*, i64 (%struct.si_sm_io*)** %26, align 8
  %28 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %29 = call i64 %27(%struct.si_sm_io* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %33 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @DEFAULT_REGSPACING, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %21
  %38 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %39 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %38, i32 0, i32 4
  %40 = load i32 (%struct.si_sm_io*, i32, i32)*, i32 (%struct.si_sm_io*, i32, i32)** %39, align 8
  %41 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %42 = call i32 %40(%struct.si_sm_io* %41, i32 1, i32 16)
  %43 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %44 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %43, i32 0, i32 2
  %45 = load i8 (%struct.si_sm_io*, i32)*, i8 (%struct.si_sm_io*, i32)** %44, align 8
  %46 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %47 = call zeroext i8 %45(%struct.si_sm_io* %46, i32 1)
  store i8 %47, i8* %4, align 1
  %48 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %49 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %48, i32 0, i32 3
  %50 = bitcast {}** %49 to i32 (%struct.si_sm_io*)**
  %51 = load i32 (%struct.si_sm_io*)*, i32 (%struct.si_sm_io*)** %50, align 8
  %52 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %53 = call i32 %51(%struct.si_sm_io* %52)
  %54 = load i8, i8* %4, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %37
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %5, align 4
  br label %18

61:                                               ; preds = %18
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* @DEFAULT_REGSPACING, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %56, %31
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
