; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_disable_fh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_disable_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32 }

@CLP_SET_DISABLE_PCI_FN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dis fid:%x, fh:%x, rc:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clp_disable_fh(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %6 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %10 = call i32 @zdev_enabled(%struct.zpci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @CLP_SET_DISABLE_PCI_FN, align 4
  %15 = call i32 @clp_set_pci_fn(i32* %4, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @zpci_dbg(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @zdev_enabled(%struct.zpci_dev*) #1

declare dso_local i32 @clp_set_pci_fn(i32*, i32, i32) #1

declare dso_local i32 @zpci_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
