; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sysio_sbus_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sbus.c_sysio_sbus_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu* }
%struct.iommu = type { i32 }

@SYSIO_SBUS_AFSR = common dso_local global i64 0, align 8
@SYSIO_SBUS_AFAR = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_PLE = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_PTO = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_PBERR = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_SLE = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_STO = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_SBERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"portid\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"SYSIO[%x]: SBUS Error, primary error type[%s] read(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Late PIO Error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Time Out\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Error Ack\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@SYSIO_SBAFSR_RD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"SYSIO[%x]: size[%lx] MID[%lx]\0A\00", align 1
@SYSIO_SBAFSR_SIZE = common dso_local global i64 0, align 8
@SYSIO_SBAFSR_MID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"SYSIO[%x]: AFAR[%016lx]\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"SYSIO[%x]: Secondary SBUS errors [\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"(Late PIO Error)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"(Time Out)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"(Error Ack)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sysio_sbus_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysio_sbus_error_handler(i32 %0, i8* %1) #0 {
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
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SYSIO_SBUS_AFSR, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @SYSIO_SBUS_AFAR, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @upa_readq(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @upa_readq(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SYSIO_SBAFSR_PLE, align 8
  %39 = load i64, i64* @SYSIO_SBAFSR_PTO, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @SYSIO_SBAFSR_PBERR, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @SYSIO_SBAFSR_SLE, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @SYSIO_SBAFSR_STO, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @SYSIO_SBAFSR_SBERR, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %37, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @upa_writeq(i64 %50, i64 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @of_getintprop_default(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @SYSIO_SBAFSR_PLE, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %2
  br label %79

64:                                               ; preds = %2
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @SYSIO_SBAFSR_PTO, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @SYSIO_SBAFSR_PBERR, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %77

77:                                               ; preds = %70, %69
  %78 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %69 ], [ %76, %70 ]
  br label %79

79:                                               ; preds = %77, %63
  %80 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %63 ], [ %78, %77 ]
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @SYSIO_SBAFSR_RD, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %80, i32 %86)
  %88 = load i32, i32* %14, align 4
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @SYSIO_SBAFSR_SIZE, align 8
  %91 = and i64 %89, %90
  %92 = lshr i64 %91, 42
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @SYSIO_SBAFSR_MID, align 8
  %95 = and i64 %93, %94
  %96 = lshr i64 %95, 37
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %88, i64 %92, i64 %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i64, i64* %11, align 8
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %98, i64 %99)
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  store i32 0, i32* %13, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @SYSIO_SBAFSR_SLE, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %79
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %79
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @SYSIO_SBAFSR_STO, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @SYSIO_SBAFSR_SBERR, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %136
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
