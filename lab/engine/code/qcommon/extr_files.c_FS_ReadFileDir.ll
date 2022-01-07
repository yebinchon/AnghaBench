; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ReadFileDir.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ReadFileDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Filesystem call made without initialization\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"FS_ReadFile with empty name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@qtrue = common dso_local global i64 0, align 8
@com_journal = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Loading %s from journal file.\0A\00", align 1
@com_journalDataFile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Read from journalDataFile failed\00", align 1
@fs_loadCount = common dso_local global i32 0, align 4
@fs_loadStack = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Writing zero for %s to journal file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Writing len for %s to journal file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Writing %s to journal file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_ReadFileDir(i8* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i32, i32* @fs_searchpaths, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ERR_FATAL, align 4
  %20 = call i32 @Com_Error(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @ERR_FATAL, align 4
  %31 = call i32 @Com_Error(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  store i64* null, i64** %12, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strstr(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %101

36:                                               ; preds = %32
  %37 = load i64, i64* @qtrue, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %100

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i64, i64* @com_journalDataFile, align 8
  %49 = call i32 @FS_Read(i64* %14, i64 8, i64 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i8**, i8*** %9, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8**, i8*** %9, align 8
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %56, %53
  store i64 -1, i64* %5, align 8
  br label %213

59:                                               ; preds = %45
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i8**, i8*** %9, align 8
  %64 = icmp eq i8** %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 1, i64* %5, align 8
  br label %213

66:                                               ; preds = %62
  %67 = load i8**, i8*** %9, align 8
  store i8* null, i8** %67, align 8
  store i64 -1, i64* %5, align 8
  br label %213

68:                                               ; preds = %59
  %69 = load i8**, i8*** %9, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  store i64 %72, i64* %5, align 8
  br label %213

73:                                               ; preds = %68
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i64* @Hunk_AllocateTempMemory(i64 %75)
  store i64* %76, i64** %12, align 8
  %77 = load i64*, i64** %12, align 8
  %78 = bitcast i64* %77 to i8*
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @com_journalDataFile, align 8
  %83 = call i32 @FS_Read(i64* %80, i64 %81, i64 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* @ERR_FATAL, align 4
  %90 = call i32 @Com_Error(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i32, i32* @fs_loadCount, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @fs_loadCount, align 4
  %94 = load i32, i32* @fs_loadStack, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @fs_loadStack, align 4
  %96 = load i64*, i64** %12, align 8
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %5, align 8
  br label %213

100:                                              ; preds = %40, %36
  br label %103

101:                                              ; preds = %32
  %102 = load i64, i64* @qfalse, align 8
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* @qfalse, align 8
  %111 = call i64 @FS_FOpenFileRead(i8* %109, i64* %10, i64 %110)
  store i64 %111, i64* %14, align 8
  br label %118

112:                                              ; preds = %103
  %113 = load i8*, i8** %6, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i64, i64* @qfalse, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i64 @FS_FOpenFileReadDir(i8* %113, i32* %114, i64* %10, i64 %115, i64 %116)
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i64, i64* %10, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i8**, i8*** %9, align 8
  %123 = icmp ne i8** %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i8**, i8*** %9, align 8
  store i8* null, i8** %125, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %131 = icmp ne %struct.TYPE_2__* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  store i64 0, i64* %14, align 8
  %140 = load i64, i64* @com_journalDataFile, align 8
  %141 = call i32 @FS_Write(i64* %14, i64 8, i64 %140)
  %142 = load i64, i64* @com_journalDataFile, align 8
  %143 = call i32 @FS_Flush(i64 %142)
  br label %144

144:                                              ; preds = %137, %132, %129, %126
  store i64 -1, i64* %5, align 8
  br label %213

145:                                              ; preds = %118
  %146 = load i8**, i8*** %9, align 8
  %147 = icmp ne i8** %146, null
  br i1 %147, label %170, label %148

148:                                              ; preds = %145
  %149 = load i64, i64* %13, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %148
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %153 = icmp ne %struct.TYPE_2__* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %160)
  %162 = load i64, i64* @com_journalDataFile, align 8
  %163 = call i32 @FS_Write(i64* %14, i64 8, i64 %162)
  %164 = load i64, i64* @com_journalDataFile, align 8
  %165 = call i32 @FS_Flush(i64 %164)
  br label %166

166:                                              ; preds = %159, %154, %151, %148
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @FS_FCloseFile(i64 %167)
  %169 = load i64, i64* %14, align 8
  store i64 %169, i64* %5, align 8
  br label %213

170:                                              ; preds = %145
  %171 = load i32, i32* @fs_loadCount, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @fs_loadCount, align 4
  %173 = load i32, i32* @fs_loadStack, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @fs_loadStack, align 4
  %175 = load i64, i64* %14, align 8
  %176 = add nsw i64 %175, 1
  %177 = call i64* @Hunk_AllocateTempMemory(i64 %176)
  store i64* %177, i64** %12, align 8
  %178 = load i64*, i64** %12, align 8
  %179 = bitcast i64* %178 to i8*
  %180 = load i8**, i8*** %9, align 8
  store i8* %179, i8** %180, align 8
  %181 = load i64*, i64** %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @FS_Read(i64* %181, i64 %182, i64 %183)
  %185 = load i64*, i64** %12, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  store i64 0, i64* %187, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @FS_FCloseFile(i64 %188)
  %190 = load i64, i64* %13, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %170
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %194 = icmp ne %struct.TYPE_2__* %193, null
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %201)
  %203 = load i64, i64* @com_journalDataFile, align 8
  %204 = call i32 @FS_Write(i64* %14, i64 8, i64 %203)
  %205 = load i64*, i64** %12, align 8
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* @com_journalDataFile, align 8
  %208 = call i32 @FS_Write(i64* %205, i64 %206, i64 %207)
  %209 = load i64, i64* @com_journalDataFile, align 8
  %210 = call i32 @FS_Flush(i64 %209)
  br label %211

211:                                              ; preds = %200, %195, %192, %170
  %212 = load i64, i64* %14, align 8
  store i64 %212, i64* %5, align 8
  br label %213

213:                                              ; preds = %211, %166, %144, %91, %71, %66, %65, %58
  %214 = load i64, i64* %5, align 8
  ret i64 %214
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i8*) #1

declare dso_local i32 @FS_Read(i64*, i64, i64) #1

declare dso_local i64* @Hunk_AllocateTempMemory(i64) #1

declare dso_local i64 @FS_FOpenFileRead(i8*, i64*, i64) #1

declare dso_local i64 @FS_FOpenFileReadDir(i8*, i32*, i64*, i64, i64) #1

declare dso_local i32 @FS_Write(i64*, i64, i64) #1

declare dso_local i32 @FS_Flush(i64) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
