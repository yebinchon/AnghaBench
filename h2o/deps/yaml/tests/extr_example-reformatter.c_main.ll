; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_example-reformatter.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_example-reformatter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32, i8*, i32, i8*, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--canonical\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--unicode\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"Unrecognized option: %s\0ATry `%s --help` for more information.\0A\00", align 1
@.str.7 = private unnamed_addr constant [241 x i8] c"%s [--canonical] [--unicode] <input >output\0Aor\0A%s -h | --help\0AReformat a YAML stream\0A\0AOptions:\0A-h, --help\09\09display this help and exit\0A-c, --canonical\09\09output in the canonical YAML format\0A-u, --unicode\09\09output unescaped non-ASCII characters\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@YAML_STREAM_END_EVENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"Memory error: Not enough memory for parsing\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Reader error: %s: #%X at %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Reader error: %s at %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Scanner error: %s at line %d, column %d\0A%s at line %d, column %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Scanner error: %s at line %d, column %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Parser error: %s at line %d, column %d\0A%s at line %d, column %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Parser error: %s at line %d, column %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Internal error\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Memory error: Not enough memory for emitting\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Writer error: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Emitter error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 @memset(%struct.TYPE_21__* %11, i32 0, i32 56)
  %15 = call i32 @memset(%struct.TYPE_21__* %12, i32 0, i32 56)
  %16 = call i32 @memset(%struct.TYPE_21__* %13, i32 0, i32 56)
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %86, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %21
  store i32 1, i32* %6, align 4
  br label %85

38:                                               ; preds = %29
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %38
  store i32 1, i32* %7, align 4
  br label %84

55:                                               ; preds = %46
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %55
  store i32 1, i32* %8, align 4
  br label %83

72:                                               ; preds = %63
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i8* %78, i8* %81)
  store i32 1, i32* %3, align 4
  br label %276

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %54
  br label %85

85:                                               ; preds = %84, %37
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %17

89:                                               ; preds = %17
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @printf(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.7, i64 0, i64 0), i8* %95, i8* %98)
  store i32 0, i32* %3, align 4
  br label %276

100:                                              ; preds = %89
  %101 = call i32 @yaml_parser_initialize(%struct.TYPE_21__* %11)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %139

104:                                              ; preds = %100
  %105 = call i32 @yaml_emitter_initialize(%struct.TYPE_21__* %12)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %254

108:                                              ; preds = %104
  %109 = load i32, i32* @stdin, align 4
  %110 = call i32 @yaml_parser_set_input_file(%struct.TYPE_21__* %11, i32 %109)
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @yaml_emitter_set_output_file(%struct.TYPE_21__* %12, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @yaml_emitter_set_canonical(%struct.TYPE_21__* %12, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @yaml_emitter_set_unicode(%struct.TYPE_21__* %12, i32 %115)
  br label %117

117:                                              ; preds = %135, %108
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = call i32 @yaml_parser_parse(%struct.TYPE_21__* %11, %struct.TYPE_21__* %13)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %139

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @YAML_STREAM_END_EVENT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %10, align 4
  br label %131

131:                                              ; preds = %130, %125
  %132 = call i32 @yaml_emitter_emit(%struct.TYPE_21__* %12, %struct.TYPE_21__* %13)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  br label %254

135:                                              ; preds = %131
  br label %117

136:                                              ; preds = %117
  %137 = call i32 @yaml_parser_delete(%struct.TYPE_21__* %11)
  %138 = call i32 @yaml_emitter_delete(%struct.TYPE_21__* %12)
  store i32 0, i32* %3, align 4
  br label %276

139:                                              ; preds = %124, %103
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %248 [
    i32 132, label %142
    i32 130, label %145
    i32 129, label %166
    i32 131, label %207
  ]

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %251

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* @stderr, align 4
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %152, i32 %154, i32 %156)
  br label %165

158:                                              ; preds = %145
  %159 = load i32, i32* @stderr, align 4
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %161, i32 %163)
  br label %165

165:                                              ; preds = %158, %149
  br label %251

166:                                              ; preds = %139
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load i32, i32* @stderr, align 4
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i8* %173, i32 %177, i32 %181, i8* %183, i32 %187, i32 %191)
  br label %206

193:                                              ; preds = %166
  %194 = load i32, i32* @stderr, align 4
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %196, i32 %200, i32 %204)
  br label %206

206:                                              ; preds = %193, %170
  br label %251

207:                                              ; preds = %139
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %234

211:                                              ; preds = %207
  %212 = load i32, i32* @stderr, align 4
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 7
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8* %214, i32 %218, i32 %222, i8* %224, i32 %228, i32 %232)
  br label %247

234:                                              ; preds = %207
  %235 = load i32, i32* @stderr, align 4
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %237, i32 %241, i32 %245)
  br label %247

247:                                              ; preds = %234, %211
  br label %251

248:                                              ; preds = %139
  %249 = load i32, i32* @stderr, align 4
  %250 = call i32 (i32, i8*, ...) @fprintf(i32 %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %247, %206, %165, %142
  %252 = call i32 @yaml_parser_delete(%struct.TYPE_21__* %11)
  %253 = call i32 @yaml_emitter_delete(%struct.TYPE_21__* %12)
  store i32 1, i32* %3, align 4
  br label %276

254:                                              ; preds = %134, %107
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  switch i32 %256, label %270 [
    i32 132, label %257
    i32 128, label %260
    i32 133, label %265
  ]

257:                                              ; preds = %254
  %258 = load i32, i32* @stderr, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  br label %273

260:                                              ; preds = %254
  %261 = load i32, i32* @stderr, align 4
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %263)
  br label %273

265:                                              ; preds = %254
  %266 = load i32, i32* @stderr, align 4
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %268)
  br label %273

270:                                              ; preds = %254
  %271 = load i32, i32* @stderr, align 4
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %265, %260, %257
  %274 = call i32 @yaml_parser_delete(%struct.TYPE_21__* %11)
  %275 = call i32 @yaml_emitter_delete(%struct.TYPE_21__* %12)
  store i32 1, i32* %3, align 4
  br label %276

276:                                              ; preds = %273, %251, %136, %92, %72
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @yaml_parser_initialize(%struct.TYPE_21__*) #1

declare dso_local i32 @yaml_emitter_initialize(%struct.TYPE_21__*) #1

declare dso_local i32 @yaml_parser_set_input_file(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @yaml_emitter_set_output_file(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @yaml_emitter_set_canonical(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @yaml_emitter_set_unicode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @yaml_parser_parse(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @yaml_emitter_emit(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @yaml_parser_delete(%struct.TYPE_21__*) #1

declare dso_local i32 @yaml_emitter_delete(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
