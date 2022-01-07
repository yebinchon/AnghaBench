; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_to_s.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_to_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONIG_OPTION_MULTILINE = common dso_local global i32 0, align 4
@ONIG_OPTION_IGNORECASE = common dso_local global i32 0, align 4
@ONIG_OPTION_EXTEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"(?\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"@source\00", align 1
@ONIG_OPTION_DEFAULT = common dso_local global i32 0, align 4
@ONIG_ENCODING_UTF8 = common dso_local global i32 0, align 4
@OnigDefaultSyntax = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_to_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_to_s(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @ONIG_OPTION_MULTILINE, align 4
  %16 = load i32, i32* @ONIG_OPTION_IGNORECASE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ONIG_OPTION_EXTEND, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @mrb_str_new_lit(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @Data_Get_Struct(i32* %22, i32 %23, i32* @mrb_onig_regexp_type, i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @onig_get_options(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @mrb_intern_lit(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @mrb_iv_get(i32* %28, i32 %29, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @RSTRING_PTR(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @RSTRING_LEN(i32 %35)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %144, %2
  %38 = load i64, i64* %7, align 8
  %39 = icmp sge i64 %38, 4
  br i1 %39, label %40, label %190

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %190

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 63
  br i1 %51, label %52, label %190

52:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %55, 2
  store i64 %56, i64* %7, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @strchr(i8* %60, i8 signext 105)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @ONIG_OPTION_IGNORECASE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strchr(i8* %68, i8 signext 120)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @ONIG_OPTION_EXTEND, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @strchr(i8* %76, i8 signext 109)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @ONIG_OPTION_MULTILINE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %7, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %59, label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i64, i64* %7, align 8
  %93 = icmp sgt i64 %92, 1
  br i1 %93, label %94, label %139

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br i1 %98, label %99, label %139

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %134, %99
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strchr(i8* %105, i8 signext 105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @ONIG_OPTION_IGNORECASE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @strchr(i8* %114, i8 signext 120)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* @ONIG_OPTION_EXTEND, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @strchr(i8* %123, i8 signext 109)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* @ONIG_OPTION_MULTILINE, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = add nsw i64 %135, -1
  store i64 %136, i64* %7, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %104, label %138

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %94, %91
  %140 = load i8*, i8** %8, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 41
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i64, i64* %7, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  br label %37

149:                                              ; preds = %139
  %150 = load i8*, i8** %8, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 58
  br i1 %153, label %154, label %179

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = load i64, i64* %7, align 8
  %157 = sub nsw i64 %156, 1
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 41
  br i1 %161, label %162, label %179

162:                                              ; preds = %154
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  %165 = load i64, i64* %7, align 8
  %166 = sub nsw i64 %165, 2
  store i64 %166, i64* %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = load i8*, i8** %8, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* @ONIG_OPTION_DEFAULT, align 4
  %174 = load i32, i32* @ONIG_ENCODING_UTF8, align 4
  %175 = load i32, i32* @OnigDefaultSyntax, align 4
  %176 = call i32 @onig_new(i32* %14, i32* %168, i32* %172, i32 %173, i32 %174, i32 %175, i32* null)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @onig_free(i32 %177)
  br label %179

179:                                              ; preds = %162, %154, %149
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @onig_get_options(i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i8* @RSTRING_PTR(i32 %185)
  store i8* %186, i8** %8, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @RSTRING_LEN(i32 %187)
  store i64 %188, i64* %7, align 8
  br label %189

189:                                              ; preds = %182, %179
  br label %190

190:                                              ; preds = %189, %46, %40, %37
  %191 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %192 = load i32, i32* %5, align 4
  %193 = call i64* @option_to_str(i8* %191, i32 %192)
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i32*, i32** %3, align 8
  %198 = load i32, i32* %9, align 4
  %199 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %200 = call i32 @mrb_str_cat_cstr(i32* %197, i32 %198, i8* %199)
  br label %201

201:                                              ; preds = %196, %190
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %6, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 45, i8* %208, align 1
  %209 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i32, i32* %5, align 4
  %212 = xor i32 %211, -1
  %213 = call i64* @option_to_str(i8* %210, i32 %212)
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* %9, align 4
  %216 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %217 = call i32 @mrb_str_cat_cstr(i32* %214, i32 %215, i8* %216)
  br label %218

218:                                              ; preds = %207, %201
  %219 = load i32*, i32** %3, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @mrb_str_cat_cstr(i32* %219, i32 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %222 = load i32*, i32** %3, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i8*, i8** %8, align 8
  %225 = load i64, i64* %7, align 8
  %226 = call i32 @regexp_expr_str(i32* %222, i32 %223, i8* %224, i64 %225)
  %227 = load i32*, i32** %3, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @mrb_str_cat_cstr(i32* %227, i32 %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %230 = load i32, i32* %9, align 4
  ret i32 %230
}

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i32 @onig_get_options(i32) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @onig_new(i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @onig_free(i32) #1

declare dso_local i64* @option_to_str(i8*, i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i32 @regexp_expr_str(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
