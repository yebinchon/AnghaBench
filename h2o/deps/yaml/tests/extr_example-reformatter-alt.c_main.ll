; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_example-reformatter-alt.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_example-reformatter-alt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i8*, i32, i8*, %struct.TYPE_20__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

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
@.str.8 = private unnamed_addr constant [45 x i8] c"Memory error: Not enough memory for parsing\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Reader error: %s: #%X at %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Reader error: %s at %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Scanner error: %s at line %d, column %d\0A%s at line %d, column %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Scanner error: %s at line %d, column %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Parser error: %s at line %d, column %d\0A%s at line %d, column %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Parser error: %s at line %d, column %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Composer error: %s at line %d, column %d\0A%s at line %d, column %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Composer error: %s at line %d, column %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Internal error\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Memory error: Not enough memory for emitting\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Writer error: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Emitter error: %s\0A\00", align 1

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
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 @memset(%struct.TYPE_22__* %11, i32 0, i32 48)
  %15 = call i32 @memset(%struct.TYPE_22__* %12, i32 0, i32 48)
  %16 = call i32 @memset(%struct.TYPE_22__* %13, i32 0, i32 48)
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
  br label %315

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
  br label %315

100:                                              ; preds = %89
  %101 = call i32 @yaml_parser_initialize(%struct.TYPE_22__* %11)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %137

104:                                              ; preds = %100
  %105 = call i32 @yaml_emitter_initialize(%struct.TYPE_22__* %12)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %293

108:                                              ; preds = %104
  %109 = load i32, i32* @stdin, align 4
  %110 = call i32 @yaml_parser_set_input_file(%struct.TYPE_22__* %11, i32 %109)
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @yaml_emitter_set_output_file(%struct.TYPE_22__* %12, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @yaml_emitter_set_canonical(%struct.TYPE_22__* %12, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @yaml_emitter_set_unicode(%struct.TYPE_22__* %12, i32 %115)
  br label %117

117:                                              ; preds = %133, %108
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = call i32 @yaml_parser_load(%struct.TYPE_22__* %11, %struct.TYPE_22__* %13)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %137

125:                                              ; preds = %121
  %126 = call i32 @yaml_document_get_root_node(%struct.TYPE_22__* %13)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i32 1, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = call i32 @yaml_emitter_dump(%struct.TYPE_22__* %12, %struct.TYPE_22__* %13)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %293

133:                                              ; preds = %129
  br label %117

134:                                              ; preds = %117
  %135 = call i32 @yaml_parser_delete(%struct.TYPE_22__* %11)
  %136 = call i32 @yaml_emitter_delete(%struct.TYPE_22__* %12)
  store i32 0, i32* %3, align 4
  br label %315

137:                                              ; preds = %124, %103
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %287 [
    i32 132, label %140
    i32 130, label %143
    i32 129, label %164
    i32 131, label %205
    i32 134, label %246
  ]

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %290

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i32, i32* @stderr, align 4
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %150, i32 %152, i32 %154)
  br label %163

156:                                              ; preds = %143
  %157 = load i32, i32* @stderr, align 4
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %159, i32 %161)
  br label %163

163:                                              ; preds = %156, %147
  br label %290

164:                                              ; preds = %137
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %191

168:                                              ; preds = %164
  %169 = load i32, i32* @stderr, align 4
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i8* %171, i32 %175, i32 %179, i8* %181, i32 %185, i32 %189)
  br label %204

191:                                              ; preds = %164
  %192 = load i32, i32* @stderr, align 4
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %194, i32 %198, i32 %202)
  br label %204

204:                                              ; preds = %191, %168
  br label %290

205:                                              ; preds = %137
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load i32, i32* @stderr, align 4
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8* %212, i32 %216, i32 %220, i8* %222, i32 %226, i32 %230)
  br label %245

232:                                              ; preds = %205
  %233 = load i32, i32* @stderr, align 4
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %235, i32 %239, i32 %243)
  br label %245

245:                                              ; preds = %232, %209
  br label %290

246:                                              ; preds = %137
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %273

250:                                              ; preds = %246
  %251 = load i32, i32* @stderr, align 4
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %251, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i64 0, i64 0), i8* %253, i32 %257, i32 %261, i8* %263, i32 %267, i32 %271)
  br label %286

273:                                              ; preds = %246
  %274 = load i32, i32* @stderr, align 4
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, 1
  %285 = call i32 (i32, i8*, ...) @fprintf(i32 %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8* %276, i32 %280, i32 %284)
  br label %286

286:                                              ; preds = %273, %250
  br label %290

287:                                              ; preds = %137
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %290

290:                                              ; preds = %287, %286, %245, %204, %163, %140
  %291 = call i32 @yaml_parser_delete(%struct.TYPE_22__* %11)
  %292 = call i32 @yaml_emitter_delete(%struct.TYPE_22__* %12)
  store i32 1, i32* %3, align 4
  br label %315

293:                                              ; preds = %132, %107
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  switch i32 %295, label %309 [
    i32 132, label %296
    i32 128, label %299
    i32 133, label %304
  ]

296:                                              ; preds = %293
  %297 = load i32, i32* @stderr, align 4
  %298 = call i32 (i32, i8*, ...) @fprintf(i32 %297, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  br label %312

299:                                              ; preds = %293
  %300 = load i32, i32* @stderr, align 4
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %302)
  br label %312

304:                                              ; preds = %293
  %305 = load i32, i32* @stderr, align 4
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 (i32, i8*, ...) @fprintf(i32 %305, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* %307)
  br label %312

309:                                              ; preds = %293
  %310 = load i32, i32* @stderr, align 4
  %311 = call i32 (i32, i8*, ...) @fprintf(i32 %310, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %312

312:                                              ; preds = %309, %304, %299, %296
  %313 = call i32 @yaml_parser_delete(%struct.TYPE_22__* %11)
  %314 = call i32 @yaml_emitter_delete(%struct.TYPE_22__* %12)
  store i32 1, i32* %3, align 4
  br label %315

315:                                              ; preds = %312, %290, %134, %92, %72
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @yaml_parser_initialize(%struct.TYPE_22__*) #1

declare dso_local i32 @yaml_emitter_initialize(%struct.TYPE_22__*) #1

declare dso_local i32 @yaml_parser_set_input_file(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @yaml_emitter_set_output_file(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @yaml_emitter_set_canonical(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @yaml_emitter_set_unicode(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @yaml_parser_load(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @yaml_document_get_root_node(%struct.TYPE_22__*) #1

declare dso_local i32 @yaml_emitter_dump(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @yaml_parser_delete(%struct.TYPE_22__*) #1

declare dso_local i32 @yaml_emitter_delete(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
