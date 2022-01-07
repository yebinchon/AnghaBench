; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_ksplit_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_ksplit_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ksplit_aux = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksplit_core(i8* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %16, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %204, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %207

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %113

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i64 @isspace(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %41, %32
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @isgraph(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  %55 = load i32**, i32*** %9, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 %69, 1
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i32 [ %70, %68 ], [ 2, %71 ]
  store i32 %73, i32* %12, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = call i8* @realloc(i8* %75, i64 %78)
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %17, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32*, i32** %17, align 8
  store i32* %83, i32** %15, align 8
  br label %88

84:                                               ; preds = %72
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 (i32*, ...) bitcast (i32 (...)* @free to i32 (i32*, ...)*)(i32* %85)
  %87 = load i32**, i32*** %9, align 8
  store i32* null, i32** %87, align 8
  store i32 0, i32* %5, align 4
  br label %213

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %99

96:                                               ; preds = %54
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %89
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %49
  br label %112

102:                                              ; preds = %41
  %103 = load i32, i32* %13, align 4
  %104 = call i64 @isspace(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %109, %106
  br label %112

112:                                              ; preds = %111, %101
  br label %197

113:                                              ; preds = %29
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %186

130:                                              ; preds = %122, %113
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %185

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %185

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137
  %139 = load i32**, i32*** %9, align 8
  %140 = icmp ne i32** %139, null
  br i1 %140, label %141, label %180

141:                                              ; preds = %138
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = shl i32 %153, 1
  br label %156

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %152
  %157 = phi i32 [ %154, %152 ], [ 2, %155 ]
  store i32 %157, i32* %12, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 4, %161
  %163 = call i8* @realloc(i8* %159, i64 %162)
  %164 = bitcast i8* %163 to i32*
  store i32* %164, i32** %18, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32*, i32** %18, align 8
  store i32* %167, i32** %15, align 8
  br label %172

168:                                              ; preds = %156
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 (i32*, ...) bitcast (i32 (...)* @free to i32 (i32*, ...)*)(i32* %169)
  %171 = load i32**, i32*** %9, align 8
  store i32* null, i32** %171, align 8
  store i32 0, i32* %5, align 4
  br label %213

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %141
  %174 = load i32, i32* %14, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %174, i32* %179, align 4
  br label %183

180:                                              ; preds = %138
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %173
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %133, %130
  br label %196

186:                                              ; preds = %122
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190, %186
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %193, %190
  br label %196

196:                                              ; preds = %195, %185
  br label %197

197:                                              ; preds = %196, %112
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %25

207:                                              ; preds = %25
  %208 = load i32, i32* %12, align 4
  %209 = load i32*, i32** %8, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i32**, i32*** %9, align 8
  store i32* %210, i32** %211, align 8
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %207, %168, %84
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isgraph(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
