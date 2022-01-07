; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_clear_airq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_clear_airq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32 }
%struct.zpci_fib = type { i32 }

@ZPCI_MOD_FC_DEREG_INT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*)* @zpci_clear_airq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_clear_airq(%struct.zpci_dev* %0) #0 {
  %2 = alloca %struct.zpci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zpci_fib, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %2, align 8
  %7 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ZPCI_MOD_FC_DEREG_INT, align 4
  %11 = call i32 @ZPCI_CREATE_REQ(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = bitcast %struct.zpci_fib* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @zpci_mod_fc(i32 %13, %struct.zpci_fib* %4, i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 24
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  ret i32 %32
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @zpci_mod_fc(i32, %struct.zpci_fib*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
