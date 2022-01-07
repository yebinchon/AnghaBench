; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32, %struct.tl_expression* }
%struct.tl_expression = type { i8*, i64, i64, i32, %struct.TYPE_4__*, i8*, %struct.TYPE_5__*, %struct.tl_expression* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8* }

@tlet_polymorphic_instance = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"polymorphic instance in the '---functions---' section, expr: %s\00", align 1
@TL_SECTION_TYPES = common dso_local global i64 0, align 8
@tlet_polymorphic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"don't find polymorphic rule, expr: %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"'=' should be surrounded by spaces, expr: %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"'=' occures multiple times, expr: %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"empty lhs, expr: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%x%c\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"can't parse combinator magic number, expr: %s\00", align 1
@tlet_simple = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"empty rhs, expr: %s\0A\00", align 1
@TL_SECTION_FUNCTIONS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [111 x i8] c"rhs contains more than one word, but it isn't polymorhic (args should be in ['alpha', 'beta', ...]), expr: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_parse(%struct.tl_compiler* %0, %struct.tl_expression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca %struct.tl_expression*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tl_expression*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %5, align 8
  %14 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %15 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 61)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %101

20:                                               ; preds = %2
  %21 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %22 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %23 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %24 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @tl_expresion_split(%struct.tl_compiler* %21, %struct.tl_expression* %22, i8* %25, i32 1)
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  %28 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %29 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %28, i32 0, i32 6
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %31 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %30, i32 0, i32 6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %286

