; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_spell_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_spell_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speller = type { i32, %struct.speller*, i8*, i8*, i8*, i32, i32* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@re_email = common dso_local global i32 0, align 4
@email_regexp = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"regcomp (%s) return error code %d\0A.\00", align 1
@re_url = common dso_local global i32 0, align 4
@url_regexp = common dso_local global i32 0, align 4
@spellers = common dso_local global i32 0, align 4
@l_case = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"skip duplicate dictionary (code:%s, jargon:%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"jargon\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CP1251\00", align 1
@use_aspell_suggestion = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"sug-mode\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ru\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"user dict: %s\0A\00", align 1
@SC = common dso_local global %struct.speller** null, align 8
@SS = common dso_local global %struct.speller** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spell_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.speller*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.speller*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.speller*, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @email_regexp, align 4
  %13 = load i32, i32* @REG_EXTENDED, align 4
  %14 = load i32, i32* @REG_ICASE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @REG_NEWLINE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @vk_regcomp(i32* @re_email, i32 %12, i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* @email_regexp, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %0
  %27 = load i32, i32* @url_regexp, align 4
  %28 = load i32, i32* @REG_EXTENDED, align 4
  %29 = load i32, i32* @REG_ICASE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @REG_NEWLINE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @vk_regcomp(i32* @re_url, i32 %27, i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load i32, i32* @email_regexp, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %26
  store %struct.speller* null, %struct.speller** %2, align 8
  store i32 0, i32* @spellers, align 4
  %42 = call i32 (...) @init_is_letter()
  %43 = load i32*, i32** @l_case, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 184
  store i32 184, i32* %44, align 4
  %45 = load i32*, i32** @l_case, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 168
  store i32 184, i32* %46, align 4
  %47 = call i32* (...) @new_aspell_config()
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @get_aspell_dict_info_list(i32* %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @aspell_dict_info_list_elements(i32* %50)
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %192, %138, %129, %115, %88, %41
  %53 = load i32*, i32** %6, align 8
  %54 = call %struct.TYPE_3__* @aspell_dict_info_enumeration_next(i32* %53)
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %3, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %193

56:                                               ; preds = %52
  %57 = load %struct.speller*, %struct.speller** %2, align 8
  store %struct.speller* %57, %struct.speller** %7, align 8
  br label %58

58:                                               ; preds = %81, %56
  %59 = load %struct.speller*, %struct.speller** %7, align 8
  %60 = icmp ne %struct.speller* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load %struct.speller*, %struct.speller** %7, align 8
  %63 = getelementptr inbounds %struct.speller, %struct.speller* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %64, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %61
  %71 = load %struct.speller*, %struct.speller** %7, align 8
  %72 = getelementptr inbounds %struct.speller, %struct.speller* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %73, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %85

80:                                               ; preds = %70, %61
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.speller*, %struct.speller** %7, align 8
  %83 = getelementptr inbounds %struct.speller, %struct.speller* %82, i32 0, i32 1
  %84 = load %struct.speller*, %struct.speller** %83, align 8
  store %struct.speller* %84, %struct.speller** %7, align 8
  br label %58

85:                                               ; preds = %79, %58
  %86 = load %struct.speller*, %struct.speller** %7, align 8
  %87 = icmp ne %struct.speller* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %94)
  br label %52

96:                                               ; preds = %85
  %97 = call i32* (...) @new_aspell_config()
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @vk_aspell_config_replace(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %96
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @vk_aspell_config_replace(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @vk_aspell_config_replace(i32* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111, %104, %96
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @delete_aspell_config(i32* %116)
  br label %52

118:                                              ; preds = %111
  %119 = load i64, i64* @use_aspell_suggestion, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @vk_aspell_config_replace(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @vk_aspell_config_replace(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125, %121
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @delete_aspell_config(i32* %130)
  br label %52

132:                                              ; preds = %125, %118
  %133 = load i32*, i32** %8, align 8
  %134 = call i32* @new_aspell_speller(i32* %133)
  store i32* %134, i32** %9, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i64 @aspell_error_number(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @aspell_error_message(i32* %139)
  %141 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @delete_aspell_can_have_error(i32* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @delete_aspell_config(i32* %144)
  br label %52

146:                                              ; preds = %132
  %147 = call %struct.speller* @zmalloc0(i32 56)
  store %struct.speller* %147, %struct.speller** %10, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load %struct.speller*, %struct.speller** %10, align 8
  %150 = getelementptr inbounds %struct.speller, %struct.speller* %149, i32 0, i32 6
  store i32* %148, i32** %150, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @to_aspell_speller(i32* %151)
  %153 = load %struct.speller*, %struct.speller** %10, align 8
  %154 = getelementptr inbounds %struct.speller, %struct.speller* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @zstrdup(i8* %157)
  %159 = load %struct.speller*, %struct.speller** %10, align 8
  %160 = getelementptr inbounds %struct.speller, %struct.speller* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* @zstrdup(i8* %163)
  %165 = load %struct.speller*, %struct.speller** %10, align 8
  %166 = getelementptr inbounds %struct.speller, %struct.speller* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @zstrdup(i8* %169)
  %171 = load %struct.speller*, %struct.speller** %10, align 8
  %172 = getelementptr inbounds %struct.speller, %struct.speller* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strncmp(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load %struct.speller*, %struct.speller** %10, align 8
  %181 = getelementptr inbounds %struct.speller, %struct.speller* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.speller*, %struct.speller** %2, align 8
  %183 = load %struct.speller*, %struct.speller** %10, align 8
  %184 = getelementptr inbounds %struct.speller, %struct.speller* %183, i32 0, i32 1
  store %struct.speller* %182, %struct.speller** %184, align 8
  %185 = load %struct.speller*, %struct.speller** %10, align 8
  store %struct.speller* %185, %struct.speller** %2, align 8
  %186 = load i32, i32* @spellers, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @spellers, align 4
  %188 = load %struct.speller*, %struct.speller** %10, align 8
  %189 = getelementptr inbounds %struct.speller, %struct.speller* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %146
  br label %52

193:                                              ; preds = %52
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @delete_aspell_dict_info_enumeration(i32* %194)
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @delete_aspell_config(i32* %196)
  %198 = load i32, i32* @spellers, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 56
  %201 = trunc i64 %200 to i32
  %202 = call i8* @zmalloc(i32 %201)
  %203 = bitcast i8* %202 to %struct.speller**
  store %struct.speller** %203, %struct.speller*** @SC, align 8
  %204 = load i32, i32* @spellers, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 56
  %207 = trunc i64 %206 to i32
  %208 = call i8* @zmalloc(i32 %207)
  %209 = bitcast i8* %208 to %struct.speller**
  store %struct.speller** %209, %struct.speller*** @SS, align 8
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %213, %193
  %211 = load %struct.speller*, %struct.speller** %2, align 8
  %212 = icmp ne %struct.speller* %211, null
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load %struct.speller*, %struct.speller** %2, align 8
  %215 = load %struct.speller**, %struct.speller*** @SS, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.speller*, %struct.speller** %215, i64 %217
  store %struct.speller* %214, %struct.speller** %218, align 8
  %219 = load %struct.speller**, %struct.speller*** @SC, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.speller*, %struct.speller** %219, i64 %221
  store %struct.speller* %214, %struct.speller** %222, align 8
  %223 = load %struct.speller*, %struct.speller** %2, align 8
  %224 = getelementptr inbounds %struct.speller, %struct.speller* %223, i32 0, i32 1
  %225 = load %struct.speller*, %struct.speller** %224, align 8
  store %struct.speller* %225, %struct.speller** %2, align 8
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %210

228:                                              ; preds = %210
  ret void
}

declare dso_local i32 @vk_regcomp(i32*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_is_letter(...) #1

declare dso_local i32* @new_aspell_config(...) #1

declare dso_local i32* @get_aspell_dict_info_list(i32*) #1

declare dso_local i32* @aspell_dict_info_list_elements(i32*) #1

declare dso_local %struct.TYPE_3__* @aspell_dict_info_enumeration_next(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vk_aspell_config_replace(i32*, i8*, i8*) #1

declare dso_local i32 @delete_aspell_config(i32*) #1

declare dso_local i32* @new_aspell_speller(i32*) #1

declare dso_local i64 @aspell_error_number(i32*) #1

declare dso_local i32 @aspell_error_message(i32*) #1

declare dso_local i32 @delete_aspell_can_have_error(i32*) #1

declare dso_local %struct.speller* @zmalloc0(i32) #1

declare dso_local i32 @to_aspell_speller(i32*) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @delete_aspell_dict_info_enumeration(i32*) #1

declare dso_local i8* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
