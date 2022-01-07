; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_hpet.c_hpet_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_hpet.c_hpet_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_fixed_memory32 }
%struct.acpi_resource_extended_irq = type { i32, i32, i32, i32* }
%struct.acpi_resource_fixed_memory32 = type { i32 }
%struct.hpet_data = type { i64, i32*, i8*, i32 }
%struct.acpi_resource_address64 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@AE_ERROR = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_FIXED_MEMORY32 = common dso_local global i64 0, align 8
@HPET_RANGE_SIZE = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_EXTENDED_IRQ = common dso_local global i64 0, align 8
@HPET_MAX_TIMERS = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @hpet_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_resources(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpet_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_resource_address64, align 4
  %9 = alloca %struct.acpi_resource_fixed_memory32*, align 8
  %10 = alloca %struct.acpi_resource_extended_irq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hpet_data*
  store %struct.hpet_data* %14, %struct.hpet_data** %6, align 8
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %16 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %15, %struct.acpi_resource_address64* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %25 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ioremap(i32 %28, i32 %31)
  %33 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %34 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %36 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %20
  %40 = load i32, i32* @AE_ERROR, align 4
  store i32 %40, i32* %3, align 4
  br label %147

41:                                               ; preds = %20
  %42 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %43 = call i64 @hpet_is_known(%struct.hpet_data* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %47 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @iounmap(i8* %48)
  %50 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %50, i32* %3, align 4
  br label %147

51:                                               ; preds = %41
  br label %145

52:                                               ; preds = %2
  %53 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ACPI_RESOURCE_TYPE_FIXED_MEMORY32, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store %struct.acpi_resource_fixed_memory32* %61, %struct.acpi_resource_fixed_memory32** %9, align 8
  %62 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %9, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %66 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %9, align 8
  %68 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HPET_RANGE_SIZE, align 4
  %71 = call i8* @ioremap(i32 %69, i32 %70)
  %72 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %73 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %75 = call i64 @hpet_is_known(%struct.hpet_data* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %79 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @iounmap(i8* %80)
  %82 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %82, i32* %3, align 4
  br label %147

83:                                               ; preds = %58
  br label %144

84:                                               ; preds = %52
  %85 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_RESOURCE_TYPE_EXTENDED_IRQ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %143

90:                                               ; preds = %84
  %91 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %93, %struct.acpi_resource_extended_irq** %10, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %139, %90
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %97 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %142

100:                                              ; preds = %94
  %101 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %102 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HPET_MAX_TIMERS, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %142

107:                                              ; preds = %100
  %108 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %109 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %116 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %119 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @acpi_register_gsi(i32* null, i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i32, i32* @AE_ERROR, align 4
  store i32 %125, i32* %3, align 4
  br label %147

126:                                              ; preds = %107
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %129 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %132 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %136 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %94

142:                                              ; preds = %106, %94
  br label %143

143:                                              ; preds = %142, %84
  br label %144

144:                                              ; preds = %143, %83
  br label %145

145:                                              ; preds = %144, %51
  %146 = load i32, i32* @AE_OK, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %124, %77, %45, %39
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i64 @hpet_is_known(%struct.hpet_data*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
