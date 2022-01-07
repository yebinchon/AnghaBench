; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_parse_one_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_parse_one_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.acpi_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_irq }
%struct.acpi_resource_extended_irq = type { i64, i32, i32, i32, i32*, i32, i32 }
%struct.acpi_resource_irq = type { i64, i32, i32, i32, i32* }
%struct.acpi_irq_parse_one_ctx = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_gsi_domain_id = common dso_local global %struct.fwnode_handle* null, align 8
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@ACPI_PRODUCER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_irq_parse_one_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_irq_parse_one_cb(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_irq_parse_one_ctx*, align 8
  %7 = alloca %struct.acpi_resource_irq*, align 8
  %8 = alloca %struct.acpi_resource_extended_irq*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.acpi_irq_parse_one_ctx*
  store %struct.acpi_irq_parse_one_ctx* %11, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %12 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %111 [
    i32 128, label %15
    i32 129, label %58
  ]

15:                                               ; preds = %2
  %16 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.acpi_resource_irq* %18, %struct.acpi_resource_irq** %7, align 8
  %19 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %113

35:                                               ; preds = %15
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** @acpi_gsi_domain_id, align 8
  store %struct.fwnode_handle* %36, %struct.fwnode_handle** %9, align 8
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %38 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %39 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %47 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %50 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %7, align 8
  %53 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %56 = call i32 @acpi_irq_parse_one_match(%struct.fwnode_handle* %37, i32 %45, i32 %48, i32 %51, i32 %54, %struct.acpi_irq_parse_one_ctx* %55)
  %57 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %57, i32* %3, align 4
  br label %113

58:                                               ; preds = %2
  %59 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %61, %struct.acpi_resource_extended_irq** %8, align 8
  %62 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ACPI_PRODUCER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @AE_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %113

69:                                               ; preds = %58
  %70 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %74 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp uge i64 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %79 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* @AE_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %113

86:                                               ; preds = %69
  %87 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %88 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %87, i32 0, i32 5
  %89 = call %struct.fwnode_handle* @acpi_get_irq_source_fwhandle(i32* %88)
  store %struct.fwnode_handle* %89, %struct.fwnode_handle** %9, align 8
  %90 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %91 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %92 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %100 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %103 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %8, align 8
  %106 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.acpi_irq_parse_one_ctx*, %struct.acpi_irq_parse_one_ctx** %6, align 8
  %109 = call i32 @acpi_irq_parse_one_match(%struct.fwnode_handle* %90, i32 %98, i32 %101, i32 %104, i32 %107, %struct.acpi_irq_parse_one_ctx* %108)
  %110 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %110, i32* %3, align 4
  br label %113

111:                                              ; preds = %2
  %112 = load i32, i32* @AE_OK, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %86, %77, %67, %35, %26
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @acpi_irq_parse_one_match(%struct.fwnode_handle*, i32, i32, i32, i32, %struct.acpi_irq_parse_one_ctx*) #1

declare dso_local %struct.fwnode_handle* @acpi_get_irq_source_fwhandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
