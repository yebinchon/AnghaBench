; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_register_ioat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_register_ioat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32 }
%struct.zpci_fib = type { i32, i32, i32, i32 }

@ZPCI_MOD_FC_REG_IOAT = common dso_local global i32 0, align 4
@ZPCI_IOTA_RTTO_FLAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_register_ioat(%struct.zpci_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.zpci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zpci_fib, align 4
  %13 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ZPCI_MOD_FC_REG_IOAT, align 4
  %19 = call i32 @ZPCI_CREATE_REQ(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = bitcast %struct.zpci_fib* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 16383
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ZPCI_IOTA_RTTO_FLAG, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %12, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @zpci_mod_fc(i32 %32, %struct.zpci_fib* %12, i32* %13)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  ret i32 %40
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @zpci_mod_fc(i32, %struct.zpci_fib*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
