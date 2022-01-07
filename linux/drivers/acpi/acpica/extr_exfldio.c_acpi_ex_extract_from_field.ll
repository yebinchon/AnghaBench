; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_extract_from_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_extract_from_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ex_extract_from_field = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Field size %u (bits) is too large for buffer (%u)\00", align 1
@AE_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@ACPI_INTEGER_BIT_SIZE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @ex_extract_from_field, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %24)
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i32, i32* @AE_INFO, align 4
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ACPI_ERROR(i32 %33)
  %35 = load i32, i32* @AE_BUFFER_OVERFLOW, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %27, %3
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ACPI_MUL_8(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %37
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* @ACPI_READ, align 4
  %67 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %63, i32 0, i32* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %75

68:                                               ; preds = %58
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %70 = load i32, i32* @ACPI_READ, align 4
  %71 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %69, i32 0, i32* %9, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @memcpy(i8* %72, i32* %9, i32 %73)
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @return_ACPI_STATUS(i32 %76)
  br label %78

78:                                               ; preds = %75, %51, %37
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %83, 4
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 4, i32* %88, align 4
  store i32 32, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @ACPI_ROUND_UP_TO(i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_2__*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %99, %103
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @ACPI_ROUND_UP_TO(i32 %104, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @ACPI_READ, align 4
  %110 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %107, i32 %108, i32* %9, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @ACPI_FAILURE(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %89
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  br label %117

117:                                              ; preds = %114, %89
  %118 = load i32, i32* %9, align 4
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_2__*
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %118, %122
  store i32 %123, i32* %10, align 4
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %196, %117
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %199

128:                                              ; preds = %124
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_2__*
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @ACPI_READ, align 4
  %138 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %135, i32 %136, i32* %9, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @ACPI_FAILURE(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %128
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @return_ACPI_STATUS(i32 %143)
  br label %145

145:                                              ; preds = %142, %128
  %146 = load i32, i32* %16, align 4
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_2__*
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %146, %150
  %152 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %158 = bitcast %union.acpi_operand_object* %157 to %struct.TYPE_2__*
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %156, %160
  %162 = shl i32 %155, %161
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %154, %145
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %199

170:                                              ; preds = %165
  %171 = load i8*, i8** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %176 = bitcast %union.acpi_operand_object* %175 to %struct.TYPE_2__*
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %179, %180
  %182 = call i32 @ACPI_MIN(i32 %178, i32 %181)
  %183 = call i32 @memcpy(i8* %174, i32* %10, i32 %182)
  %184 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %185 = bitcast %union.acpi_operand_object* %184 to %struct.TYPE_2__*
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %192 = bitcast %union.acpi_operand_object* %191 to %struct.TYPE_2__*
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %190, %194
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %170
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %124

199:                                              ; preds = %169, %124
  %200 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %201 = bitcast %union.acpi_operand_object* %200 to %struct.TYPE_2__*
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %16, align 4
  %205 = srem i32 %203, %204
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @ACPI_MASK_BITS_ABOVE(i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %208, %199
  %214 = load i8*, i8** %6, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %219 = bitcast %union.acpi_operand_object* %218 to %struct.TYPE_2__*
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sub nsw i32 %222, %223
  %225 = call i32 @ACPI_MIN(i32 %221, i32 %224)
  %226 = call i32 @memcpy(i8* %217, i32* %10, i32 %225)
  %227 = load i32, i32* @AE_OK, align 4
  %228 = call i32 @return_ACPI_STATUS(i32 %227)
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ACPI_MUL_8(i32) #1

declare dso_local i32 @acpi_ex_field_datum_io(%union.acpi_operand_object*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ACPI_ROUND_UP_TO(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_MIN(i32, i32) #1

declare dso_local i32 @ACPI_MASK_BITS_ABOVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
