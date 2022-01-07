; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_set_tct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_set_tct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64 }
%struct.vc_map = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SAR_SRAM_TCT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: writing TCT at 0x%lx, SCD 0x%lx.\0A\00", align 1
@TCT_CBR = common dso_local global i32 0, align 4
@TCT_UBR = common dso_local global i32 0, align 4
@TCT_TSIF = common dso_local global i32 0, align 4
@TCT_HALT = common dso_local global i32 0, align 4
@TCT_IDLE = common dso_local global i32 0, align 4
@TCT_FLAG_UBR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*)* @set_tct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tct(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca %struct.vc_map*, align 8
  %6 = alloca i64, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %4, align 8
  store %struct.vc_map* %1, %struct.vc_map** %5, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %11 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %9, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %18 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %129 [
    i32 130, label %20
    i32 129, label %70
    i32 128, label %128
    i32 131, label %128
  ]

20:                                               ; preds = %2
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %26 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24, i32 %29)
  %31 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 0
  %34 = load i32, i32* @TCT_CBR, align 4
  %35 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %36 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = call i32 @write_sram(%struct.idt77252_dev* %31, i64 %33, i32 %40)
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  %45 = call i32 @write_sram(%struct.idt77252_dev* %42, i64 %44, i32 0)
  %46 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 2
  %49 = call i32 @write_sram(%struct.idt77252_dev* %46, i64 %48, i32 0)
  %50 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 3
  %53 = call i32 @write_sram(%struct.idt77252_dev* %50, i64 %52, i32 0)
  %54 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 4
  %57 = call i32 @write_sram(%struct.idt77252_dev* %54, i64 %56, i32 0)
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 5
  %61 = call i32 @write_sram(%struct.idt77252_dev* %58, i64 %60, i32 0)
  %62 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 6
  %65 = call i32 @write_sram(%struct.idt77252_dev* %62, i64 %64, i32 0)
  %66 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 7
  %69 = call i32 @write_sram(%struct.idt77252_dev* %66, i64 %68, i32 0)
  br label %132

70:                                               ; preds = %2
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %76 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @OPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %74, i32 %79)
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 0
  %84 = load i32, i32* @TCT_UBR, align 4
  %85 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %86 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %84, %89
  %91 = call i32 @write_sram(%struct.idt77252_dev* %81, i64 %83, i32 %90)
  %92 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  %95 = call i32 @write_sram(%struct.idt77252_dev* %92, i64 %94, i32 0)
  %96 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 2
  %99 = load i32, i32* @TCT_TSIF, align 4
  %100 = call i32 @write_sram(%struct.idt77252_dev* %96, i64 %98, i32 %99)
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 3
  %104 = load i32, i32* @TCT_HALT, align 4
  %105 = load i32, i32* @TCT_IDLE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @write_sram(%struct.idt77252_dev* %101, i64 %103, i32 %106)
  %108 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 4
  %111 = call i32 @write_sram(%struct.idt77252_dev* %108, i64 %110, i32 0)
  %112 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 5
  %115 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %116 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @write_sram(%struct.idt77252_dev* %112, i64 %114, i32 %117)
  %119 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, 6
  %122 = call i32 @write_sram(%struct.idt77252_dev* %119, i64 %121, i32 0)
  %123 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 7
  %126 = load i32, i32* @TCT_FLAG_UBR, align 4
  %127 = call i32 @write_sram(%struct.idt77252_dev* %123, i64 %125, i32 %126)
  br label %132

128:                                              ; preds = %2, %2
  br label %129

129:                                              ; preds = %2, %128
  %130 = load i32, i32* @ENOSYS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %133

132:                                              ; preds = %70, %20
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %129
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @OPRINTK(i8*, i32, i64, i32) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
