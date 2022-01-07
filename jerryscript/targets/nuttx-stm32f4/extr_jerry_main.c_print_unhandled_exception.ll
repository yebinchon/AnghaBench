; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_print_unhandled_exception.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_print_unhandled_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.print_unhandled_exception.msg = private unnamed_addr constant [25 x i8] c"[Error message too long]\00", align 16
@JERRY_FEATURE_ERROR_MESSAGES = common dso_local global i32 0, align 4
@JERRY_ERROR_SYNTAX = common dso_local global i64 0, align 8
@SYNTAX_ERROR_CONTEXT_SIZE = common dso_local global i64 0, align 8
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Script Error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_unhandled_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_unhandled_exception(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca [25 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @jerry_value_is_error(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @jerry_get_value_from_error(i32 %22, i32 0)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @jerry_value_to_string(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @jerry_get_utf8_string_size(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @jerry_release_value(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 256
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = bitcast [25 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.print_unhandled_exception.msg, i32 0, i32 0), i64 25, i1 false)
  store i32 24, i32* %4, align 4
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  br label %188

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @jerry_string_to_utf8_char_buffer(i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* @JERRY_FEATURE_ERROR_MESSAGES, align 4
  %52 = call i64 @jerry_is_feature_enabled(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %187

54:                                               ; preds = %38
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @jerry_get_error_type(i32 %55)
  %57 = load i64, i64* @JERRY_ERROR_SYNTAX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %187

59:                                               ; preds = %54
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8* %64, i8** %13, align 8
  br label %65

65:                                               ; preds = %108, %59
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 91
  br i1 %73, label %74, label %107

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 60
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %111

82:                                               ; preds = %74
  %83 = load i8*, i8** %13, align 8
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %95, %82
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %13, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 58
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ false, %84 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %13, align 8
  br label %84

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  store i8* %99, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i64 @str_to_uint(i8* %101, i8** %13)
  store i64 %102, i64* %9, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @str_to_uint(i8* %105, i8** null)
  store i64 %106, i64* %10, align 8
  br label %111

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %13, align 8
  br label %65

111:                                              ; preds = %98, %81, %65
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %186

114:                                              ; preds = %111
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %186

117:                                              ; preds = %114
  store i64 1, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %118 = load i8*, i8** %12, align 8
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %11, align 8
  %120 = call i8* @read_file(i8* %119, i64* %17)
  store i8* %120, i8** %18, align 8
  %121 = load i8*, i8** %12, align 8
  store i8 58, i8* %121, align 1
  br label %122

122:                                              ; preds = %170, %117
  %123 = load i8*, i8** %18, align 8
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %122
  %130 = load i8*, i8** %18, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 10
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i64, i64* %14, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %14, align 8
  br label %139

139:                                              ; preds = %136, %129
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @SYNTAX_ERROR_CONTEXT_SIZE, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %14, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %14, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load i64, i64* @SYNTAX_ERROR_CONTEXT_SIZE, align 8
  %152 = icmp sle i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %139
  store i32 1, i32* %15, align 4
  br label %154

154:                                              ; preds = %153, %147, %143
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %173

159:                                              ; preds = %154
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = load i64, i64* %16, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %162, %159
  %171 = load i64, i64* %16, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %16, align 8
  br label %122

173:                                              ; preds = %158, %122
  %174 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %175 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %180, %173
  %177 = load i64, i64* %10, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %10, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %182 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %176

183:                                              ; preds = %176
  %184 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %185 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %114, %111
  br label %187

187:                                              ; preds = %186, %54, %38
  br label %188

188:                                              ; preds = %187, %32
  %189 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %191 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %190)
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @jerry_release_value(i32 %192)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_get_value_from_error(i32, i32) #1

declare dso_local i32 @jerry_value_to_string(i32) #1

declare dso_local i32 @jerry_get_utf8_string_size(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @jerry_string_to_utf8_char_buffer(i32, i8*, i32) #1

declare dso_local i64 @jerry_is_feature_enabled(i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i64 @str_to_uint(i8*, i8**) #1

declare dso_local i8* @read_file(i8*, i64*) #1

declare dso_local i32 @jerry_port_log(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
