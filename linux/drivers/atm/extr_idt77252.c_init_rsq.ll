; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_rsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_rsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.rsq_entry*, %struct.rsq_entry*, %struct.rsq_entry* }
%struct.rsq_entry = type { i64 }
%struct.TYPE_3__ = type { i32 }

@RSQSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: can't allocate RSQ.\0A\00", align 1
@RSQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@SAR_REG_RSQH = common dso_local global i32 0, align 4
@SAR_REG_RSQB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: RSQ base at 0x%lx (0x%x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: RSQ head = 0x%x, base = 0x%x, tail = 0x%x.\0A\00", align 1
@SAR_REG_RSQT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @init_rsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rsq(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.rsq_entry*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* @RSQSIZE, align 4
  %10 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rsq_entry* @dma_alloc_coherent(i32* %8, i32 %9, i64* %12, i32 %13)
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %16 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.rsq_entry* %14, %struct.rsq_entry** %17, align 8
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.rsq_entry*, %struct.rsq_entry** %20, align 8
  %22 = icmp eq %struct.rsq_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %2, align 4
  br label %106

28:                                               ; preds = %1
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.rsq_entry*, %struct.rsq_entry** %31, align 8
  %33 = load i32, i32* @RSQ_NUM_ENTRIES, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %35, i64 -1
  %37 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %38 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.rsq_entry* %36, %struct.rsq_entry** %39, align 8
  %40 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %41 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.rsq_entry*, %struct.rsq_entry** %42, align 8
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store %struct.rsq_entry* %43, %struct.rsq_entry** %46, align 8
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %48 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.rsq_entry*, %struct.rsq_entry** %49, align 8
  store %struct.rsq_entry* %50, %struct.rsq_entry** %4, align 8
  br label %51

51:                                               ; preds = %61, %28
  %52 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %54 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.rsq_entry*, %struct.rsq_entry** %55, align 8
  %57 = icmp ule %struct.rsq_entry* %52, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %60 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %63 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %62, i32 1
  store %struct.rsq_entry* %63, %struct.rsq_entry** %4, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %66 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.rsq_entry*, %struct.rsq_entry** %67, align 8
  %69 = ptrtoint %struct.rsq_entry* %68 to i64
  %70 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %71 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.rsq_entry*, %struct.rsq_entry** %72, align 8
  %74 = ptrtoint %struct.rsq_entry* %73 to i64
  %75 = sub i64 %69, %74
  %76 = load i32, i32* @SAR_REG_RSQH, align 4
  %77 = call i32 @writel(i64 %75, i32 %76)
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @SAR_REG_RSQB, align 4
  %83 = call i32 @writel(i64 %81, i32 %82)
  %84 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %85 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %88 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.rsq_entry*, %struct.rsq_entry** %89, align 8
  %91 = ptrtoint %struct.rsq_entry* %90 to i64
  %92 = load i32, i32* @SAR_REG_RSQB, align 4
  %93 = call i32 @readl(i32 %92)
  %94 = call i32 (i8*, i32, i64, i32, ...) @IPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %86, i64 %91, i32 %93)
  %95 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %96 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SAR_REG_RSQH, align 4
  %99 = call i32 @readl(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* @SAR_REG_RSQB, align 4
  %102 = call i32 @readl(i32 %101)
  %103 = load i32, i32* @SAR_REG_RSQT, align 4
  %104 = call i32 @readl(i32 %103)
  %105 = call i32 (i8*, i32, i64, i32, ...) @IPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %97, i64 %100, i32 %102, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %64, %23
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.rsq_entry* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @IPRINTK(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