35:                                               ; preds = %20
  %36 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %37 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %36, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %37, align 8
  %38 = load i64, i64* @tlet_polymorphic_instance, align 8
  %39 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %40 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %42 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %47 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %48 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @tl_failf(%struct.tl_compiler* %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %3, align 4
  br label %286

51:                                               ; preds = %35
  %52 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %53 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %52, i32 0, i32 1
  %54 = load %struct.tl_expression*, %struct.tl_expression** %53, align 8
  %55 = load i64, i64* @TL_SECTION_TYPES, align 8
  %56 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %54, i64 %55
  %57 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %56, i32 0, i32 7
  %58 = load %struct.tl_expression*, %struct.tl_expression** %57, align 8
  store %struct.tl_expression* %58, %struct.tl_expression** %7, align 8
  br label %59

59:                                               ; preds = %91, %51
  %60 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %61 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %62 = icmp ne %struct.tl_expression* %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %65 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %66 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %65, i32 0, i32 1
  %67 = load %struct.tl_expression*, %struct.tl_expression** %66, align 8
  %68 = load i64, i64* @TL_SECTION_TYPES, align 8
  %69 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %67, i64 %68
  %70 = icmp ne %struct.tl_expression* %64, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %74 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @tlet_polymorphic, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %63
  %79 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %80 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %83 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %82, i32 0, i32 6
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i64 @tl_token_polymorphic_match(%struct.TYPE_4__* %81, %struct.TYPE_5__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %89 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %90 = call i32 @tl_expression_expand(%struct.tl_expression* %88, %struct.tl_expression* %89)
  store i32 0, i32* %3, align 4
  br label %286

91:                                               ; preds = %78, %63
  %92 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %93 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %92, i32 0, i32 7
  %94 = load %struct.tl_expression*, %struct.tl_expression** %93, align 8
  store %struct.tl_expression* %94, %struct.tl_expression** %7, align 8
  br label %59

95:                                               ; preds = %59
  %96 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %97 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %98 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @tl_failf(%struct.tl_compiler* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  store i32 %100, i32* %3, align 4
  br label %286

101:                                              ; preds = %2
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %104 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp eq i8* %102, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 32
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 32
  br i1 %118, label %119, label %125

119:                                              ; preds = %113, %107, %101
  %120 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %121 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %122 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @tl_failf(%struct.tl_compiler* %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  store i32 %124, i32* %3, align 4
  br label %286

125:                                              ; preds = %113
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = call i8* @strchr(i8* %127, i8 signext 61)
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %132 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %133 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @tl_failf(%struct.tl_compiler* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  store i32 %135, i32* %3, align 4
  br label %286

136:                                              ; preds = %125
  %137 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %138 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %142 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %140 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sub nsw i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = call i8* @cstr_substr(i8* %139, i32 0, i32 %148)
  store i8* %149, i8** %8, align 8
  %150 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %151 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i8* @tl_expresion_split(%struct.tl_compiler* %150, %struct.tl_expression* %151, i8* %152, i32 0)
  %154 = bitcast i8* %153 to %struct.TYPE_5__*
  %155 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %156 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %155, i32 0, i32 6
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %156, align 8
  %157 = call i32 @cstr_free(i8** %8)
  %158 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %159 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %158, i32 0, i32 6
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = icmp eq %struct.TYPE_5__* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %136
  %163 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %164 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %165 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @tl_failf(%struct.tl_compiler* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %166)
  store i32 %167, i32* %3, align 4
  br label %286

168:                                              ; preds = %136
  %169 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %170 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %169, i32 0, i32 6
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @strchr(i8* %173, i8 signext 35)
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %211

177:                                              ; preds = %168
  store i32 0, i32* %10, align 4
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = call i32 @sscanf(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %10, i8* %11)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %185 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %186 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @tl_failf(%struct.tl_compiler* %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %187)
  store i32 %188, i32* %3, align 4
  br label %286

189:                                              ; preds = %177
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %192 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %194 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %193, i32 0, i32 6
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %13, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = call i8* @cstr_substr(i8* %198, i32 0, i32 %204)
  %206 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %207 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %206, i32 0, i32 6
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  %210 = call i32 @cstr_free(i8** %13)
  br label %211

211:                                              ; preds = %189, %168
  %212 = load i64, i64* @tlet_simple, align 8
  %213 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %214 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %216 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %220 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 0, i32 1
  %225 = call i8* @tl_expresion_split(%struct.tl_compiler* %215, %struct.tl_expression* %216, i8* %218, i32 %224)
  %226 = bitcast i8* %225 to %struct.TYPE_4__*
  %227 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %228 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %227, i32 0, i32 4
  store %struct.TYPE_4__* %226, %struct.TYPE_4__** %228, align 8
  %229 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %230 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %229, i32 0, i32 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = icmp eq %struct.TYPE_4__* %231, null
  br i1 %232, label %233, label %245

233:                                              ; preds = %211
  %234 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %235 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %240 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %241 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @tl_failf(%struct.tl_compiler* %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %242)
  store i32 %243, i32* %3, align 4
  br label %286

244:                                              ; preds = %233
  store i32 -1, i32* %3, align 4
  br label %286

245:                                              ; preds = %211
  %246 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %247 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @TL_SECTION_FUNCTIONS, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %253 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %252, i32 0, i32 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = call i8* @cstr_join_with_sugar(%struct.TYPE_4__* %254)
  %256 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %257 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %256, i32 0, i32 5
  store i8* %255, i8** %257, align 8
  store i32 0, i32* %3, align 4
  br label %286

258:                                              ; preds = %245
  %259 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %260 = call i64 @tl_expression_is_polymorhic(%struct.tl_expression* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i64, i64* @tlet_polymorphic, align 8
  %264 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %265 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  store i32 0, i32* %3, align 4
  br label %286

266:                                              ; preds = %258
  %267 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %268 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %267, i32 0, i32 4
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %275 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %276 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @tl_failf(%struct.tl_compiler* %274, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.8, i64 0, i64 0), i8* %277)
  store i32 %278, i32* %3, align 4
  br label %286

279:                                              ; preds = %266
  %280 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %281 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %280, i32 0, i32 4
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = call i8* @cstr_join_with_sugar(%struct.TYPE_4__* %282)
  %284 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %285 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %284, i32 0, i32 5
  store i8* %283, i8** %285, align 8
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %279, %273, %262, %251, %244, %238, %183, %162, %130, %119, %95, %87, %45, %34
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @tl_expresion_split(%struct.tl_compiler*, %struct.tl_expression*, i8*, i32) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_token_polymorphic_match(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @tl_expression_expand(%struct.tl_expression*, %struct.tl_expression*) #1

declare dso_local i8* @cstr_substr(i8*, i32, i32) #1

declare dso_local i32 @cstr_free(i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i8* @cstr_join_with_sugar(%struct.TYPE_4__*) #1

declare dso_local i64 @tl_expression_is_polymorhic(%struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
