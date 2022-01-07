; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_display_internal_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbobject.c_acpi_db_display_internal_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %union.acpi_operand_object* }
%struct.TYPE_6__ = type { %union.acpi_operand_object* }
%struct.acpi_namespace_node = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<Null Object>\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<Parser> \00", align 1
@ACPI_TYPE_LOCAL_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" Type %X [Invalid Type]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%X \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c" Uninitialized WHERE pointer\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unknown index target type\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Uninitialized reference subobject pointer\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%2.2X\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"<Obj>          \00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"<Not a valid ACPI Object Descriptor> [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_internal_object(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %4, align 8
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %7 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %union.acpi_operand_object* %6)
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %188

12:                                               ; preds = %2
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %14 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %13)
  switch i32 %14, label %182 [
    i32 138, label %15
    i32 140, label %17
    i32 139, label %22
  ]

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %186

17:                                               ; preds = %12
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_namespace_node*
  %20 = bitcast %struct.acpi_namespace_node* %19 to %union.acpi_operand_object*
  %21 = call i32 @acpi_db_decode_node(%union.acpi_operand_object* %20)
  br label %186

22:                                               ; preds = %12
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ACPI_TYPE_LOCAL_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %188

33:                                               ; preds = %22
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %177 [
    i32 129, label %38
  ]

38:                                               ; preds = %33
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %40 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %39)
  %41 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %170 [
    i32 134, label %46
    i32 137, label %70
    i32 135, label %94
    i32 132, label %134
    i32 133, label %162
    i32 136, label %168
    i32 131, label %168
  ]

46:                                               ; preds = %38
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %53 = icmp ne %struct.acpi_walk_state* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_8__*
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %63, align 8
  store %union.acpi_operand_object* %64, %union.acpi_operand_object** %3, align 8
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %66 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %union.acpi_operand_object* %65)
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %68 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %67)
  br label %69

69:                                               ; preds = %54, %46
  br label %176

70:                                               ; preds = %38
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %77 = icmp ne %struct.acpi_walk_state* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %87, align 8
  store %union.acpi_operand_object* %88, %union.acpi_operand_object** %3, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %90 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %union.acpi_operand_object* %89)
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %92 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %91)
  br label %93

93:                                               ; preds = %78, %70
  br label %176

94:                                               ; preds = %38
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %131 [
    i32 130, label %99
    i32 128, label %110
  ]

99:                                               ; preds = %94
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %102, align 8
  %104 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %union.acpi_operand_object* %103)
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %107, align 8
  %109 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %108)
  br label %133

110:                                              ; preds = %94
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %113, align 8
  %115 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %union.acpi_operand_object** %114)
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_8__*
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  %119 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %118, align 8
  %120 = icmp ne %union.acpi_operand_object** %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  %122 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %130

123:                                              ; preds = %110
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_8__*
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %126, align 8
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %127, align 8
  %129 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %128)
  br label %130

130:                                              ; preds = %123, %121
  br label %133

131:                                              ; preds = %94
  %132 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %130, %99
  br label %176

134:                                              ; preds = %38
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_8__*
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %137, align 8
  %139 = icmp ne %union.acpi_operand_object* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %176

142:                                              ; preds = %134
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %144 = bitcast %union.acpi_operand_object* %143 to %struct.TYPE_8__*
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %145, align 8
  %147 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %146)
  switch i32 %147, label %160 [
    i32 140, label %148
    i32 139, label %154
  ]

148:                                              ; preds = %142
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %150 = bitcast %union.acpi_operand_object* %149 to %struct.TYPE_8__*
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %151, align 8
  %153 = call i32 @acpi_db_decode_node(%union.acpi_operand_object* %152)
  br label %161

154:                                              ; preds = %142
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %156 = bitcast %union.acpi_operand_object* %155 to %struct.TYPE_8__*
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %157, align 8
  %159 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %158)
  br label %161

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %154, %148
  br label %176

162:                                              ; preds = %38
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %164 = bitcast %union.acpi_operand_object* %163 to %struct.TYPE_8__*
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %165, align 8
  %167 = call i32 @acpi_db_decode_node(%union.acpi_operand_object* %166)
  br label %176

168:                                              ; preds = %38, %38
  %169 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %176

170:                                              ; preds = %38
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %172 = bitcast %union.acpi_operand_object* %171 to %struct.TYPE_8__*
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170, %168, %162, %161, %140, %133, %93, %69
  br label %181

177:                                              ; preds = %33
  %178 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %179 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %180 = call i32 @acpi_db_decode_internal_object(%union.acpi_operand_object* %179)
  br label %181

181:                                              ; preds = %177, %176
  br label %186

182:                                              ; preds = %12
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %184 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %183)
  %185 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %182, %181, %17, %15
  %187 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %30, %10
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_db_decode_node(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_db_decode_internal_object(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
