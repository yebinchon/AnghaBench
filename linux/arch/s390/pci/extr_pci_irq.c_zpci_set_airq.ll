; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_set_airq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_set_airq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.zpci_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.zpci_fib = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i32, i32 }

@ZPCI_MOD_FC_REG_INT = common dso_local global i32 0, align 4
@PCI_ISC = common dso_local global i32 0, align 4
@zpci_sbv = common dso_local global %struct.TYPE_5__* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*)* @zpci_set_airq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_set_airq(%struct.zpci_dev* %0) #0 {
  %2 = alloca %struct.zpci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpci_fib, align 8
  %5 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %2, align 8
  %6 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ZPCI_MOD_FC_REG_INT, align 4
  %10 = call i32 @ZPCI_CREATE_REQ(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = bitcast %struct.zpci_fib* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  %12 = load i32, i32* @PCI_ISC, align 4
  %13 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @airq_iv_end(%struct.TYPE_6__* %19)
  %21 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zpci_sbv, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 64
  %39 = mul nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %34, %40
  %42 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 63
  %48 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %4, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @zpci_mod_fc(i32 %50, %struct.zpci_fib* %4, i32* %5)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  ret i32 %58
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @airq_iv_end(%struct.TYPE_6__*) #1

declare dso_local i64 @zpci_mod_fc(i32, %struct.zpci_fib*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
