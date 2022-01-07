; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_succ_bang.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_succ_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_succ_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_succ_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.RString*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.RString* @mrb_str_ptr(i32 %14)
  store %struct.RString* %15, %struct.RString** %12, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @RSTRING_LEN(i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %218

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.RString*, %struct.RString** %12, align 8
  %24 = call i32 @mrb_str_modify(i32* %22, %struct.RString* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @RSTRING_LEN(i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @RSTRING_PTR(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %8, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %8, align 8
  store i8 0, i8* %35, align 1
  br label %37

37:                                               ; preds = %47, %21
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ISALNUM(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %8, align 8
  br label %37

50:                                               ; preds = %46, %37
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8* %59, i8** %8, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @mrb_str_new_lit(i32* %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %6, align 4
  br label %115

62:                                               ; preds = %50
  %63 = load i8*, i8** %8, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %94, %62
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @ISALNUM(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @ISALNUM(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 57
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 122
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 90
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %68
  br label %97

94:                                               ; preds = %88, %83, %78, %73
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %9, align 8
  br label %64

97:                                               ; preds = %93, %64
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @ISALNUM(i8 zeroext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @mrb_str_new(i32* %106, i8* %107, i32 %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %105, %54
  br label %116

116:                                              ; preds = %190, %115
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = icmp uge i8* %117, %118
  br i1 %119, label %120, label %193

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @ISALNUM(i8 zeroext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @mrb_str_cat_lit(i32* %131, i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i8*, i8** %8, align 8
  store i8 0, i8* %134, align 1
  br label %139

135:                                              ; preds = %125
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = add i8 %137, 1
  store i8 %138, i8* %136, align 1
  br label %139

139:                                              ; preds = %135, %130
  br label %193

140:                                              ; preds = %120
  store i8* null, i8** %11, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 57
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i8*, i8** %8, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i8*, i8** %8, align 8
  store i8 48, i8* %151, align 1
  br label %182

152:                                              ; preds = %140
  %153 = load i8*, i8** %8, align 8
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 122
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = icmp eq i8* %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %162

162:                                              ; preds = %161, %157
  %163 = load i8*, i8** %8, align 8
  store i8 97, i8* %163, align 1
  br label %181

164:                                              ; preds = %152
  %165 = load i8*, i8** %8, align 8
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 90
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = icmp eq i8* %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %174

174:                                              ; preds = %173, %169
  %175 = load i8*, i8** %8, align 8
  store i8 65, i8* %175, align 1
  br label %180

176:                                              ; preds = %164
  %177 = load i8*, i8** %8, align 8
  %178 = load i8, i8* %177, align 1
  %179 = add i8 %178, 1
  store i8 %179, i8* %177, align 1
  br label %193

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %162
  br label %182

182:                                              ; preds = %181, %150
  %183 = load i8*, i8** %11, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i8*, i8** %11, align 8
  %189 = call i32 @mrb_str_cat_cstr(i32* %186, i32 %187, i8* %188)
  br label %190

190:                                              ; preds = %185, %182
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %8, align 8
  br label %116

193:                                              ; preds = %176, %139, %116
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i8*, i8** %9, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @mrb_str_cat(i32* %194, i32 %195, i8* %196, i32 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i64 @RSTRING_LEN(i32 %204)
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %13, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @mrb_str_resize(i32* %207, i32 %208, i32 %209)
  %211 = load i32, i32* %5, align 4
  %212 = call i64 @RSTRING_PTR(i32 %211)
  %213 = load i32, i32* %6, align 4
  %214 = call i64 @RSTRING_PTR(i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @memcpy(i64 %212, i64 %214, i32 %215)
  %217 = load i32, i32* %5, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %193, %19
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_str_modify(i32*, %struct.RString*) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i64 @ISALNUM(i8 zeroext) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
