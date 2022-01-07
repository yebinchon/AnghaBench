; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ComparePaks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ComparePaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }

@fs_numServerReferencedPaks = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@fs_serverReferencedPakNames = common dso_local global i8** null, align 8
@BASEGAME = common dso_local global i32 0, align 4
@NUM_ID_PAKS = common dso_local global i32 0, align 4
@BASETA = common dso_local global i32 0, align 4
@NUM_TA_PAKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WARNING: Invalid download name %s\0A\00", align 1
@fs_searchpaths = common dso_local global %struct.TYPE_5__* null, align 8
@fs_serverReferencedPaks = common dso_local global i64* null, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.pk3\00", align 1
@MAX_ZPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s.%08x.pk3\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c" (local file exists with wrong checksum)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_ComparePaks(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @fs_numServerReferencedPaks, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @qfalse, align 8
  store i64 %18, i64* %4, align 8
  br label %235

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  store i8 0, i8* %20, align 1
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %224, %19
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @fs_numServerReferencedPaks, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %227

25:                                               ; preds = %21
  %26 = load i64, i64* @qfalse, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @BASEGAME, align 4
  %33 = load i32, i32* @NUM_ID_PAKS, align 4
  %34 = call i64 @FS_idPak(i8* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %25
  %37 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @BASETA, align 4
  %43 = load i32, i32* @NUM_TA_PAKS, align 4
  %44 = call i64 @FS_idPak(i8* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %25
  br label %224

47:                                               ; preds = %36
  %48 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @FS_CheckDirTraversal(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %224

62:                                               ; preds = %47
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs_searchpaths, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %8, align 8
  br label %64

64:                                               ; preds = %87, %62
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** @fs_serverReferencedPaks, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i64, i64* @qtrue, align 8
  store i64 %85, i64* %9, align 8
  br label %91

86:                                               ; preds = %72, %67
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %8, align 8
  br label %64

91:                                               ; preds = %84, %64
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %223, label %94

94:                                               ; preds = %91
  %95 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %223

101:                                              ; preds = %94
  %102 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %223

110:                                              ; preds = %101
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %194

113:                                              ; preds = %110
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = load i8*, i8** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %10, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @Q_strcat(i8* %119, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @Q_strcat(i8* %122, i32 %123, i8* %128)
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @Q_strcat(i8* %130, i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @Q_strcat(i8* %133, i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  %142 = call i64 @FS_SV_FileExists(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %113
  %145 = load i32, i32* @MAX_ZPATH, align 4
  %146 = zext i32 %145 to i64
  %147 = call i8* @llvm.stacksave()
  store i8* %147, i8** %12, align 8
  %148 = alloca i8, i64 %146, align 16
  store i64 %146, i64* %13, align 8
  %149 = trunc i64 %146 to i32
  %150 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i64*, i64** @fs_serverReferencedPaks, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @Com_sprintf(i8* %148, i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %154, i64 %159)
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @Q_strcat(i8* %161, i32 %162, i8* %148)
  %164 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %164)
  br label %177

165:                                              ; preds = %113
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @Q_strcat(i8* %166, i32 %167, i8* %172)
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @Q_strcat(i8* %174, i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %165, %144
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = sext i32 %179 to i64
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = add nsw i64 %180, %185
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = icmp sge i64 %186, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %177
  %192 = load i8*, i8** %10, align 8
  store i8 0, i8* %192, align 1
  br label %227

193:                                              ; preds = %177
  br label %222

194:                                              ; preds = %110
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @Q_strcat(i8* %195, i32 %196, i8* %201)
  %203 = load i8*, i8** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @Q_strcat(i8* %203, i32 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %206 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %210)
  %212 = call i64 @FS_SV_FileExists(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %194
  %215 = load i8*, i8** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @Q_strcat(i8* %215, i32 %216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %218

218:                                              ; preds = %214, %194
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @Q_strcat(i8* %219, i32 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %222

222:                                              ; preds = %218, %193
  br label %223

223:                                              ; preds = %222, %101, %94, %91
  br label %224

224:                                              ; preds = %223, %55, %46
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %21

227:                                              ; preds = %191, %21
  %228 = load i8*, i8** %5, align 8
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i64, i64* @qtrue, align 8
  store i64 %232, i64* %4, align 8
  br label %235

233:                                              ; preds = %227
  %234 = load i64, i64* @qfalse, align 8
  store i64 %234, i64* %4, align 8
  br label %235

235:                                              ; preds = %233, %231, %17
  %236 = load i64, i64* %4, align 8
  ret i64 %236
}

declare dso_local i64 @FS_idPak(i8*, i32, i32) #1

declare dso_local i64 @FS_CheckDirTraversal(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i64 @FS_SV_FileExists(i32) #1

declare dso_local i32 @va(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
