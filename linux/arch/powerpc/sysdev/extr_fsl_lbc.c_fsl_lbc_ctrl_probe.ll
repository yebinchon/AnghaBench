; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_lbc.c_fsl_lbc_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_lbc.c_fsl_lbc_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_14__ }

@.str = private unnamed_addr constant [23 x i8] c"Device OF-Node is NULL\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fsl_lbc_ctrl_dev = common dso_local global %struct.TYPE_12__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get memory region\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get irq resource\0A\00", align 1
@fsl_lbc_ctrl_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"fsl-lbc\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"fsl-lbc-err\00", align 1
@LTEIR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_lbc_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lbc_ctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %181

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_12__* @kzalloc(i32 32, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %181

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %28 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %26, %struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_13__* @of_iomap(i32 %38, i32 0)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %24
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %173

52:                                               ; preds = %24
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @irq_of_parse_and_map(i32 %56, i32 0)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %52
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %173

75:                                               ; preds = %52
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fsl_lbc_ctrl_init(%struct.TYPE_12__* %80, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %173

89:                                               ; preds = %75
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @fsl_lbc_ctrl_irq, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %97 = call i32 @request_irq(i32 %94, i32 %95, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %89
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %4, align 4
  br label %173

114:                                              ; preds = %89
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @irq_of_parse_and_map(i32 %118, i32 1)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %114
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @fsl_lbc_ctrl_irq, align 4
  %138 = load i32, i32* @IRQF_SHARED, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %140 = call i32 @request_irq(i32 %136, i32 %137, i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %131
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %4, align 4
  br label %165

157:                                              ; preds = %131
  br label %158

158:                                              ; preds = %157, %114
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* @LTEIR_ENABLE, align 4
  %164 = call i32 @out_be32(i32* %162, i32 %163)
  store i32 0, i32* %2, align 4
  br label %181

165:                                              ; preds = %143
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %172 = call i32 @free_irq(i32 %170, %struct.TYPE_12__* %171)
  br label %173

173:                                              ; preds = %165, %100, %88, %69, %46
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = call i32 @iounmap(%struct.TYPE_13__* %176)
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %179 = call i32 @kfree(%struct.TYPE_12__* %178)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @fsl_lbc_ctrl_dev, align 8
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %173, %158, %21, %10
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_13__* @of_iomap(i32, i32) #1

declare dso_local i8* @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @fsl_lbc_ctrl_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @iounmap(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
