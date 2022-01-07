; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_unregister_ioat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_unregister_ioat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32 }
%struct.zpci_fib = type { i32 }

@ZPCI_MOD_FC_DEREG_IOAT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_unregister_ioat(%struct.zpci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zpci_fib, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ZPCI_MOD_FC_DEREG_IOAT, align 4
  %14 = call i32 @ZPCI_CREATE_REQ(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = bitcast %struct.zpci_fib* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @zpci_mod_fc(i32 %16, %struct.zpci_fib* %6, i32* %8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  ret i32 %29
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
