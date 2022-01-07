; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbxface.c_acpi_db_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbxface.c_acpi_db_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %union.acpi_parse_object*, i32 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_db_thread_id = common dso_local global i64 0, align 8
@acpi_gbl_abort_method = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AE_ABORT_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"***Break*** at AML offset %X\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@acpi_gbl_cm_single_step = common dso_local global i8* null, align 8
@acpi_gbl_step_to_next_call = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"***UserBreakpoint*** at AML offset %X\0A\00", align 1
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@acpi_gbl_db_output_to_file = common dso_local global i64 0, align 8
@acpi_dbg_level = common dso_local global i64 0, align 8
@ACPI_LV_PARSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\0AAML Debug: Next AML Opcode to execute:\0A\00", align 1
@ACPI_LV_FUNCTIONS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"AML Opcode: %4.4X %s\0A\00", align 1
@AML_IF_OP = common dso_local global i64 0, align 8
@AML_WHILE_OP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Predicate = [True], IF block was executed\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Predicate = [False], Skipping IF block\0A\00", align 1
@AML_ELSE_OP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Predicate = [False], ELSE block was executed\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AML_INT_METHODCALL_OP = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_db_single_step(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %14 = load i64, i64* @acpi_gbl_db_thread_id, align 8
  %15 = call i64 (...) @acpi_os_get_thread_id()
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %221

19:                                               ; preds = %3
  %20 = load i8*, i8** @acpi_gbl_abort_method, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** @acpi_gbl_abort_method, align 8
  %24 = load i32, i32* @AE_ABORT_METHOD, align 4
  store i32 %24, i32* %4, align 4
  br label %221

25:                                               ; preds = %19
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ACPI_PTR_DIFF(i32 %29, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %25
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i64, i64* %11, align 8
  %47 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** @acpi_gbl_cm_single_step, align 8
  %49 = load i8*, i8** @FALSE, align 8
  store i8* %49, i8** @acpi_gbl_step_to_next_call, align 8
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %71

52:                                               ; preds = %39, %25
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i64, i64* %11, align 8
  %65 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i8*, i8** @TRUE, align 8
  store i8* %66, i8** @acpi_gbl_cm_single_step, align 8
  %67 = load i8*, i8** @FALSE, align 8
  store i8* %67, i8** @acpi_gbl_step_to_next_call, align 8
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %57, %52
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %73 = bitcast %union.acpi_parse_object* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @AE_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %221

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  switch i64 %81, label %84 [
    i64 128, label %82
    i64 129, label %82
  ]

82:                                               ; preds = %80, %80
  %83 = load i32, i32* @AE_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %221

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* @acpi_gbl_db_output_to_file, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** @acpi_gbl_cm_single_step, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @acpi_dbg_level, align 8
  %93 = load i64, i64* @ACPI_LV_PARSE, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %184

96:                                               ; preds = %91, %88, %85
  %97 = load i64, i64* @acpi_gbl_db_output_to_file, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @acpi_dbg_level, align 8
  %101 = load i64, i64* @ACPI_LV_PARSE, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %96
  %105 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i64, i64* @acpi_dbg_level, align 8
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* @ACPI_LV_PARSE, align 8
  %109 = load i64, i64* @ACPI_LV_FUNCTIONS, align 8
  %110 = or i64 %108, %109
  %111 = xor i64 %110, -1
  %112 = load i64, i64* @acpi_dbg_level, align 8
  %113 = and i64 %112, %111
  store i64 %113, i64* @acpi_dbg_level, align 8
  %114 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %115 = bitcast %union.acpi_parse_object* %114 to %struct.TYPE_8__*
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load %union.acpi_parse_object*, %union.acpi_parse_object** %116, align 8
  store %union.acpi_parse_object* %117, %union.acpi_parse_object** %8, align 8
  %118 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %119 = bitcast %union.acpi_parse_object* %118 to %struct.TYPE_8__*
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %120, align 8
  %121 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %122 = bitcast %union.acpi_parse_object* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %126 = bitcast %union.acpi_parse_object* %125 to %struct.TYPE_8__*
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @acpi_ps_get_opcode_name(i64 %128)
  %130 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %124, i32 %129)
  %131 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %132 = bitcast %union.acpi_parse_object* %131 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AML_IF_OP, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %106
  %138 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %139 = bitcast %union.acpi_parse_object* %138 to %struct.TYPE_8__*
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AML_WHILE_OP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %137, %106
  %145 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %146 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %156

154:                                              ; preds = %144
  %155 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %152
  br label %167

157:                                              ; preds = %137
  %158 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %159 = bitcast %union.acpi_parse_object* %158 to %struct.TYPE_8__*
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AML_ELSE_OP, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %157
  br label %167

167:                                              ; preds = %166, %156
  %168 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %169 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %170 = bitcast %union.acpi_parse_object* %169 to %struct.TYPE_8__*
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store %union.acpi_parse_object* %168, %union.acpi_parse_object** %171, align 8
  %172 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i64, i64* @acpi_gbl_db_output_to_file, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %167
  %176 = load i64, i64* @acpi_dbg_level, align 8
  %177 = load i64, i64* @ACPI_LV_PARSE, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175, %167
  %181 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i64, i64* %10, align 8
  store i64 %183, i64* @acpi_dbg_level, align 8
  br label %184

184:                                              ; preds = %182, %91
  %185 = load i8*, i8** @acpi_gbl_cm_single_step, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* @AE_OK, align 4
  store i32 %188, i32* %4, align 4
  br label %221

189:                                              ; preds = %184
  %190 = load i8*, i8** @acpi_gbl_step_to_next_call, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %194 = bitcast %union.acpi_parse_object* %193 to %struct.TYPE_8__*
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AML_INT_METHODCALL_OP, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @AE_OK, align 4
  store i32 %200, i32* %4, align 4
  br label %221

201:                                              ; preds = %192
  %202 = load i8*, i8** @FALSE, align 8
  store i8* %202, i8** @acpi_gbl_step_to_next_call, align 8
  br label %203

203:                                              ; preds = %201, %189
  %204 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %205 = bitcast %union.acpi_parse_object* %204 to %struct.TYPE_8__*
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AML_INT_METHODCALL_OP, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i8*, i8** @FALSE, align 8
  store i8* %211, i8** @acpi_gbl_cm_single_step, align 8
  %212 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %213 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %212, i32 0, i32 0
  store i64 1, i64* %213, align 8
  br label %214

214:                                              ; preds = %210, %203
  %215 = call i32 (...) @acpi_ex_exit_interpreter()
  %216 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %217 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %218 = call i32 @acpi_db_start_command(%struct.acpi_walk_state* %216, %union.acpi_parse_object* %217)
  store i32 %218, i32* %9, align 4
  %219 = call i32 (...) @acpi_ex_enter_interpreter()
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %214, %199, %187, %82, %78, %22, %17
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i64 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i64) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_db_start_command(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
