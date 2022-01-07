; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_init_aml_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_init_aml_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, i32, %struct.acpi_namespace_node*, i32, %struct.acpi_parse_state, i32*, i32, i32* }
%struct.acpi_parse_state = type { %struct.acpi_namespace_node*, %union.acpi_parse_object*, i32*, i32*, i32*, i32* }
%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_namespace_node*, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_evaluate_info = type { i32, i32 }

@ds_init_aml_walk = common dso_local global i32 0, align 4
@ACPI_WALK_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1, %struct.acpi_namespace_node* %2, i32* %3, i32 %4, %struct.acpi_evaluate_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_evaluate_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.acpi_parse_state*, align 8
  %18 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %9, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %10, align 8
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.acpi_evaluate_info* %5, %struct.acpi_evaluate_info** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 4
  store %struct.acpi_parse_state* %20, %struct.acpi_parse_state** %17, align 8
  %21 = load i32, i32* @ds_init_aml_walk, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %25, i32 0, i32 4
  store i32* %23, i32** %26, align 8
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %28, i32 0, i32 5
  store i32* %23, i32** %29, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %38, i32 0, i32 3
  store i32* %33, i32** %39, align 8
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %14, align 8
  %46 = icmp ne %struct.acpi_evaluate_info* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %7
  %48 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %14, align 8
  %49 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %14, align 8
  %54 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %53, i32 0, i32 0
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %47, %7
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 4
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %61 = call i32 @acpi_ps_init_scope(%struct.acpi_parse_state* %59, %union.acpi_parse_object* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i64 @ACPI_FAILURE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @return_ACPI_STATUS(i32 %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %70 = icmp ne %struct.acpi_namespace_node* %69, null
  br i1 %70, label %71, label %110

71:                                               ; preds = %68
  %72 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %74 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %74, i32 0, i32 0
  store %struct.acpi_namespace_node* %72, %struct.acpi_namespace_node** %75, align 8
  %76 = load i32, i32* @ACPI_WALK_METHOD, align 4
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %81 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 2
  store %struct.acpi_namespace_node* %79, %struct.acpi_namespace_node** %81, align 8
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %83 = call i32 @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %82)
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %85 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %87 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %89 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %86, i32 %87, %struct.acpi_walk_state* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i64 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %71
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @return_ACPI_STATUS(i32 %94)
  br label %96

96:                                               ; preds = %93, %71
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %98 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ACPI_METHOD_NUM_ARGS, align 4
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %102 = call i32 @acpi_ds_method_data_init_args(i32 %99, i32 %100, %struct.acpi_walk_state* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @ACPI_FAILURE(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  br label %109

109:                                              ; preds = %106, %96
  br label %168

110:                                              ; preds = %68
  %111 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %112 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %111, i32 0, i32 1
  %113 = load %union.acpi_parse_object*, %union.acpi_parse_object** %112, align 8
  store %union.acpi_parse_object* %113, %union.acpi_parse_object** %18, align 8
  br label %114

114:                                              ; preds = %126, %110
  %115 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  %116 = icmp ne %union.acpi_parse_object* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  %119 = bitcast %union.acpi_parse_object* %118 to %struct.TYPE_2__*
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %120, align 8
  %122 = icmp ne %struct.acpi_namespace_node* %121, null
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i1 [ false, %114 ], [ %123, %117 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  %128 = bitcast %union.acpi_parse_object* %127 to %struct.TYPE_2__*
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load %union.acpi_parse_object*, %union.acpi_parse_object** %129, align 8
  store %union.acpi_parse_object* %130, %union.acpi_parse_object** %18, align 8
  br label %114

131:                                              ; preds = %124
  %132 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  %133 = icmp ne %union.acpi_parse_object* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %136 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %135, i32 0, i32 0
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %136, align 8
  br label %144

137:                                              ; preds = %131
  %138 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  %139 = bitcast %union.acpi_parse_object* %138 to %struct.TYPE_2__*
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %140, align 8
  %142 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %143 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %142, i32 0, i32 0
  store %struct.acpi_namespace_node* %141, %struct.acpi_namespace_node** %143, align 8
  br label %144

144:                                              ; preds = %137, %134
  %145 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %146 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %145, i32 0, i32 0
  %147 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %146, align 8
  %148 = icmp ne %struct.acpi_namespace_node* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %151 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %150, i32 0, i32 0
  %152 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %151, align 8
  %153 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %17, align 8
  %154 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %153, i32 0, i32 0
  %155 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %154, align 8
  %156 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %159 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %152, i32 %157, %struct.acpi_walk_state* %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i64 @ACPI_FAILURE(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @return_ACPI_STATUS(i32 %164)
  br label %166

166:                                              ; preds = %163, %149
  br label %167

167:                                              ; preds = %166, %144
  br label %168

168:                                              ; preds = %167, %109
  %169 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @acpi_ds_init_callbacks(%struct.acpi_walk_state* %169, i32 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @return_ACPI_STATUS(i32 %172)
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ps_init_scope(%struct.acpi_parse_state*, %union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_data_init_args(i32, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_init_callbacks(%struct.acpi_walk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
