; ModuleID = '/home/carl/AnghaBench/git/extr_line-range.c_parse_loc.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-range.c_parse_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"-L invalid empty range\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"-L invalid line number: %ld\00", align 1
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"-L parameter '%s' starting at line %ld: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8* (i8*, i64)*, i8*, i64, i64, i64*)* @parse_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_loc(i8* %0, i8* (i8*, i64)* %1, i8* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8* (i8*, i64)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1 x %struct.TYPE_3__], align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [1024 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* (i8*, i64)* %1, i8* (i8*, i64)** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp sle i64 1, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %97

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i64 @strtol(i8* %39, i8** %14, i32 10)
  store i64 %40, i64* %16, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = icmp ne i8* %41, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %37
  %46 = load i64*, i64** %13, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %14, align 8
  store i8* %49, i8** %7, align 8
  br label %243

50:                                               ; preds = %45
  %51 = load i64, i64* %16, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* %16, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %16, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i64, i64* %16, align 8
  %66 = icmp slt i64 0, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %16, align 8
  %70 = add nsw i64 %68, %69
  %71 = sub nsw i64 %70, 2
  %72 = load i64*, i64** %13, align 8
  store i64 %71, i64* %72, align 8
  br label %93

73:                                               ; preds = %64
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %12, align 8
  %78 = load i64*, i64** %13, align 8
  store i64 %77, i64* %78, align 8
  br label %92

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %16, align 8
  %82 = add nsw i64 %80, %81
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add nsw i64 %85, %86
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i64 [ %87, %84 ], [ 1, %88 ]
  %91 = load i64*, i64** %13, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %76
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i8*, i8** %14, align 8
  store i8* %94, i8** %7, align 8
  br label %243

95:                                               ; preds = %37
  %96 = load i8*, i8** %8, align 8
  store i8* %96, i8** %7, align 8
  br label %243

97:                                               ; preds = %31, %6
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strtol(i8* %98, i8** %14, i32 10)
  store i64 %99, i64* %16, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i64*, i64** %13, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i64, i64* %16, align 8
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, i64* %16, align 8
  %111 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i64, i64* %16, align 8
  %114 = load i64*, i64** %13, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i8*, i8** %14, align 8
  store i8* %116, i8** %7, align 8
  br label %243

117:                                              ; preds = %97
  %118 = load i64, i64* %12, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 94
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i64, i64* %12, align 8
  %128 = sub nsw i64 0, %127
  store i64 %128, i64* %12, align 8
  br label %132

129:                                              ; preds = %120
  store i64 1, i64* %12, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %117
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 47
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i8*, i8** %8, align 8
  store i8* %140, i8** %7, align 8
  br label %243

141:                                              ; preds = %133
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  store i8* %143, i8** %14, align 8
  br label %144

144:                                              ; preds = %165, %141
  %145 = load i8*, i8** %14, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i8*, i8** %14, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 47
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ false, %144 ], [ %153, %149 ]
  br i1 %155, label %156, label %168

156:                                              ; preds = %154
  %157 = load i8*, i8** %14, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 92
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %14, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %14, align 8
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %14, align 8
  br label %144

168:                                              ; preds = %154
  %169 = load i8*, i8** %14, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 47
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  store i8* %174, i8** %7, align 8
  br label %243

175:                                              ; preds = %168
  %176 = load i64*, i64** %13, align 8
  %177 = icmp ne i64* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i8*, i8** %14, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8* %180, i8** %7, align 8
  br label %243

181:                                              ; preds = %175
  %182 = load i8*, i8** %14, align 8
  store i8 0, i8* %182, align 1
  %183 = load i64, i64* %12, align 8
  %184 = add nsw i64 %183, -1
  store i64 %184, i64* %12, align 8
  %185 = load i8* (i8*, i64)*, i8* (i8*, i64)** %9, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i8* %185(i8* %186, i64 %187)
  store i8* %188, i8** %15, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i32, i32* @REG_NEWLINE, align 4
  %192 = call i32 @regcomp(i32* %18, i8* %190, i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %233, label %194

194:                                              ; preds = %181
  %195 = load i8*, i8** %15, align 8
  %196 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %197 = call i32 @regexec(i32* %18, i8* %195, i32 1, %struct.TYPE_3__* %196, i32 0)
  store i32 %197, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %233, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %15, align 8
  %201 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %19, i64 0, i64 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  store i8* %205, i8** %20, align 8
  br label %206

206:                                              ; preds = %224, %199
  %207 = load i64, i64* %12, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %12, align 8
  %209 = load i64, i64* %11, align 8
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %206
  %212 = load i8* (i8*, i64)*, i8* (i8*, i64)** %9, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load i64, i64* %12, align 8
  %215 = call i8* %212(i8* %213, i64 %214)
  store i8* %215, i8** %21, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = icmp ule i8* %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %211
  %220 = load i8*, i8** %20, align 8
  %221 = load i8*, i8** %21, align 8
  %222 = icmp ult i8* %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %226

224:                                              ; preds = %219, %211
  %225 = load i8*, i8** %21, align 8
  store i8* %225, i8** %15, align 8
  br label %206

226:                                              ; preds = %223, %206
  %227 = load i64, i64* %12, align 8
  %228 = load i64*, i64** %13, align 8
  store i64 %227, i64* %228, align 8
  %229 = call i32 @regfree(i32* %18)
  %230 = load i8*, i8** %14, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %14, align 8
  store i8 47, i8* %230, align 1
  %232 = load i8*, i8** %14, align 8
  store i8* %232, i8** %7, align 8
  br label %243

233:                                              ; preds = %194, %181
  %234 = load i32, i32* %17, align 4
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %236 = call i32 @regerror(i32 %234, i32* %18, i8* %235, i32 1024)
  %237 = load i8*, i8** %8, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i64, i64* %12, align 8
  %240 = add nsw i64 %239, 1
  %241 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %242 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %238, i64 %240, i8* %241)
  br label %243

243:                                              ; preds = %48, %93, %95, %115, %139, %173, %178, %226, %233
  %244 = load i8*, i8** %7, align 8
  ret i8* %244
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
