; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kopen.c_http_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kopen.c_http_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GET %s HTTP/1.0\0D\0AHost: %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @http_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %255

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %36, %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 47
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %23

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sub nsw i64 %44, 7
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i8* @calloc(i32 %48, i32 1)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @strncpy(i8* %50, i8* %52, i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %73, %39
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 58
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ false, %60 ], [ %69, %65 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  br label %60

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 58
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 0, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %76
  %85 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @strdup(i8* %89)
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i8* [ %96, %95 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %97 ]
  %100 = call i8* @strdup(i8* %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8
  br label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i8* [ %106, %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %107 ]
  %110 = call i8* @strdup(i8* %109)
  store i8* %110, i8** %10, align 8
  br label %163

111:                                              ; preds = %84
  %112 = load i8*, i8** %5, align 8
  %113 = call i8* @strstr(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %114 = load i8*, i8** %5, align 8
  %115 = icmp eq i8* %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 7
  %119 = call i8* @strdup(i8* %118)
  br label %123

120:                                              ; preds = %111
  %121 = load i8*, i8** %5, align 8
  %122 = call i8* @strdup(i8* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi i8* [ %119, %116 ], [ %122, %120 ]
  store i8* %124, i8** %8, align 8
  %125 = load i8*, i8** %8, align 8
  store i8* %125, i8** %6, align 8
  br label %126

126:                                              ; preds = %139, %123
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %6, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 58
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 8
  br label %126

142:                                              ; preds = %136
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 58
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %6, align 8
  store i8 0, i8* %148, align 1
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** %6, align 8
  br label %158

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i8* [ %156, %155 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %157 ]
  %160 = call i8* @strdup(i8* %159)
  store i8* %160, i8** %9, align 8
  %161 = load i8*, i8** %3, align 8
  %162 = call i8* @strdup(i8* %161)
  store i8* %162, i8** %10, align 8
  br label %163

163:                                              ; preds = %158, %108
  store i32 0, i32* %14, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @socket_connect(i8* %164, i8* %165)
  store i32 %166, i32* %12, align 4
  %167 = call i8* @calloc(i32 65536, i32 1)
  store i8* %167, i8** %11, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8*, i8** %10, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %172, i8* %173)
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %14, align 4
  %179 = load i8*, i8** %11, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = call i64 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @write(i32 %188, i8* %189, i32 %190)
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %221, %163
  %193 = load i32, i32* %12, align 4
  %194 = load i8*, i8** %11, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = call i64 @read(i32 %193, i8* %197, i32 1)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %224

200:                                              ; preds = %192
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 10
  br i1 %207, label %208, label %221

208:                                              ; preds = %200
  %209 = load i32, i32* %14, align 4
  %210 = icmp sge i32 %209, 3
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i8*, i8** %11, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = getelementptr inbounds i8, i8* %215, i64 -3
  %217 = call i64 @strncmp(i8* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %224

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %208, %200
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %192

224:                                              ; preds = %219, %192
  %225 = load i8*, i8** %11, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  store i8 0, i8* %228, align 1
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %229, 14
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @close(i32 %232)
  store i32 -1, i32* %12, align 4
  br label %234

234:                                              ; preds = %231, %224
  %235 = load i8*, i8** %11, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 8
  %237 = call i32 @strtol(i8* %236, i8** %4, i32 0)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 200
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @close(i32 %241)
  store i32 -1, i32* %12, align 4
  br label %243

243:                                              ; preds = %240, %234
  %244 = load i8*, i8** %11, align 8
  %245 = call i32 @free(i8* %244)
  %246 = load i8*, i8** %7, align 8
  %247 = call i32 @free(i8* %246)
  %248 = load i8*, i8** %8, align 8
  %249 = call i32 @free(i8* %248)
  %250 = load i8*, i8** %9, align 8
  %251 = call i32 @free(i8* %250)
  %252 = load i8*, i8** %10, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %243, %19
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @socket_connect(i8*, i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
