; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_pci_routing_table_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_pci_routing_table_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@rs_get_pci_routing_table_length = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_REFCLASS_NAME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_get_pci_routing_table_length(%union.acpi_operand_object* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %14 = load i32, i32* @rs_get_pci_routing_table_length, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %22, align 8
  store %union.acpi_operand_object** %23, %union.acpi_operand_object*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %139, %2
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %142

28:                                               ; preds = %24
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %29, align 8
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %10, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %32 = icmp ne %union.acpi_operand_object* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %46, align 8
  store %union.acpi_operand_object** %47, %union.acpi_operand_object*** %11, align 8
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %96, %43
  %50 = load i64, i64* %13, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ false, %49 ], [ %59, %56 ]
  br i1 %61, label %62, label %99

62:                                               ; preds = %60
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %63, align 8
  %65 = icmp ne %union.acpi_operand_object* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %68 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %68, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %76 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %76, align 8
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %83, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_REFCLASS_NAME, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82, %66
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %12, align 8
  br label %95

92:                                               ; preds = %82, %74, %62
  %93 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %94 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %93, i32 1
  store %union.acpi_operand_object** %94, %union.acpi_operand_object*** %11, align 8
  br label %95

95:                                               ; preds = %92, %90
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %49

99:                                               ; preds = %60
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 0
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %99
  %105 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %105, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %113, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %7, align 8
  br label %130

121:                                              ; preds = %104
  %122 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %122, align 8
  %124 = bitcast %union.acpi_operand_object* %123 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @acpi_ns_get_pathname_length(i32 %126)
  %128 = load i64, i64* %7, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %121, %112
  br label %134

131:                                              ; preds = %99
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 8
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %131, %130
  %135 = load i64, i64* %7, align 8
  %136 = call i64 @ACPI_ROUND_UP_TO_64BIT(i64 %135)
  store i64 %136, i64* %7, align 8
  %137 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %138 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %137, i32 1
  store %union.acpi_operand_object** %138, %union.acpi_operand_object*** %8, align 8
  br label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %9, align 8
  br label %24

142:                                              ; preds = %24
  %143 = load i64, i64* %7, align 8
  %144 = add i64 %143, 4
  %145 = load i64*, i64** %5, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* @AE_OK, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_ns_get_pathname_length(i32) #1

declare dso_local i64 @ACPI_ROUND_UP_TO_64BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
