; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda1_init_m64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_ioda1_init_m64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.resource* }
%struct.resource = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i32 }

@PNV_IODA1_M64_NUM = common dso_local global i32 0, align 4
@PNV_IODA1_M64_SEGS = common dso_local global i32 0, align 4
@OPAL_M64_WINDOW_TYPE = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"  Error %lld setting M64 PHB#%x-BAR#%d\0A\00", align 1
@OPAL_ENABLE_M64_SPLIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"  Error %lld enabling M64 PHB#%x-BAR#%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Wrong reserved PE#%x on PHB#%x\0A\00", align 1
@OPAL_DISABLE_M64 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_phb*)* @pnv_ioda1_init_m64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_ioda1_init_m64(%struct.pnv_phb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %75, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PNV_IODA1_M64_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %15 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %19 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PNV_IODA1_M64_SEGS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = mul i64 %26, %27
  %29 = add i64 %22, %28
  store i64 %29, i64* %6, align 8
  %30 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %31 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @PNV_IODA1_M64_SEGS, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i64 @opal_pci_set_phb_mem_window(i32 %32, i32 %33, i32 %34, i64 %35, i32 0, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @OPAL_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %13
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %48 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %51, i32 %52)
  br label %140

54:                                               ; preds = %13
  %55 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %56 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @OPAL_ENABLE_M64_SPLIT, align 4
  %61 = call i64 @opal_pci_phb_mmio_enable(i32 %57, i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @OPAL_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %68 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %71, i32 %72)
  br label %140

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %9

78:                                               ; preds = %9
  %79 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %80 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i64 1
  store %struct.resource* %84, %struct.resource** %4, align 8
  %85 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %86 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %78
  %91 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %92 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 2, %94
  %96 = load %struct.resource*, %struct.resource** %4, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %139

102:                                              ; preds = %78
  %103 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %104 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %108 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %106, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %102
  %115 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %116 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 2, %118
  %120 = load %struct.resource*, %struct.resource** %4, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  br label %138

126:                                              ; preds = %102
  %127 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %128 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %133 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %136)
  br label %138

138:                                              ; preds = %126, %114
  br label %139

139:                                              ; preds = %138, %90
  store i32 0, i32* %2, align 4
  br label %158

140:                                              ; preds = %65, %45
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %5, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %146 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @OPAL_M64_WINDOW_TYPE, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @OPAL_DISABLE_M64, align 4
  %151 = call i64 @opal_pci_phb_mmio_enable(i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %5, align 4
  br label %141

155:                                              ; preds = %141
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %155, %139
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @opal_pci_set_phb_mem_window(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i32, i32) #1

declare dso_local i64 @opal_pci_phb_mmio_enable(i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
