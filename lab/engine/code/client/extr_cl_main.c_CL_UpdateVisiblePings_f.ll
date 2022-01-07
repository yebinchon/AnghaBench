; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_UpdateVisiblePings_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_UpdateVisiblePings_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@cl_pinglist = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"getinfo xxx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_UpdateVisiblePings_f(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @MAX_STRING_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 130
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %239

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %28 = call i32 (...) @CL_GetPingQueueCount()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %203

32:                                               ; preds = %26
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %33 = load i32, i32* %3, align 4
  switch i32 %33, label %46 [
    i32 128, label %34
    i32 129, label %38
    i32 130, label %42
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 8), align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 0
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %12, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 4
  store i32 %37, i32* %9, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 7), align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 0
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %12, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2), align 8
  store i32 %41, i32* %9, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 6), align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %12, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 3), align 4
  store i32 %45, i32* %9, align 4
  br label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %239

48:                                               ; preds = %42, %38, %34
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %199, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %202

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %198

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %169

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %202

74:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %107, %74
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %107

89:                                               ; preds = %79
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @NET_CompareAdr(i32 %102, i32 %100)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %110

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %75

110:                                              ; preds = %105, %75
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %168

114:                                              ; preds = %110
  %115 = load i32, i32* @qtrue, align 4
  store i32 %115, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %131, %114
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  br label %134

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %116

134:                                              ; preds = %129, %116
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = call i32 @memcpy(%struct.TYPE_9__* %139, i32* %144, i32 4)
  %146 = call i32 (...) @Sys_Milliseconds()
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32 %146, i32* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @NS_CLIENT, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @NET_OutOfBandPrint(i32 %157, i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %134, %110
  br label %197

169:                                              ; preds = %61
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %169
  %178 = load i32, i32* %3, align 4
  %179 = icmp eq i32 %178, 129
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 4), align 8
  %182 = icmp ugt i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 4), align 8
  %185 = add i64 %184, -1
  store i64 %185, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 4), align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %188
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 5), align 8
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 4), align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = call i32 @CL_InitServerInfo(%struct.TYPE_8__* %189, i32* %192)
  br label %194

194:                                              ; preds = %183, %180
  br label %195

195:                                              ; preds = %194, %177
  br label %196

196:                                              ; preds = %195, %169
  br label %197

197:                                              ; preds = %196, %168
  br label %198

198:                                              ; preds = %197, %53
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %49

202:                                              ; preds = %73, %49
  br label %203

203:                                              ; preds = %202, %26
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @qtrue, align 4
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %206, %203
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %234, %208
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %237

213:                                              ; preds = %209
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %213
  br label %234

223:                                              ; preds = %213
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @MAX_STRING_CHARS, align 4
  %226 = call i32 @CL_GetPing(i32 %224, i8* %17, i32 %225, i32* %8)
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @CL_ClearPing(i32 %230)
  %232 = load i32, i32* @qtrue, align 4
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %229, %223
  br label %234

234:                                              ; preds = %233, %222
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %209

237:                                              ; preds = %209
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %239

239:                                              ; preds = %237, %46, %24
  %240 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CL_GetPingQueueCount(...) #2

declare dso_local i64 @NET_CompareAdr(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @Sys_Milliseconds(...) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #2

declare dso_local i32 @CL_InitServerInfo(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @CL_GetPing(i32, i8*, i32, i32*) #2

declare dso_local i32 @CL_ClearPing(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
