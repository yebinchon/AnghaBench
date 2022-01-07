; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_register_pcc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_register_pcc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.acpi_pcct_hw_reduced* }
%struct.acpi_pcct_hw_reduced = type { i32, i32, i32, i32, i32 }

@cppc_mbox_cl = common dso_local global i32 0, align 4
@pcc_data = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to find PCC channel for subspace %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"No PCC subspace found for %d CPPC\0A\00", align 1
@NUM_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to ioremap PCC comm region mem for %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @register_pcc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pcc_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pcct_hw_reduced*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %121

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_4__* @pcc_mbox_request_channel(i32* @cppc_mbox_cl, i32 %9)
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i64 @IS_ERR(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %122

31:                                               ; preds = %8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %39, align 8
  store %struct.acpi_pcct_hw_reduced* %40, %struct.acpi_pcct_hw_reduced** %4, align 8
  %41 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %42 = icmp ne %struct.acpi_pcct_hw_reduced* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %122

48:                                               ; preds = %31
  %49 = load i32, i32* @NUM_RETRIES, align 4
  %50 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  %61 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %62 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  store i32 %63, i32* %69, align 4
  %70 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %71 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i32 %72, i32* %78, align 8
  %79 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %80 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i64 %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %81, i32* %87, align 4
  %88 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @acpi_os_ioremap(i32 %90, i32 %93)
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %94, i32* %100, align 4
  %101 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %101, i64 %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %48
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %122

114:                                              ; preds = %48
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pcc_data, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %115, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %114, %1
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %109, %43, %26
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_4__* @pcc_mbox_request_channel(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @acpi_os_ioremap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
