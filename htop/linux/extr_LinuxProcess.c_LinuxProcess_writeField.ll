; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_LinuxProcess.c_LinuxProcess_writeField.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_LinuxProcess.c_LinuxProcess_writeField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32 }

@CRT_colors = common dso_local global i32* null, align 8
@DEFAULT_COLOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@PROCESS_SHADOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"?        \00", align 1
@PAGE_SIZE_KB = common dso_local global i32 0, align 4
@btime = common dso_local global i32 0, align 4
@_SC_CLK_TCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%R \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%b%d \00", align 1
@Process_pidFormat = common dso_local global i32 0, align 4
@IOPRIO_CLASS_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"B%1d \00", align 1
@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@IOPRIO_CLASS_RT = common dso_local global i32 0, align 4
@PROCESS_HIGH_PRIORITY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"R%1d \00", align 1
@IOPRIO_CLASS_IDLE = common dso_local global i32 0, align 4
@PROCESS_LOW_PRIORITY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"id \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"?? \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LinuxProcess_writeField(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 255
  store i8 0, i8* %22, align 1
  %23 = load i32*, i32** @CRT_colors, align 8
  %24 = load i64, i64* @DEFAULT_COLOR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  store i32 255, i32* %11, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  switch i32 %28, label %228 [
    i32 133, label %29
    i32 157, label %51
    i32 158, label %58
    i32 148, label %65
    i32 147, label %74
    i32 146, label %83
    i32 144, label %92
    i32 145, label %101
    i32 132, label %110
    i32 136, label %116
    i32 153, label %122
    i32 155, label %128
    i32 137, label %134
    i32 143, label %153
    i32 152, label %163
  ]

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 30
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 30
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 5
  %41 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %50

42:                                               ; preds = %29
  %43 = load i32*, i32** @CRT_colors, align 8
  %44 = load i64, i64* @PROCESS_SHADOW, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %42, %34
  br label %233

51:                                               ; preds = %3
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 29
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @Process_colorNumber(i32* %52, i32 %55, i32 %56)
  br label %238

58:                                               ; preds = %3
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 28
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @Process_colorNumber(i32* %59, i32 %62, i32 %63)
  br label %238

65:                                               ; preds = %3
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PAGE_SIZE_KB, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @Process_humanNumber(i32* %66, i32 %71, i32 %72)
  br label %238

74:                                               ; preds = %3
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PAGE_SIZE_KB, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @Process_humanNumber(i32* %75, i32 %80, i32 %81)
  br label %238

83:                                               ; preds = %3
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PAGE_SIZE_KB, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @Process_humanNumber(i32* %84, i32 %89, i32 %90)
  br label %238

92:                                               ; preds = %3
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PAGE_SIZE_KB, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @Process_humanNumber(i32* %93, i32 %98, i32 %99)
  br label %238

101:                                              ; preds = %3
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PAGE_SIZE_KB, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @Process_humanNumber(i32* %102, i32 %107, i32 %108)
  br label %238

110:                                              ; preds = %3
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 27
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @Process_printTime(i32* %111, i32 %114)
  br label %238

116:                                              ; preds = %3
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 26
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @Process_printTime(i32* %117, i32 %120)
  br label %238

122:                                              ; preds = %3
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 25
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @Process_printTime(i32* %123, i32 %126)
  br label %238

128:                                              ; preds = %3
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 24
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @Process_printTime(i32* %129, i32 %132)
  br label %238

134:                                              ; preds = %3
  %135 = load i32, i32* @btime, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @_SC_CLK_TCK, align 4
  %140 = call i32 @sysconf(i32 %139)
  %141 = sdiv i32 %138, %140
  %142 = add nsw i32 %135, %141
  store i32 %142, i32* %13, align 4
  %143 = call i32 @localtime_r(i32* %13, %struct.tm* %12)
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @time(i32* null)
  %148 = sub nsw i32 %147, 86400
  %149 = icmp sgt i32 %146, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %152 = call i32 @strftime(i8* %144, i32 %145, i8* %151, %struct.tm* %12)
  br label %233

153:                                              ; preds = %3
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @Process_pidFormat, align 4
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %154, i32 %155, i8* %158, i32 %161)
  br label %233

163:                                              ; preds = %3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @IOPriority_class(i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @IOPRIO_CLASS_NONE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 20
  %178 = sdiv i32 %177, 5
  %179 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %172, i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %227

180:                                              ; preds = %163
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @IOPriority_data(i32 %189)
  %191 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %185, i32 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  br label %226

192:                                              ; preds = %180
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @IOPRIO_CLASS_RT, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load i32*, i32** @CRT_colors, align 8
  %198 = load i64, i64* @PROCESS_HIGH_PRIORITY, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %10, align 4
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @IOPriority_data(i32 %205)
  %207 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %201, i32 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  br label %225

208:                                              ; preds = %192
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @IOPRIO_CLASS_IDLE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32*, i32** @CRT_colors, align 8
  %214 = load i64, i64* @PROCESS_LOW_PRIORITY, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %10, align 4
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %217, i32 %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %224

220:                                              ; preds = %208
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %222 = load i32, i32* %11, align 4
  %223 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %221, i32 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %212
  br label %225

225:                                              ; preds = %224, %196
  br label %226

226:                                              ; preds = %225, %184
  br label %227

227:                                              ; preds = %226, %171
  br label %233

228:                                              ; preds = %3
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load i64, i64* %6, align 8
  %232 = call i32 @Process_writeField(%struct.TYPE_7__* %229, i32* %230, i64 %231)
  br label %238

233:                                              ; preds = %227, %153, %134, %50
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %10, align 4
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %237 = call i32 @RichString_append(i32* %234, i32 %235, i8* %236)
  br label %238

238:                                              ; preds = %233, %228, %128, %122, %116, %110, %101, %92, %83, %74, %65, %58, %51
  ret void
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @Process_colorNumber(i32*, i32, i32) #1

declare dso_local i32 @Process_humanNumber(i32*, i32, i32) #1

declare dso_local i32 @Process_printTime(i32*, i32) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @IOPriority_class(i32) #1

declare dso_local i32 @IOPriority_data(i32) #1

declare dso_local i32 @Process_writeField(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
