; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_alloc_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_alloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i64, i64 }

@zpci_unique_uid = common dso_local global i64 0, align 8
@ZPCI_NR_DEVICES = common dso_local global i64 0, align 8
@zpci_domain_lock = common dso_local global i32 0, align 4
@zpci_domain = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*)* @zpci_alloc_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_alloc_domain(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %4 = load i64, i64* @zpci_unique_uid, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZPCI_NR_DEVICES, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %60

18:                                               ; preds = %6
  %19 = call i32 @spin_lock(i32* @zpci_domain_lock)
  %20 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @zpci_domain, align 4
  %24 = call i64 @test_bit(i64 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call i32 @spin_unlock(i32* @zpci_domain_lock)
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %18
  %31 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @zpci_domain, align 4
  %35 = call i32 @set_bit(i64 %33, i32 %34)
  %36 = call i32 @spin_unlock(i32* @zpci_domain_lock)
  store i32 0, i32* %2, align 4
  br label %60

37:                                               ; preds = %1
  %38 = call i32 @spin_lock(i32* @zpci_domain_lock)
  %39 = load i32, i32* @zpci_domain, align 4
  %40 = load i64, i64* @ZPCI_NR_DEVICES, align 8
  %41 = call i64 @find_first_zero_bit(i32 %39, i64 %40)
  %42 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZPCI_NR_DEVICES, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = call i32 @spin_unlock(i32* @zpci_domain_lock)
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %37
  %54 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @zpci_domain, align 4
  %58 = call i32 @set_bit(i64 %56, i32 %57)
  %59 = call i32 @spin_unlock(i32* @zpci_domain_lock)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %49, %30, %26, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
