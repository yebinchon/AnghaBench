; ModuleID = '/home/carl/AnghaBench/jq/src/extr_main.c_process.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_main.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JQ_OK_NO_OUTPUT = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@RAW_OUTPUT = common dso_local global i32 0, align 4
@JV_KIND_STRING = common dso_local global i64 0, align 8
@ASCII_OUTPUT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@JV_PRINT_ASCII = common dso_local global i32 0, align 4
@JQ_OK = common dso_local global i32 0, align 4
@JV_KIND_FALSE = common dso_local global i64 0, align 8
@JV_KIND_NULL = common dso_local global i64 0, align 8
@JQ_OK_NULL_KIND = common dso_local global i32 0, align 4
@SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\1E\00", align 1
@JV_PRINT_ISATTY = common dso_local global i32 0, align 4
@RAW_NO_LF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UNBUFFERED_OUTPUT = common dso_local global i32 0, align 4
@EXIT_STATUS_EXACT = common dso_local global i32 0, align 4
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JQ_ERROR_UNKNOWN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"jq: error: %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"jq: error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"jq: error (at %s): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"jq: error (at %s) (not a string): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @JQ_OK_NO_OUTPUT, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @jq_start(i32* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %106, %4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @jq_next(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = call i64 @jv_is_valid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %20
  %26 = load i32, i32* @options, align 4
  %27 = load i32, i32* @RAW_OUTPUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @jv_get_kind(i32 %31)
  %33 = load i64, i64* @JV_KIND_STRING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32, i32* @options, align 4
  %37 = load i32, i32* @ASCII_OUTPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @jv_copy(i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = load i32, i32* @JV_PRINT_ASCII, align 4
  %45 = call i32 @jv_dumpf(i32 %42, i32 %43, i32 %44)
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @jv_string_value(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @jv_copy(i32 %49)
  %51 = call i32 @jv_string_length_bytes(i32 %50)
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fwrite(i8* %48, i32 1, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* @JQ_OK, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @jv_free(i32 %56)
  br label %87

58:                                               ; preds = %30, %25
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @jv_get_kind(i32 %59)
  %61 = load i64, i64* @JV_KIND_FALSE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @jv_get_kind(i32 %64)
  %66 = load i64, i64* @JV_KIND_NULL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @JQ_OK_NULL_KIND, align 4
  store i32 %69, i32* %9, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @JQ_OK, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* @options, align 4
  %74 = load i32, i32* @SEQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @stdout, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @JV_PRINT_ISATTY, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @priv_fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @jv_dump(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %54
  %88 = load i32, i32* @options, align 4
  %89 = load i32, i32* @RAW_NO_LF, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @stdout, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @JV_PRINT_ISATTY, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @priv_fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* @options, align 4
  %100 = load i32, i32* @UNBUFFERED_OUTPUT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fflush(i32 %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %20

107:                                              ; preds = %20
  %108 = load i32*, i32** %5, align 8
  %109 = call i64 @jq_halted(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %172

111:                                              ; preds = %107
  %112 = load i32, i32* @EXIT_STATUS_EXACT, align 4
  %113 = load i32, i32* @options, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* @options, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @jq_get_exit_code(i32* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @jv_is_valid(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @JQ_OK, align 4
  store i32 %121, i32* %9, align 4
  br label %133

122:                                              ; preds = %111
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @jv_get_kind(i32 %123)
  %125 = load i64, i64* @JV_KIND_NUMBER, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @jv_number_value(i32 %128)
  store i32 %129, i32* %9, align 4
  br label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @JQ_ERROR_UNKNOWN, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %127
  br label %133

133:                                              ; preds = %132, %120
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @jv_free(i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @jq_get_error_message(i32* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i64 @jv_get_kind(i32 %138)
  %140 = load i64, i64* @JV_KIND_STRING, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load i32, i32* @stderr, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i8* @jv_string_value(i32 %144)
  %146 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  br label %167

147:                                              ; preds = %133
  %148 = load i32, i32* %12, align 4
  %149 = call i64 @jv_get_kind(i32 %148)
  %150 = load i64, i64* @JV_KIND_NULL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %166

153:                                              ; preds = %147
  %154 = load i32, i32* %12, align 4
  %155 = call i64 @jv_is_valid(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @jv_copy(i32 %158)
  %160 = call i32 @jv_dump_string(i32 %159, i32 0)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* @stderr, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i8* @jv_string_value(i32 %162)
  %164 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %157, %153
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %142
  %168 = load i32, i32* @stderr, align 4
  %169 = call i32 @fflush(i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @jv_free(i32 %170)
  br label %210

172:                                              ; preds = %107
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @jv_copy(i32 %173)
  %175 = call i64 @jv_invalid_has_msg(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %209

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @jv_copy(i32 %178)
  %180 = call i32 @jv_invalid_get_msg(i32 %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @jq_util_input_get_position(i32* %181)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @jv_get_kind(i32 %183)
  %185 = load i64, i64* @JV_KIND_STRING, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %177
  %188 = load i32, i32* @stderr, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i8* @jv_string_value(i32 %189)
  %191 = load i32, i32* %13, align 4
  %192 = call i8* @jv_string_value(i32 %191)
  %193 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %190, i8* %192)
  br label %203

194:                                              ; preds = %177
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @jv_dump_string(i32 %195, i32 0)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* @stderr, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i8* @jv_string_value(i32 %198)
  %200 = load i32, i32* %13, align 4
  %201 = call i8* @jv_string_value(i32 %200)
  %202 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %199, i8* %201)
  br label %203

203:                                              ; preds = %194, %187
  %204 = load i32, i32* @JQ_ERROR_UNKNOWN, align 4
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @jv_free(i32 %205)
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @jv_free(i32 %207)
  br label %209

209:                                              ; preds = %203, %172
  br label %210

210:                                              ; preds = %209, %167
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @jv_free(i32 %211)
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local i32 @jq_start(i32*, i32, i32) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jq_next(i32*) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_dumpf(i32, i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @priv_fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @jv_dump(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @jq_halted(i32*) #1

declare dso_local i32 @jq_get_exit_code(i32*) #1

declare dso_local i32 @jv_number_value(i32) #1

declare dso_local i32 @jq_get_error_message(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @jv_dump_string(i32, i32) #1

declare dso_local i64 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jq_util_input_get_position(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
