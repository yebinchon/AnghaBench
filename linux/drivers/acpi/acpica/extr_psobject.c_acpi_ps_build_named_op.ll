; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psobject.c_acpi_ps_build_named_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psobject.c_acpi_ps_build_named_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32*, i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %union.acpi_parse_object* }
%struct.TYPE_6__ = type { i64, i32*, i32 }

@AE_OK = common dso_local global i64 0, align 8
@ps_build_named_op = common dso_local global i32 0, align 4
@ARGP_NAME = common dso_local global i64 0, align 8
@AE_AML_NO_OPERAND = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"During name lookup/catalog\00", align 1
@AE_CTRL_PARSE_CONTINUE = common dso_local global i64 0, align 8
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_CTRL_PARSE_PENDING = common dso_local global i64 0, align 8
@AML_REGION_OP = common dso_local global i64 0, align 8
@AML_DATA_REGION_OP = common dso_local global i64 0, align 8
@acpi_gbl_current_inline_comment = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ps_build_named_op(%struct.acpi_walk_state* %0, i32* %1, %union.acpi_parse_object* %2, %union.acpi_parse_object** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca %union.acpi_parse_object**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %8, align 8
  store %union.acpi_parse_object** %3, %union.acpi_parse_object*** %9, align 8
  %12 = load i64, i64* @AE_OK, align 8
  store i64 %12, i64* %10, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %11, align 8
  %13 = load i32, i32* @ps_build_named_op, align 4
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %struct.acpi_walk_state* %14)
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %17 = bitcast %union.acpi_parse_object* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %19, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 11
  store i64 0, i64* %22, align 8
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %61, %4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @GET_CURRENT_ARG_TYPE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @GET_CURRENT_ARG_TYPE(i32 %38)
  %40 = load i64, i64* @ARGP_NAME, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i1 [ false, %29 ], [ %41, %35 ]
  br i1 %43, label %44, label %69

44:                                               ; preds = %42
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %46 = call i32 @ASL_CV_CAPTURE_COMMENTS(%struct.acpi_walk_state* %45)
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 4
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @GET_CURRENT_ARG_TYPE(i32 %52)
  %54 = call i64 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %47, i32* %49, i64 %53, %union.acpi_parse_object** %11)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @ACPI_FAILURE(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @return_ACPI_STATUS(i64 %59)
  br label %61

61:                                               ; preds = %58, %44
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %63 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %64 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %62, %union.acpi_parse_object* %63)
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @INCREMENT_ARG_LIST(i32 %67)
  br label %29

69:                                               ; preds = %42
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %71 = call i32 @ASL_CV_CAPTURE_COMMENTS(%struct.acpi_walk_state* %70)
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @GET_CURRENT_ARG_TYPE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i64, i64* @AE_AML_NO_OPERAND, align 8
  %79 = call i32 @return_ACPI_STATUS(i64 %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @INCREMENT_ARG_LIST(i32 %83)
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 1
  %89 = load i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %88, align 8
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %91 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %92 = call i64 %89(%struct.acpi_walk_state* %90, %union.acpi_parse_object** %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @ACPI_FAILURE(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %80
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @AE_INFO, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([27 x i8]* @.str to i32))
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @return_ACPI_STATUS(i64 %105)
  br label %107

107:                                              ; preds = %104, %80
  %108 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %109 = load %union.acpi_parse_object*, %union.acpi_parse_object** %108, align 8
  %110 = icmp ne %union.acpi_parse_object* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %113 = call i32 @return_ACPI_STATUS(i64 %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %116 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %117 = load %union.acpi_parse_object*, %union.acpi_parse_object** %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %115, %union.acpi_parse_object* %117, i64 %118)
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @ACPI_FAILURE(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* @AE_CTRL_PENDING, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* @AE_CTRL_PARSE_PENDING, align 8
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @return_ACPI_STATUS(i64 %130)
  br label %132

132:                                              ; preds = %129, %114
  %133 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %134 = load %union.acpi_parse_object*, %union.acpi_parse_object** %133, align 8
  %135 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %136 = bitcast %union.acpi_parse_object* %135 to %struct.TYPE_5__*
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 10
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %union.acpi_parse_object*, %union.acpi_parse_object** %138, align 8
  %140 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %134, %union.acpi_parse_object* %139)
  %141 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %142 = load %union.acpi_parse_object*, %union.acpi_parse_object** %141, align 8
  %143 = bitcast %union.acpi_parse_object* %142 to %struct.TYPE_5__*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AML_REGION_OP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %132
  %149 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %150 = load %union.acpi_parse_object*, %union.acpi_parse_object** %149, align 8
  %151 = bitcast %union.acpi_parse_object* %150 to %struct.TYPE_5__*
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AML_DATA_REGION_OP, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %148, %132
  %157 = load i32*, i32** %7, align 8
  %158 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %159 = load %union.acpi_parse_object*, %union.acpi_parse_object** %158, align 8
  %160 = bitcast %union.acpi_parse_object* %159 to %struct.TYPE_6__*
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32* %157, i32** %161, align 8
  %162 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %163 = load %union.acpi_parse_object*, %union.acpi_parse_object** %162, align 8
  %164 = bitcast %union.acpi_parse_object* %163 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %156, %148
  %167 = load i64, i64* @AE_OK, align 8
  %168 = call i32 @return_ACPI_STATUS(i64 %167)
  %169 = load i64, i64* %5, align 8
  ret i64 %169
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i32 @ASL_CV_CAPTURE_COMMENTS(%struct.acpi_walk_state*) #1

declare dso_local i64 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, i32*, i64, %union.acpi_parse_object**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
