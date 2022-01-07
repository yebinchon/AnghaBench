; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_ibmvtpm_crq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_ibmvtpm_crq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvtpm_crq = type { i32, i32, i32, i32 }
%struct.ibmvtpm_dev = type { i32, i32, i8*, i32, i32, i32*, i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"CRQ initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to send CRQ init complete rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CRQ initialization completed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unknown crq message type: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid rtce size\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for rtce buffer\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to dma map rtce buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvtpm_crq*, %struct.ibmvtpm_dev*)* @ibmvtpm_crq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvtpm_crq_process(%struct.ibmvtpm_crq* %0, %struct.ibmvtpm_dev* %1) #0 {
  %3 = alloca %struct.ibmvtpm_crq*, align 8
  %4 = alloca %struct.ibmvtpm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ibmvtpm_crq* %0, %struct.ibmvtpm_crq** %3, align 8
  store %struct.ibmvtpm_dev* %1, %struct.ibmvtpm_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %134 [
    i32 131, label %9
    i32 134, label %42
  ]

9:                                                ; preds = %2
  %10 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 132, label %13
    i32 133, label %29
  ]

13:                                               ; preds = %9
  %14 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %19 = call i32 @ibmvtpm_crq_send_init_complete(%struct.ibmvtpm_dev* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %135

29:                                               ; preds = %9
  %30 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %135

34:                                               ; preds = %9
  %35 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %36 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %135

42:                                               ; preds = %2
  %43 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %44 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %133 [
    i32 130, label %46
    i32 129, label %114
    i32 128, label %121
  ]

46:                                               ; preds = %42
  %47 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %48 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @be16_to_cpu(i32 %49)
  %51 = icmp ule i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %54 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %135

57:                                               ; preds = %46
  %58 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %59 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be16_to_cpu(i32 %60)
  %62 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %65 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32* @kmalloc(i8* %66, i32 %67)
  %69 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %70 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %72 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %57
  %76 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %77 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %135

80:                                               ; preds = %57
  %81 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %82 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %85 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %88 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %87, i32 0, i32 7
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %91 = call i32 @dma_map_single(i32 %83, i32* %86, i8* %89, i32 %90)
  %92 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %93 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %95 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %98 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dma_mapping_error(i32 %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %80
  %103 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %104 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %108 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %107, i32 0, i32 5
  store i32* null, i32** %108, align 8
  %109 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %110 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %102, %80
  br label %135

114:                                              ; preds = %42
  %115 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %116 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @be32_to_cpu(i32 %117)
  %119 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %120 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  br label %135

121:                                              ; preds = %42
  %122 = load %struct.ibmvtpm_crq*, %struct.ibmvtpm_crq** %3, align 8
  %123 = getelementptr inbounds %struct.ibmvtpm_crq, %struct.ibmvtpm_crq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @be16_to_cpu(i32 %124)
  %126 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %127 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %129 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %4, align 8
  %131 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %130, i32 0, i32 1
  %132 = call i32 @wake_up_interruptible(i32* %131)
  br label %135

133:                                              ; preds = %42
  br label %135

134:                                              ; preds = %2
  br label %135

135:                                              ; preds = %134, %133, %121, %114, %113, %75, %52, %34, %29, %28
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ibmvtpm_crq_send_init_complete(%struct.ibmvtpm_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32* @kmalloc(i8*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i8*, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
