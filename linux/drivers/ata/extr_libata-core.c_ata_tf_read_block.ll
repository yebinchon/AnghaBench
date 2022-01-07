; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_tf_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ata_device = type { i32, i32 }

@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"device reported invalid CHS sector 0\0A\00", align 1
@U64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_tf_read_block(%struct.ata_taskfile* %0, %struct.ata_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %11 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %2
  %17 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 40
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 32
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 24
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %16
  %46 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = shl i32 %49, 24
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %23
  %54 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %55 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %108

71:                                               ; preds = %2
  %72 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %73 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %81 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %71
  %90 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %91 = call i32 @ata_dev_warn(%struct.ata_device* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @U64_MAX, align 4
  store i32 %92, i32* %3, align 4
  br label %110

93:                                               ; preds = %71
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %96 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %102 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %93, %53
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %89
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
