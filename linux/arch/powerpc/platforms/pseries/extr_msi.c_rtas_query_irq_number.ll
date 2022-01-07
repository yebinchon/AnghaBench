; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_query_irq_number.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_query_irq_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@query_token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rtas_msi: error (%d) querying source number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32)* @rtas_query_irq_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_query_irq_number(%struct.pci_dn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @rtas_config_addr(i32 %12, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %32, %2
  %23 = load i32, i32* @query_token, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @BUID_HI(i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @BUID_LO(i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rtas_call(i32 %23, i32 4, i32 3, i32* %24, i32 %25, i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @rtas_busy_delay(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %22, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @rtas_config_addr(i32, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i64) #1

declare dso_local i32 @BUID_LO(i64) #1

declare dso_local i64 @rtas_busy_delay(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
