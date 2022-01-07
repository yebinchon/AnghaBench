; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_logical_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_logical_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ex_do_logical_op = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid object type for logical operator: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid comparison opcode: %X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_do_logical_op(i32 %0, %union.acpi_operand_object* %1, %union.acpi_operand_object* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %10, align 8
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @ex_do_logical_op, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %38 [
    i32 132, label %27
    i32 131, label %31
    i32 133, label %35
  ]

27:                                               ; preds = %4
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %29 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %30 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %28, %union.acpi_operand_object** %10, i32 %29)
  store i32 %30, i32* %15, align 4
  br label %46

31:                                               ; preds = %4
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %33 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %34 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %32, %union.acpi_operand_object** %10, i32 %33)
  store i32 %34, i32* %15, align 4
  br label %46

35:                                               ; preds = %4
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %37 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %36, %union.acpi_operand_object** %10)
  store i32 %37, i32* %15, align 4
  br label %46

38:                                               ; preds = %4
  %39 = load i32, i32* @AE_INFO, align 4
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ACPI_ERROR(i32 %43)
  %45 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %38, %35, %31, %27
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %171

51:                                               ; preds = %46
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %88 [
    i32 130, label %67
    i32 129, label %74
    i32 128, label %81
  ]

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %93

74:                                               ; preds = %57
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %78, %74
  br label %93

81:                                               ; preds = %57
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %93

88:                                               ; preds = %57
  %89 = load i32, i32* @AE_INFO, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ACPI_ERROR(i32 %90)
  %92 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %88, %87, %80, %73
  br label %170

94:                                               ; preds = %51
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %14, align 8
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %104 = bitcast %union.acpi_operand_object* %103 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %108 = bitcast %union.acpi_operand_object* %107 to %struct.TYPE_6__*
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %94
  %115 = load i64, i64* %14, align 8
  br label %118

116:                                              ; preds = %94
  %117 = load i64, i64* %13, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @memcmp(i32 %106, i32 %110, i64 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %6, align 4
  switch i32 %121, label %164 [
    i32 130, label %122
    i32 129, label %132
    i32 128, label %148
  ]

122:                                              ; preds = %118
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %17, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %129, %126, %122
  br label %169

132:                                              ; preds = %118
  %133 = load i32, i32* %17, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %16, align 4
  br label %171

137:                                              ; preds = %132
  %138 = load i32, i32* %17, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %171

141:                                              ; preds = %137
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* %14, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %145, %141
  br label %169

148:                                              ; preds = %118
  %149 = load i32, i32* %17, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %171

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %16, align 4
  br label %171

157:                                              ; preds = %152
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %161, %157
  br label %169

164:                                              ; preds = %118
  %165 = load i32, i32* @AE_INFO, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @ACPI_ERROR(i32 %166)
  %168 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %164, %163, %147, %131
  br label %170

170:                                              ; preds = %169, %93
  br label %171

171:                                              ; preds = %170, %155, %151, %140, %135, %50
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %174 = icmp ne %union.acpi_operand_object* %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %177 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* %16, align 4
  %180 = load i32*, i32** %9, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @return_ACPI_STATUS(i32 %181)
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
