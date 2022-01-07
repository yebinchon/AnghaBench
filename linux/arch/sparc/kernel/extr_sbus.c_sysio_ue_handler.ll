; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sysio_ue_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sysio_ue_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu* }
%struct.iommu = type { i32 }

@SYSIO_UE_AFSR = common dso_local global i64 0, align 8
@SYSIO_UE_AFAR = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PPIO = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PDRD = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PDWR = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SPIO = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SDRD = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SDWR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"portid\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"SYSIO[%x]: Uncorrectable ECC Error, primary error type[%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DVMA Read\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DVMA Write\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"SYSIO[%x]: DOFF[%lx] SIZE[%lx] MID[%lx]\0A\00", align 1
@SYSIO_UEAFSR_DOFF = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SIZE = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_MID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"SYSIO[%x]: AFAR[%016lx]\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"SYSIO[%x]: Secondary UE errors [\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(PIO)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"(DVMA Read)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"(DVMA Write)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sysio_ue_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysio_ue_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.platform_device*
  store %struct.platform_device* %16, %struct.platform_device** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.iommu*, %struct.iommu** %20, align 8
  store %struct.iommu* %21, %struct.iommu** %6, align 8
  %22 = load %struct.iommu*, %struct.iommu** %6, align 8
  %23 = getelementptr inbounds %struct.iommu, %struct.iommu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 8192
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @SYSIO_UE_AFSR, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SYSIO_UE_AFAR, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @upa_readq(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @upa_readq(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SYSIO_UEAFSR_PPIO, align 8
  %39 = load i64, i64* @SYSIO_UEAFSR_PDRD, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @SYSIO_UEAFSR_PDWR, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @SYSIO_UEAFSR_SPIO, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @SYSIO_UEAFSR_SDRD, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @SYSIO_UEAFSR_SDWR, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %37, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @upa_writeq(i64 %50, i64 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @of_getintprop_default(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @SYSIO_UEAFSR_PPIO, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %2
  br label %79

64:                                               ; preds = %2
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @SYSIO_UEAFSR_PDRD, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @SYSIO_UEAFSR_PDWR, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %77

77:                                               ; preds = %70, %69
  %78 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %69 ], [ %76, %70 ]
  br label %79

79:                                               ; preds = %77, %63
  %80 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %63 ], [ %78, %77 ]
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %80)
  %82 = load i32, i32* %14, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @SYSIO_UEAFSR_DOFF, align 8
  %85 = and i64 %83, %84
  %86 = lshr i64 %85, 45
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @SYSIO_UEAFSR_SIZE, align 8
  %89 = and i64 %87, %88
  %90 = lshr i64 %89, 42
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @SYSIO_UEAFSR_MID, align 8
  %93 = and i64 %91, %92
  %94 = lshr i64 %93, 37
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %82, i64 %86, i64 %90, i64 %94)
  %96 = load i32, i32* %14, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %96, i64 %97)
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  store i32 0, i32* %13, align 4
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @SYSIO_UEAFSR_SPIO, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %79
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %79
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @SYSIO_UEAFSR_SDRD, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @SYSIO_UEAFSR_SDWR, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %134
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @of_getintprop_default(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
