; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"fsl_rio_config_read: index %d destid %d hopcount %d offset %8.8x len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fsl_rio_config_lock = common dso_local global i32 0, align 4
@RIO_MAINT_WIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lbz\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lhz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lwz\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"RIO: cfg_read error %d for %x:%x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32, i32, i32*)* @fsl_rio_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_config_read(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rio_mport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.rio_priv*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load %struct.rio_mport*, %struct.rio_mport** %9, align 8
  %22 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %21, i32 0, i32 0
  %23 = load %struct.rio_priv*, %struct.rio_priv** %22, align 8
  store %struct.rio_priv* %23, %struct.rio_priv** %16, align 8
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 16777216, %31
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @IS_ALIGNED(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %7
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %111

42:                                               ; preds = %34
  %43 = load i64, i64* %17, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @fsl_rio_config_lock, i64 %43)
  %45 = load %struct.rio_priv*, %struct.rio_priv** %16, align 8
  %46 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 %49, 22
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 12
  %53 = or i32 %50, %52
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %54, 12
  %56 = or i32 %53, %55
  %57 = call i32 @out_be32(i32* %48, i32 %56)
  %58 = load %struct.rio_priv*, %struct.rio_priv** %16, align 8
  %59 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 10
  %64 = call i32 @out_be32(i32* %61, i32 %63)
  %65 = load %struct.rio_priv*, %struct.rio_priv** %16, align 8
  %66 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @RIO_MAINT_WIN_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32* %74, i32** %18, align 8
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %91 [
    i32 1, label %76
    i32 2, label %81
    i32 4, label %86
  ]

76:                                               ; preds = %42
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @__fsl_read_rio_config(i32 %77, i32* %78, i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %96

81:                                               ; preds = %42
  %82 = load i32, i32* %19, align 4
  %83 = load i32*, i32** %18, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @__fsl_read_rio_config(i32 %82, i32* %83, i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %96

86:                                               ; preds = %42
  %87 = load i32, i32* %19, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @__fsl_read_rio_config(i32 %87, i32* %88, i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %96

91:                                               ; preds = %42
  %92 = load i64, i64* %17, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* @fsl_rio_config_lock, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %111

96:                                               ; preds = %86, %81, %76
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* @fsl_rio_config_lock, i64 %106)
  %108 = load i32, i32* %19, align 4
  %109 = load i32*, i32** %15, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %91, %39
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @__fsl_read_rio_config(i32, i32*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
