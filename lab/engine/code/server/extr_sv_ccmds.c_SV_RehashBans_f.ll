; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_RehashBans_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_RehashBans_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_7__* null, align 8
@serverBansCount = common dso_local global i32 0, align 4
@sv_banFile = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SERVER_MAXBANS = common dso_local global i32 0, align 4
@serverBans = common dso_local global %struct.TYPE_6__* null, align 8
@NA_UNSPEC = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_RehashBans_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_RehashBans_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_sv_running, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 1, i32* %11, align 4
  br label %228

21:                                               ; preds = %0
  store i32 0, i32* @serverBansCount, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %21
  store i32 1, i32* %11, align 4
  br label %228

33:                                               ; preds = %26
  %34 = trunc i64 %13 to i32
  %35 = call i32 (...) @FS_GetCurrentGameDir()
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @Com_sprintf(i8* %15, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %38)
  %40 = call i32 @FS_SV_FOpenFileRead(i8* %15, i32* %3)
  store i32 %40, i32* %2, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %227

42:                                               ; preds = %33
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @FS_FCloseFile(i32 %46)
  store i32 1, i32* %11, align 4
  br label %228

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = call i8* @Z_Malloc(i32 %49)
  store i8* %50, i8** %4, align 8
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @FS_Read(i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @FS_FCloseFile(i32 %55)
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %8, align 8
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %220, %48
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @SERVER_MAXBANS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ult i8* %67, %68
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %223

72:                                               ; preds = %70
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %87, %72
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 32
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  br label %75

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8*, i8** %8, align 8
  %94 = icmp uge i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %223

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  store i8* %100, i8** %7, align 8
  br label %101

101:                                              ; preds = %113, %96
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 10
  br label %110

110:                                              ; preds = %105, %101
  %111 = phi i1 [ false, %101 ], [ %109, %105 ]
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  br label %101

116:                                              ; preds = %110
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = icmp uge i8* %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %223

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* @NA_UNSPEC, align 4
  %131 = call i64 @NET_StringToAdr(i8* %124, %struct.TYPE_8__* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %217

133:                                              ; preds = %121
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 48
  %139 = zext i1 %138 to i32
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @atoi(i8* %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %148 = load i32, i32* %1, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NA_IP, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %183

161:                                              ; preds = %133
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %163 = load i32, i32* %1, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %177, label %169

169:                                              ; preds = %161
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 32
  br i1 %176, label %177, label %183

177:                                              ; preds = %169, %161
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 32, i32* %182, align 4
  br label %216

183:                                              ; preds = %169, %133
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %185 = load i32, i32* %1, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NA_IP6, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %215

193:                                              ; preds = %183
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %209, label %201

201:                                              ; preds = %193
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp sgt i32 %207, 128
  br i1 %208, label %209, label %215

209:                                              ; preds = %201, %193
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serverBans, align 8
  %211 = load i32, i32* %1, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  store i32 128, i32* %214, align 4
  br label %215

215:                                              ; preds = %209, %201, %183
  br label %216

216:                                              ; preds = %215, %177
  br label %217

217:                                              ; preds = %216, %121
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8* %219, i8** %5, align 8
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %1, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %1, align 4
  br label %61

223:                                              ; preds = %120, %95, %70
  %224 = load i32, i32* %1, align 4
  store i32 %224, i32* @serverBansCount, align 4
  %225 = load i8*, i8** %4, align 8
  %226 = call i32 @Z_Free(i8* %225)
  br label %227

227:                                              ; preds = %223, %33
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %227, %45, %32, %20
  %229 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %11, align 4
  switch i32 %230, label %232 [
    i32 0, label %231
    i32 1, label %231
  ]

231:                                              ; preds = %228, %228
  ret void

232:                                              ; preds = %228
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32*) #2

declare dso_local i32 @FS_GetCurrentGameDir(...) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i8*, i32*) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

declare dso_local i8* @Z_Malloc(i32) #2

declare dso_local i32 @FS_Read(i8*, i32, i32) #2

declare dso_local i64 @NET_StringToAdr(i8*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Z_Free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
