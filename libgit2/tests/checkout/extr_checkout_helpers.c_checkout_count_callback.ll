; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_checkout_count_callback.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_checkout_count_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }

@GIT_CHECKOUT_NOTIFY_CONFLICT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"M %s (conflicts with M %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"M %s (conflicts with D %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Existing %s (conflicts with A %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"How can an untracked file be a conflict (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"D %s (conflicts with M %s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"D %s (conflicts with D %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"How can an added file with no workdir be a conflict (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"How can a nonexistent file be a conflict (%s)\0A\00", align 1
@GIT_CHECKOUT_NOTIFY_DIRTY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"M %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"D %s\0A\00", align 1
@GIT_CHECKOUT_NOTIFY_UPDATED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"update: M %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"update: D %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"update: A %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"update: this makes no sense %s\0A\00", align 1
@GIT_CHECKOUT_NOTIFY_UNTRACKED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"? %s\0A\00", align 1
@GIT_CHECKOUT_NOTIFY_IGNORED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"I %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkout_count_callback(i32 %0, i8* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = call i32 @GIT_UNUSED(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = call i32 @GIT_UNUSED(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %21 = call i32 @GIT_UNUSED(%struct.TYPE_7__* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GIT_CHECKOUT_NOTIFY_CONFLICT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %125

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %124

35:                                               ; preds = %26
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %51)
  br label %62

53:                                               ; preds = %41
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %60)
  br label %62

62:                                               ; preds = %53, %44
  br label %82

63:                                               ; preds = %38
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %73)
  br label %81

75:                                               ; preds = %63
  %76 = load i32, i32* @stderr, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %75, %66
  br label %82

82:                                               ; preds = %81, %62
  br label %123

83:                                               ; preds = %35
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = icmp ne %struct.TYPE_7__* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %93, i8* %96)
  br label %107

98:                                               ; preds = %86
  %99 = load i32, i32* @stderr, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %105)
  br label %107

107:                                              ; preds = %98, %89
  br label %122

108:                                              ; preds = %83
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = icmp ne %struct.TYPE_7__* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @stderr, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  br label %121

117:                                              ; preds = %108
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122, %82
  br label %124

124:                                              ; preds = %123, %26
  br label %125

125:                                              ; preds = %124, %6
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @GIT_CHECKOUT_NOTIFY_DIRTY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %125
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %130
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  br label %154

148:                                              ; preds = %139
  %149 = load i32, i32* @stderr, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %148, %142
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155, %125
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UPDATED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %161
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %175 = icmp ne %struct.TYPE_7__* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* @stderr, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %178)
  br label %184

180:                                              ; preds = %173
  %181 = load i32, i32* @stderr, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %180, %176
  br label %197

185:                                              ; preds = %170
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %187 = icmp ne %struct.TYPE_7__* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %190)
  br label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @stderr, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %192, %188
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197, %161
  br label %199

199:                                              ; preds = %198, %156
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UNTRACKED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %204
  %214 = load i32, i32* @stderr, align 4
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %213, %204
  br label %218

218:                                              ; preds = %217, %199
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @GIT_CHECKOUT_NOTIFY_IGNORED, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %218
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = load i32, i32* @stderr, align 4
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %232, %223
  br label %237

237:                                              ; preds = %236, %218
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
