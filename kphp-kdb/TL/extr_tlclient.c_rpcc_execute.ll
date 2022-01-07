; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_rpcc_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_rpcc_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.connection = type { i32 }
%struct.tl_scheme_object = type { i32 }

@PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@RPC_REQ_RESULT = common dso_local global i32 0, align 4
@P = common dso_local global i64* null, align 8
@req_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"RPC_REQ_RESULT: req_id = %lld, expected req_id = %lld\0A\00", align 1
@unserialize_buff = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@compiler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unpack packet fail\0A\00", align 1
@scheme_filename = common dso_local global i32* null, align 8
@TL_SECTION_TYPES = common dso_local global i32 0, align 4
@typename = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RPC_REQ_ERROR = common dso_local global i32 0, align 4
@expect_input = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Warning: unserialize %d ints of result, but result contains %d ints.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"RPC_REQ_ERROR: req_id = %lld, expected req_id = %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tl_scheme_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PACKET_BUFFER_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %23, i32* %4, align 4
  br label %198

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RPC_REQ_RESULT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %167

28:                                               ; preds = %24
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load i64*, i64** @P, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @read_in(i32* %30, i64* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64*, i64** @P, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 3
  %40 = call i32 (i64*, ...) @memcpy(i64* %8, i64* %39, i32 8)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @req_id, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @req_id, align 8
  %47 = call i32 @kprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46)
  store i32 0, i32* %4, align 4
  br label %198

48:                                               ; preds = %28
  %49 = call i32 @tl_string_buffer_clear(%struct.TYPE_6__* @unserialize_buff)
  %50 = call i32 @tl_compiler_clear_errors(i32* @compiler)
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @unpack_packet(i32* @compiler, i32 %51, i32** %9, i32* %10)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = call i32 (...) @log_errors()
  %56 = call i32 @log_str(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %164

57:                                               ; preds = %48
  %58 = load i32*, i32** @scheme_filename, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  store %struct.tl_scheme_object* null, %struct.tl_scheme_object** %11, align 8
  %61 = call i32 @tl_compiler_clear_errors(i32* @compiler)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @TL_SECTION_TYPES, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* @typename, align 4
  %67 = call i32 @tl_expression_unserialize(i32* @compiler, i32* %62, i32 %63, i32 %65, i32 %66, %struct.tl_scheme_object** %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %11, align 8
  %72 = icmp ne %struct.tl_scheme_object* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %11, align 8
  %75 = call i8* @get_raw_scheme(%struct.tl_scheme_object* %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** @scheme_filename, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @fprintf(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %11, align 8
  %84 = call i32 @tl_scheme_object_free(%struct.tl_scheme_object* %83)
  br label %85

85:                                               ; preds = %82, %70, %60
  %86 = load i32*, i32** @scheme_filename, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32* null, i32** @scheme_filename, align 8
  br label %163

88:                                               ; preds = %57
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RPC_REQ_ERROR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 1
  %100 = mul nsw i32 4, %99
  store i32 %100, i32* %14, align 4
  %101 = load i64*, i64** @P, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i64*, ...) @memcpy(i64* %102, i32* %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 24
  %109 = call i32 @rpcc_log_error(i32 %108)
  store i32 1, i32* @expect_input, align 4
  store i32 0, i32* %4, align 4
  br label %198

110:                                              ; preds = %91, %88
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @typename, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @params, i32 0, i32 1), align 4
  %115 = call i32 @tl_unserialize_rpc_function_result(i32* @compiler, %struct.TYPE_6__* @unserialize_buff, i32* %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 (...) @log_errors()
  br label %162

120:                                              ; preds = %110
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @kprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %128)
  br label %130

130:                                              ; preds = %124, %120
  %131 = call i32 @tl_string_buffer_append_char(%struct.TYPE_6__* @unserialize_buff, i32 0)
  %132 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unserialize_buff, i32 0, i32 0), align 8
  store i8* %132, i8** %16, align 8
  br label %133

133:                                              ; preds = %157, %130
  %134 = load i8*, i8** %16, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load i8*, i8** %16, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %149, %142
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @params, i32 0, i32 0), align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = call i32 @log_char(i8 signext 32)
  br label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %143

152:                                              ; preds = %143
  br label %157

153:                                              ; preds = %137
  %154 = load i8*, i8** %16, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @log_char(i8 signext %155)
  br label %157

157:                                              ; preds = %153, %152
  %158 = load i8*, i8** %16, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %16, align 8
  br label %133

160:                                              ; preds = %133
  %161 = call i32 @log_char(i8 signext 10)
  br label %162

162:                                              ; preds = %160, %118
  br label %163

163:                                              ; preds = %162, %85
  br label %164

164:                                              ; preds = %163, %54
  %165 = call i32 @cstr_free(i32* @typename)
  store i32 1, i32* @expect_input, align 4
  br label %166

166:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %198

167:                                              ; preds = %24
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @RPC_REQ_ERROR, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %167
  %172 = load %struct.connection*, %struct.connection** %5, align 8
  %173 = getelementptr inbounds %struct.connection, %struct.connection* %172, i32 0, i32 0
  %174 = load i64*, i64** @P, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @read_in(i32* %173, i64* %174, i32 %175)
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i64*, i64** @P, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  %183 = call i32 (i64*, ...) @memcpy(i64* %18, i64* %182, i32 8)
  %184 = load i64, i64* %18, align 8
  %185 = load i64, i64* @req_id, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %171
  %188 = load i64, i64* %18, align 8
  %189 = load i64, i64* @req_id, align 8
  %190 = call i32 @kprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %188, i64 %189)
  store i32 0, i32* %4, align 4
  br label %198

191:                                              ; preds = %171
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @rpcc_log_error(i32 %192)
  br label %194

194:                                              ; preds = %191
  %195 = call i32 @cstr_free(i32* @typename)
  store i32 1, i32* @expect_input, align 4
  store i32 0, i32* %4, align 4
  br label %198

196:                                              ; preds = %167
  %197 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %194, %187, %166, %97, %44, %22
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @memcpy(i64*, ...) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

declare dso_local i32 @tl_string_buffer_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @tl_compiler_clear_errors(i32*) #1

declare dso_local i64 @unpack_packet(i32*, i32, i32**, i32*) #1

declare dso_local i32 @log_errors(...) #1

declare dso_local i32 @log_str(i8*) #1

declare dso_local i32 @tl_expression_unserialize(i32*, i32*, i32, i32, i32, %struct.tl_scheme_object**) #1

declare dso_local i8* @get_raw_scheme(%struct.tl_scheme_object*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @tl_scheme_object_free(%struct.tl_scheme_object*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rpcc_log_error(i32) #1

declare dso_local i32 @tl_unserialize_rpc_function_result(i32*, %struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @log_char(i8 signext) #1

declare dso_local i32 @cstr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
