; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_populate_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_populate_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq_data = type { i64, i64, i64, i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XIVE_SRC_H_INT_ESB = common dso_local global i64 0, align 8
@XIVE_IRQ_FLAG_H_INT_ESB = common dso_local global i32 0, align 4
@XIVE_SRC_STORE_EOI = common dso_local global i64 0, align 8
@XIVE_IRQ_FLAG_STORE_EOI = common dso_local global i32 0, align 4
@XIVE_SRC_LSI = common dso_local global i64 0, align 8
@XIVE_IRQ_FLAG_LSI = common dso_local global i32 0, align 4
@XIVE_INVALID_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to map EOI page for irq 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XIVE_SRC_TRIGGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to map trigger page for irq 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xive_irq_data*)* @xive_spapr_populate_irq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_spapr_populate_irq_data(i32 %0, %struct.xive_irq_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xive_irq_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xive_irq_data* %1, %struct.xive_irq_data** %5, align 8
  %11 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %12 = call i32 @memset(%struct.xive_irq_data* %11, i32 0, i32 56)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @plpar_int_get_source_info(i32 0, i32 %13, i64* %7, i64* %8, i64* %9, i64* %10)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @XIVE_SRC_H_INT_ESB, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @XIVE_IRQ_FLAG_H_INT_ESB, align 4
  %27 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %28 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @XIVE_SRC_STORE_EOI, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @XIVE_IRQ_FLAG_STORE_EOI, align 4
  %38 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %39 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @XIVE_SRC_LSI, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @XIVE_IRQ_FLAG_LSI, align 4
  %49 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %50 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %56 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %59 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %62 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @XIVE_INVALID_CHIP_ID, align 4
  %64 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %65 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %67 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %70 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = call i8* @ioremap(i64 %68, i32 %73)
  %75 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %76 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %78 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %122

86:                                               ; preds = %53
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %89 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @XIVE_SRC_TRIGGER, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %96 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %99 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %3, align 4
  br label %122

100:                                              ; preds = %86
  %101 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %102 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %105 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 1, %107
  %109 = call i8* @ioremap(i64 %103, i32 %108)
  %110 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %111 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.xive_irq_data*, %struct.xive_irq_data** %5, align 8
  %113 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %116, %94, %81, %17
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.xive_irq_data*, i32, i32) #1

declare dso_local i64 @plpar_int_get_source_info(i32, i32, i64*, i64*, i64*, i64*) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
