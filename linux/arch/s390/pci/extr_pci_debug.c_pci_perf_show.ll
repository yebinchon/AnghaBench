; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_debug.c_pci_perf_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_debug.c_pci_perf_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.zpci_dev* }
%struct.zpci_dev = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"FMB statistics disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Update interval: %u ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Samples: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Last update TOD: %Lx\0A\00", align 1
@pci_common_names = common dso_local global i32 0, align 4
@ZPCI_FMB_DMA_COUNTER_VALID = common dso_local global i32 0, align 4
@pci_fmt0_names = common dso_local global i32 0, align 4
@pci_fmt1_names = common dso_local global i32 0, align 4
@pci_fmt2_names = common dso_local global i32 0, align 4
@pci_fmt3_names = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pci_perf_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_perf_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zpci_dev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  store %struct.zpci_dev* %9, %struct.zpci_dev** %6, align 8
  %10 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %11 = icmp ne %struct.zpci_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

13:                                               ; preds = %2
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %124

27:                                               ; preds = %13
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %30 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load i32, i32* @pci_common_names, align 4
  %49 = load i32, i32* @pci_common_names, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %52 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = call i32 @pci_fmb_show(%struct.seq_file* %47, i32 %48, i32 %50, i32* %54)
  %56 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %115 [
    i32 0, label %61
    i32 1, label %82
    i32 2, label %93
    i32 3, label %104
  ]

61:                                               ; preds = %27
  %62 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ZPCI_FMB_DMA_COUNTER_VALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %118

71:                                               ; preds = %61
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load i32, i32* @pci_fmt0_names, align 4
  %74 = load i32, i32* @pci_fmt0_names, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %77 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @pci_fmb_show(%struct.seq_file* %72, i32 %73, i32 %75, i32* %80)
  br label %118

82:                                               ; preds = %27
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load i32, i32* @pci_fmt1_names, align 4
  %85 = load i32, i32* @pci_fmt1_names, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %88 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = call i32 @pci_fmb_show(%struct.seq_file* %83, i32 %84, i32 %86, i32* %91)
  br label %118

93:                                               ; preds = %27
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = load i32, i32* @pci_fmt2_names, align 4
  %96 = load i32, i32* @pci_fmt2_names, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %99 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @pci_fmb_show(%struct.seq_file* %94, i32 %95, i32 %97, i32* %102)
  br label %118

104:                                              ; preds = %27
  %105 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %106 = load i32, i32* @pci_fmt3_names, align 4
  %107 = load i32, i32* @pci_fmt3_names, align 4
  %108 = call i32 @ARRAY_SIZE(i32 %107)
  %109 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %110 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = call i32 @pci_fmb_show(%struct.seq_file* %105, i32 %106, i32 %108, i32* %113)
  br label %118

115:                                              ; preds = %27
  %116 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %117 = call i32 @seq_puts(%struct.seq_file* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %104, %93, %82, %71, %70
  %119 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %120 = call i32 @pci_sw_counter_show(%struct.seq_file* %119)
  %121 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %122 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %21, %12
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @pci_fmb_show(%struct.seq_file*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pci_sw_counter_show(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
