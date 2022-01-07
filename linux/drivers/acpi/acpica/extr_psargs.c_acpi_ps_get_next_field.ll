; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.acpi_parse_state = type { i32* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ps_get_next_field = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@AML_BUFFER_OP = common dso_local global i32 0, align 4
@AML_INT_BYTELIST_OP = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@acpi_gbl_current_inline_comment = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_parse_object* (%struct.acpi_parse_state*)* @acpi_ps_get_next_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  %3 = alloca %struct.acpi_parse_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %3, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %6, align 8
  %15 = load i32, i32* @ps_get_next_field, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %18 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %17)
  %19 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ACPI_GET8(i32* %24)
  switch i32 %25, label %46 [
    i32 134, label %26
    i32 137, label %31
    i32 136, label %36
    i32 135, label %41
  ]

26:                                               ; preds = %1
  store i32 129, i32* %7, align 4
  %27 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %28, align 8
  br label %47

31:                                               ; preds = %1
  store i32 133, i32* %7, align 4
  %32 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %33, align 8
  br label %47

36:                                               ; preds = %1
  store i32 132, i32* %7, align 4
  %37 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %38, align 8
  br label %47

41:                                               ; preds = %1
  store i32 131, i32* %7, align 4
  %42 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  br label %47

46:                                               ; preds = %1
  store i32 130, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %41, %36, %31, %26
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %48, i32* %49)
  store %union.acpi_parse_object* %50, %union.acpi_parse_object** %5, align 8
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %52 = icmp ne %union.acpi_parse_object* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call i32 @return_PTR(%union.acpi_parse_object* null)
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %57 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %56)
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %261 [
    i32 130, label %59
    i32 129, label %81
    i32 133, label %88
    i32 131, label %88
    i32 132, label %138
  ]

59:                                               ; preds = %55
  %60 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ACPI_MOVE_32_TO_32(i32* %8, i32* %62)
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @acpi_ps_set_name(%union.acpi_parse_object* %64, i32 %65)
  %67 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %68 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %69, align 8
  %73 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %74 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %73)
  %75 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %76 = call i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %75)
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %78 = bitcast %union.acpi_parse_object* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i8* %76, i8** %80, align 8
  br label %262

81:                                               ; preds = %55
  %82 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %83 = call i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %82)
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %85 = bitcast %union.acpi_parse_object* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 8
  br label %262

88:                                               ; preds = %55, %55
  %89 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ACPI_GET8(i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %94, align 8
  %97 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %98 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ACPI_GET8(i32* %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %102 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %102, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %107 = bitcast %union.acpi_parse_object* %106 to %struct.TYPE_8__*
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 %110, 8
  %112 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %113 = bitcast %union.acpi_parse_object* %112 to %struct.TYPE_8__*
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %120, label %137

120:                                              ; preds = %88
  %121 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %122 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @ACPI_GET8(i32* %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %126 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %126, align 8
  %129 = load i32, i32* %11, align 4
  %130 = shl i32 %129, 16
  %131 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %132 = bitcast %union.acpi_parse_object* %131 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %120, %88
  br label %262

138:                                              ; preds = %55
  %139 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %140 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %4, align 8
  %142 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %143 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ACPI_GET8(i32* %144)
  %146 = load i32, i32* @AML_BUFFER_OP, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %240

148:                                              ; preds = %138
  %149 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %150 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %150, align 8
  %153 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %154 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %153)
  %155 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %156 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %13, align 8
  %158 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %159 = call i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %158)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %13, align 8
  %165 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %166 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %165)
  %167 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %168 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = icmp ult i32* %169, %170
  br i1 %171, label %172, label %236

172:                                              ; preds = %148
  %173 = load i32, i32* @AML_INT_BYTELIST_OP, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %173, i32* %174)
  store %union.acpi_parse_object* %175, %union.acpi_parse_object** %6, align 8
  %176 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %177 = icmp ne %union.acpi_parse_object* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %172
  %179 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %180 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %179)
  %181 = call i32 @return_PTR(%union.acpi_parse_object* null)
  br label %182

182:                                              ; preds = %178, %172
  %183 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %184 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @ACPI_GET8(i32* %185)
  store i32 %186, i32* %7, align 4
  %187 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %188 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %188, align 8
  %191 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %192 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %191)
  %193 = load i32, i32* %7, align 4
  switch i32 %193, label %221 [
    i32 139, label %194
    i32 128, label %203
    i32 138, label %212
  ]

194:                                              ; preds = %182
  %195 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %196 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @ACPI_GET8(i32* %197)
  store i32 %198, i32* %14, align 4
  %199 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %200 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32* %202, i32** %200, align 8
  br label %222

203:                                              ; preds = %182
  %204 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %205 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @ACPI_GET16(i32* %206)
  store i32 %207, i32* %14, align 4
  %208 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %209 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32* %211, i32** %209, align 8
  br label %222

212:                                              ; preds = %182
  %213 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %214 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @ACPI_GET32(i32* %215)
  store i32 %216, i32* %14, align 4
  %217 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %218 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  store i32* %220, i32** %218, align 8
  br label %222

221:                                              ; preds = %182
  store i32 0, i32* %14, align 4
  br label %222

222:                                              ; preds = %221, %212, %203, %194
  %223 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %224 = call i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state* %223)
  %225 = load i32, i32* %14, align 4
  %226 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %227 = bitcast %union.acpi_parse_object* %226 to %struct.TYPE_6__*
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  store i32 %225, i32* %229, align 8
  %230 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %231 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %234 = bitcast %union.acpi_parse_object* %233 to %struct.TYPE_6__*
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i32* %232, i32** %235, align 8
  br label %236

236:                                              ; preds = %222, %148
  %237 = load i32*, i32** %13, align 8
  %238 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %239 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %238, i32 0, i32 0
  store i32* %237, i32** %239, align 8
  br label %257

240:                                              ; preds = %138
  %241 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %242 = load i32*, i32** %4, align 8
  %243 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %241, i32* %242)
  store %union.acpi_parse_object* %243, %union.acpi_parse_object** %6, align 8
  %244 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %245 = icmp ne %union.acpi_parse_object* %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %240
  %247 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %248 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %247)
  %249 = call i32 @return_PTR(%union.acpi_parse_object* null)
  br label %250

250:                                              ; preds = %246, %240
  %251 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %252 = call i32 @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %251)
  %253 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %254 = bitcast %union.acpi_parse_object* %253 to %struct.TYPE_8__*
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  store i32 %252, i32* %256, align 4
  br label %257

257:                                              ; preds = %250, %236
  %258 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %259 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %260 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %258, %union.acpi_parse_object* %259)
  br label %262

261:                                              ; preds = %55
  br label %262

262:                                              ; preds = %261, %257, %137, %81, %59
  %263 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %264 = call i32 @return_PTR(%union.acpi_parse_object* %263)
  %265 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  ret %union.acpi_parse_object* %265
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ASL_CV_CAPTURE_COMMENTS_ONLY(%struct.acpi_parse_state*) #1

declare dso_local i32 @ACPI_GET8(i32*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32, i32*) #1

declare dso_local i32 @return_PTR(%union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32*) #1

declare dso_local i32 @acpi_ps_set_name(%union.acpi_parse_object*, i32) #1

declare dso_local i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state*) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_GET16(i32*) #1

declare dso_local i32 @ACPI_GET32(i32*) #1

declare dso_local i32 @acpi_ps_get_next_namestring(%struct.acpi_parse_state*) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
