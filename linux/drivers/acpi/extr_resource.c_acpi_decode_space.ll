; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_decode_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_decode_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_win = type { i64, %struct.resource }
%struct.resource = type { i64, i64, i32 }
%struct.acpi_resource_address = type { i64, i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_address64_attribute = type { i32, i64, i64, i64, i64 }

@ACPI_DECODE_10 = common dso_local global i32 0, align 4
@ACPI_DECODE_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"ACPI: Invalid address space min_addr_fix %d, max_addr_fix %d, len %llx\0A\00", align 1
@ACPI_PRODUCER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"ACPI: translation_offset(%lld) is invalid for non-bridge device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"acpi resource window ([%#llx-%#llx] ignored, not CPU addressable)\0A\00", align 1
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@IORESOURCE_WINDOW = common dso_local global i32 0, align 4
@ACPI_PREFETCHABLE_MEMORY = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource_win*, %struct.acpi_resource_address*, %struct.acpi_address64_attribute*)* @acpi_decode_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_decode_space(%struct.resource_win* %0, %struct.acpi_resource_address* %1, %struct.acpi_address64_attribute* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_win*, align 8
  %6 = alloca %struct.acpi_resource_address*, align 8
  %7 = alloca %struct.acpi_address64_attribute*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.resource*, align 8
  store %struct.resource_win* %0, %struct.resource_win** %5, align 8
  store %struct.acpi_resource_address* %1, %struct.acpi_resource_address** %6, align 8
  store %struct.acpi_address64_attribute* %2, %struct.acpi_address64_attribute** %7, align 8
  %15 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 4095
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ACPI_DECODE_10, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ACPI_DECODE_16, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %33 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %34 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %33, i32 0, i32 1
  store %struct.resource* %34, %struct.resource** %14, align 8
  %35 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %36 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %39 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42, %23
  %46 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %47 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %60 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %55, %50, %45
  %68 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %69 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACPI_PRODUCER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %75 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  br label %88

77:                                               ; preds = %67
  %78 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %79 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %84 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %90 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %11, align 8
  %94 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %95 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %96, %97
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %101 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.resource*, %struct.resource** %14, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.resource*, %struct.resource** %14, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %110 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %88
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.resource*, %struct.resource** %14, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.resource*, %struct.resource** %14, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119, %113, %88
  %126 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %127 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.acpi_address64_attribute*, %struct.acpi_address64_attribute** %7, align 8
  %130 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %131)
  store i32 0, i32* %4, align 4
  br label %192

133:                                              ; preds = %119
  %134 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %135 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %156 [
    i32 128, label %137
    i32 129, label %142
    i32 130, label %152
  ]

137:                                              ; preds = %133
  %138 = load %struct.resource*, %struct.resource** %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @acpi_dev_memresource_flags(%struct.resource* %138, i64 %139, i32 %140)
  br label %157

142:                                              ; preds = %133
  %143 = load %struct.resource*, %struct.resource** %14, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %147 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @acpi_dev_ioresource_flags(%struct.resource* %143, i64 %144, i32 %145, i32 %150)
  br label %157

152:                                              ; preds = %133
  %153 = load i32, i32* @IORESOURCE_BUS, align 4
  %154 = load %struct.resource*, %struct.resource** %14, align 8
  %155 = getelementptr inbounds %struct.resource, %struct.resource* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  br label %157

156:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %192

157:                                              ; preds = %152, %142, %137
  %158 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %159 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ACPI_PRODUCER, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* @IORESOURCE_WINDOW, align 4
  %165 = load %struct.resource*, %struct.resource** %14, align 8
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %157
  %170 = load %struct.acpi_resource_address*, %struct.acpi_resource_address** %6, align 8
  %171 = getelementptr inbounds %struct.acpi_resource_address, %struct.acpi_resource_address* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ACPI_PREFETCHABLE_MEMORY, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %179 = load %struct.resource*, %struct.resource** %14, align 8
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %169
  %184 = load %struct.resource*, %struct.resource** %14, align 8
  %185 = getelementptr inbounds %struct.resource, %struct.resource* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %183, %156, %125
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i32 @acpi_dev_memresource_flags(%struct.resource*, i64, i32) #1

declare dso_local i32 @acpi_dev_ioresource_flags(%struct.resource*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
