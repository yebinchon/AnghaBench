; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_tsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_tsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.tsq_entry*, %struct.tsq_entry*, %struct.tsq_entry* }
%struct.tsq_entry = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RSQSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: can't allocate TSQ.\0A\00", align 1
@TSQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@SAR_TSQE_INVALID = common dso_local global i32 0, align 4
@SAR_REG_TSQB = common dso_local global i32 0, align 4
@SAR_REG_TSQH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @init_tsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tsq(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.tsq_entry*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* @RSQSIZE, align 4
  %10 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tsq_entry* @dma_alloc_coherent(i32* %8, i32 %9, i64* %12, i32 %13)
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %16 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.tsq_entry* %14, %struct.tsq_entry** %17, align 8
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.tsq_entry*, %struct.tsq_entry** %20, align 8
  %22 = icmp eq %struct.tsq_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %2, align 4
  br label %86

28:                                               ; preds = %1
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.tsq_entry*, %struct.tsq_entry** %31, align 8
  %33 = load i32, i32* @TSQ_NUM_ENTRIES, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %35, i64 -1
  %37 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %38 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store %struct.tsq_entry* %36, %struct.tsq_entry** %39, align 8
  %40 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %41 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.tsq_entry*, %struct.tsq_entry** %42, align 8
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store %struct.tsq_entry* %43, %struct.tsq_entry** %46, align 8
  %47 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %48 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.tsq_entry*, %struct.tsq_entry** %49, align 8
  store %struct.tsq_entry* %50, %struct.tsq_entry** %4, align 8
  br label %51

51:                                               ; preds = %63, %28
  %52 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %54 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load %struct.tsq_entry*, %struct.tsq_entry** %55, align 8
  %57 = icmp ule %struct.tsq_entry* %52, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32, i32* @SAR_TSQE_INVALID, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %62 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %65 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %64, i32 1
  store %struct.tsq_entry* %65, %struct.tsq_entry** %4, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %68 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @SAR_REG_TSQB, align 4
  %72 = call i32 @writel(i64 %70, i32 %71)
  %73 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %74 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load %struct.tsq_entry*, %struct.tsq_entry** %75, align 8
  %77 = ptrtoint %struct.tsq_entry* %76 to i64
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.tsq_entry*, %struct.tsq_entry** %80, align 8
  %82 = ptrtoint %struct.tsq_entry* %81 to i64
  %83 = sub i64 %77, %82
  %84 = load i32, i32* @SAR_REG_TSQH, align 4
  %85 = call i32 @writel(i64 %83, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %66, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.tsq_entry* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
