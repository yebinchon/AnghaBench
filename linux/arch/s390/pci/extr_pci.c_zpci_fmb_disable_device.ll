; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_fmb_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_fmb_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32*, i32 }
%struct.zpci_fib = type { i32 }

@ZPCI_MOD_FC_SET_MEASURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@zdev_fmb_cache = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_fmb_disable_device(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zpci_fib, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %8 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ZPCI_MOD_FC_SET_MEASURE, align 4
  %12 = call i32 @ZPCI_CREATE_REQ(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = bitcast %struct.zpci_fib* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @zpci_mod_fc(i32 %22, %struct.zpci_fib* %5, i32* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @zdev_fmb_cache, align 4
  %32 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kmem_cache_free(i32 %31, i32* %34)
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @zpci_mod_fc(i32, %struct.zpci_fib*, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
