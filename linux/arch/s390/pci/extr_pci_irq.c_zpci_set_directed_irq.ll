; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_set_directed_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_set_directed_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32, i32 }
%struct.zpci_fib = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ZPCI_MOD_FC_REG_INT_D = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*)* @zpci_set_directed_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_set_directed_irq(%struct.zpci_dev* %0) #0 {
  %2 = alloca %struct.zpci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpci_fib, align 4
  %5 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %2, align 8
  %6 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ZPCI_MOD_FC_REG_INT_D, align 4
  %10 = call i32 @ZPCI_CREATE_REQ(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = bitcast %struct.zpci_fib* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @zpci_mod_fc(i32 %23, %struct.zpci_fib* %4, i32* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @zpci_mod_fc(i32, %struct.zpci_fib*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
