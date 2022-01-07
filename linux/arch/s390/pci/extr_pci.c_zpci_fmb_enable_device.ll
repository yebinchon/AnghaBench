; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_fmb_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_fmb_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32*, i32, i32, i32, i32 }
%struct.zpci_fib = type { i32, i32 }

@ZPCI_MOD_FC_SET_MEASURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@zdev_fmb_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_fmb_enable_device(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zpci_fib, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %8 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ZPCI_MOD_FC_SET_MEASURE, align 4
  %12 = call i32 @ZPCI_CREATE_REQ(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = bitcast %struct.zpci_fib* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 4, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %18
  %28 = load i32, i32* @zdev_fmb_cache, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmem_cache_zalloc(i32 %28, i32 %29)
  %31 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %82

40:                                               ; preds = %27
  %41 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = and i32 %44, 15
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %47, i32 0, i32 4
  %49 = call i32 @atomic64_set(i32* %48, i32 0)
  %50 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %50, i32 0, i32 3
  %52 = call i32 @atomic64_set(i32* %51, i32 0)
  %53 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %53, i32 0, i32 2
  %55 = call i32 @atomic64_set(i32* %54, i32 0)
  %56 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @virt_to_phys(i32* %58)
  %60 = getelementptr inbounds %struct.zpci_fib, %struct.zpci_fib* %5, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @zpci_mod_fc(i32 %61, %struct.zpci_fib* %5, i64* %7)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %40
  %66 = load i32, i32* @zdev_fmb_cache, align 4
  %67 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kmem_cache_free(i32 %66, i32* %69)
  %71 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %65, %40
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %37, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i64 @zpci_mod_fc(i32, %struct.zpci_fib*, i64*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
