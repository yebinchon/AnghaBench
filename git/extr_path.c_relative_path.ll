; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_relative_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_relative_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @relative_path(i8* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %259

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %4, align 8
  br label %259

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @have_same_root(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @has_dos_drive_prefix(i8* %45)
  store i32 %46, i32* %13, align 4
  store i32 %46, i32* %12, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  store i8* %48, i8** %4, align 8
  br label %259

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %64, %70
  br label %72

72:                                               ; preds = %58, %54, %50
  %73 = phi i1 [ false, %54 ], [ false, %50 ], [ %71, %58 ]
  br i1 %73, label %74, label %115

74:                                               ; preds = %72
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @is_dir_sep(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %91, %82
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @is_dir_sep(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %83

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %103, %94
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @is_dir_sep(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %95

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %10, align 4
  br label %114

109:                                              ; preds = %74
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %109, %106
  br label %50

115:                                              ; preds = %72
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %155

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %10, align 4
  br label %154

129:                                              ; preds = %123
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @is_dir_sep(i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %146, %137
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @is_dir_sep(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %138

149:                                              ; preds = %138
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %10, align 4
  br label %153

151:                                              ; preds = %129
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %151, %149
  br label %154

154:                                              ; preds = %153, %127
  br label %187

155:                                              ; preds = %119, %115
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %155
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %159
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call i64 @is_dir_sep(i8 signext %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %180, %171
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = call i64 @is_dir_sep(i8 signext %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %172

183:                                              ; preds = %172
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %183, %163
  br label %186

186:                                              ; preds = %185, %159, %155
  br label %187

187:                                              ; preds = %186, %154
  %188 = load i32, i32* %10, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %5, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %8, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %187
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %259

202:                                              ; preds = %198
  %203 = load i8*, i8** %5, align 8
  store i8* %203, i8** %4, align 8
  br label %259

204:                                              ; preds = %187
  %205 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %206 = call i32 @strbuf_reset(%struct.strbuf* %205)
  %207 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @strbuf_grow(%struct.strbuf* %207, i32 %208)
  br label %210

210:                                              ; preds = %237, %236, %204
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %210
  %215 = load i8*, i8** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = call i64 @is_dir_sep(i8 signext %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %214
  %223 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %224 = call i32 @strbuf_addstr(%struct.strbuf* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %225

225:                                              ; preds = %233, %222
  %226 = load i8*, i8** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = call i64 @is_dir_sep(i8 signext %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %225

236:                                              ; preds = %225
  br label %210

237:                                              ; preds = %214
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %210

240:                                              ; preds = %210
  %241 = load i8*, i8** %6, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = call i64 @is_dir_sep(i8 signext %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %240
  %250 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %251 = call i32 @strbuf_addstr(%struct.strbuf* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %240
  %253 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %254 = load i8*, i8** %5, align 8
  %255 = call i32 @strbuf_addstr(%struct.strbuf* %253, i8* %254)
  %256 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %257 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %4, align 8
  br label %259

259:                                              ; preds = %252, %202, %201, %47, %36, %32
  %260 = load i8*, i8** %4, align 8
  ret i8* %260
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @have_same_root(i8*, i8*) #1

declare dso_local i32 @has_dos_drive_prefix(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
