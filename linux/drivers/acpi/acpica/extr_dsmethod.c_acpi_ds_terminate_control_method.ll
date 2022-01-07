; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_terminate_control_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_terminate_control_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@ds_terminate_control_method = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_METHOD_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_METHOD_MODIFIED_NAMESPACE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid zero thread count in method\00", align 1
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"*** Completed execution of one thread, %u threads remaining\0A\00", align 1
@ACPI_METHOD_SERIALIZED_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Marking method %4.4s as Serialized because of AE_ALREADY_EXISTS error\00", align 1
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@ACPI_METHOD_IGNORE_SYNC_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %4, align 8
  %5 = load i32, i32* @ds_terminate_control_method, align 4
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %5, %struct.acpi_walk_state* %6)
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = icmp ne %struct.acpi_walk_state* %13, null
  br i1 %14, label %15, label %112

15:                                               ; preds = %12
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %17 = call i32 @acpi_ds_method_data_delete_all(%struct.acpi_walk_state* %16)
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_11__*
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %15
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_11__*
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = call i32 (...) @acpi_ex_exit_interpreter()
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = call i32 @acpi_ns_delete_namespace_subtree(%struct.TYPE_12__* %35)
  %37 = call i32 (...) @acpi_ex_enter_interpreter()
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_11__*
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ACPI_METHOD_MODIFIED_NAMESPACE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %31
  %46 = call i32 (...) @acpi_ex_exit_interpreter()
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_11__*
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @acpi_ns_delete_namespace_by_owner(i32 %50)
  %52 = call i32 (...) @acpi_ex_enter_interpreter()
  %53 = load i32, i32* @ACPI_METHOD_MODIFIED_NAMESPACE, align 4
  %54 = xor i32 %53, -1
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %45, %31
  br label %61

61:                                               ; preds = %60, %25, %15
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_11__*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_11__*
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %67
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_11__*
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @acpi_os_release_mutex(i32 %102)
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %84, %67
  br label %111

111:                                              ; preds = %110, %61
  br label %112

112:                                              ; preds = %111, %12
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %114 = bitcast %union.acpi_operand_object* %113 to %struct.TYPE_11__*
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_11__*
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  br label %127

124:                                              ; preds = %112
  %125 = load i32, i32* @AE_INFO, align 4
  %126 = call i32 @ACPI_ERROR(i32 ptrtoint ([36 x i8]* @.str to i32))
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %129 = bitcast %union.acpi_operand_object* %128 to %struct.TYPE_11__*
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_11__*
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ACPI_DEBUG_PRINT(i32 %138)
  br label %194

140:                                              ; preds = %127
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_11__*
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ACPI_METHOD_SERIALIZED_PENDING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %180

148:                                              ; preds = %140
  %149 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %150 = icmp ne %struct.acpi_walk_state* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %153 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @ACPI_INFO(i8* %159)
  br label %161

161:                                              ; preds = %151, %148
  %162 = load i32, i32* @ACPI_METHOD_SERIALIZED_PENDING, align 4
  %163 = xor i32 %162, -1
  %164 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %165 = bitcast %union.acpi_operand_object* %164 to %struct.TYPE_11__*
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %170 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %171 = or i32 %169, %170
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_11__*
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 8
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %178 = bitcast %union.acpi_operand_object* %177 to %struct.TYPE_11__*
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %161, %140
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %182 = bitcast %union.acpi_operand_object* %181 to %struct.TYPE_11__*
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %190 = bitcast %union.acpi_operand_object* %189 to %struct.TYPE_11__*
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = call i32 @acpi_ut_release_owner_id(i32* %191)
  br label %193

193:                                              ; preds = %188, %180
  br label %194

194:                                              ; preds = %193, %133
  %195 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %196 = bitcast %union.acpi_operand_object* %195 to %struct.TYPE_11__*
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to %struct.acpi_namespace_node*
  %200 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %201 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %202 = call i32 @acpi_ex_stop_trace_method(%struct.acpi_namespace_node* %199, %union.acpi_operand_object* %200, %struct.acpi_walk_state* %201)
  %203 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_data_delete_all(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ns_delete_namespace_subtree(%struct.TYPE_12__*) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ns_delete_namespace_by_owner(i32) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

declare dso_local i32 @acpi_ut_release_owner_id(i32*) #1

declare dso_local i32 @acpi_ex_stop_trace_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
