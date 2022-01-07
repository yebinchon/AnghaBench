; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda2_init_m64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda2_init_m64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.resource* }
%struct.resource = type { i32, i32 }

@OPAL_M64_WINDOW_TYPE = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"configuring\00", align 1
@OPAL_ENABLE_M64_SPLIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  Cannot strip M64 segment for reserved PE#%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  Failure %lld %s M64 BAR#%d\0A\00", align 1
@OPAL_DISABLE_M64 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_phb*)* @pnv_ioda2_init_m64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_ioda2_init_m64(%struct.pnv_phb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  %7 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %8 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %11 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %12 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %16 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %20 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @opal_pci_set_phb_mem_window(i32 %9, i32 %10, i32 %14, i32 %18, i32 0, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @OPAL_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %95

28:                                               ; preds = %1
  %29 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %30 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %33 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %34 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OPAL_ENABLE_M64_SPLIT, align 4
  %38 = call i64 @opal_pci_phb_mmio_enable(i32 %31, i32 %32, i32 %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @OPAL_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %95

43:                                               ; preds = %28
  %44 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %45 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i64 1
  store %struct.resource* %49, %struct.resource** %5, align 8
  %50 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %51 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %57 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 2, %59
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %94

65:                                               ; preds = %43
  %66 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %67 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %71 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %65
  %78 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %79 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 2, %81
  %83 = load %struct.resource*, %struct.resource** %5, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %93

87:                                               ; preds = %65
  %88 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %89 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %87, %77
  br label %94

94:                                               ; preds = %93, %55
  store i32 0, i32* %2, align 4
  br label %115

95:                                               ; preds = %42, %27
  %96 = load i64, i64* %6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %99 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %96, i8* %97, i32 %101)
  %103 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %104 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %107 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %108 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @OPAL_DISABLE_M64, align 4
  %112 = call i64 @opal_pci_phb_mmio_enable(i32 %105, i32 %106, i32 %110, i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %95, %94
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @opal_pci_set_phb_mem_window(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @opal_pci_phb_mmio_enable(i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
