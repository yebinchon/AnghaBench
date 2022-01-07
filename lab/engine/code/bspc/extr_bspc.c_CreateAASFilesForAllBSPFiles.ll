; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_bspc.c_CreateAASFilesForAllBSPFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_bspc.c_CreateAASFilesForAllBSPFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8** }
%struct.stat = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_9__* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"maps/*.bsp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"*.pk3/maps/*.bsp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"maps/*.aas\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"*.pk3/maps/*.aas\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"found %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".aas\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateAASFilesForAllBSPFiles(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @strcpy(i8* %21, i8* %37)
  %39 = trunc i64 %19 to i32
  %40 = call i32 @AppendPathSeperator(i8* %21, i32 %39)
  %41 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @glob(i8* %21, i32 0, i32* null, %struct.TYPE_10__* %3)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %173, %1
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %176

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcpy(i8* %36, i8* %54)
  %56 = call i32 @stat(i8* %36, %struct.stat* %4)
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @S_IFDIR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %172

62:                                               ; preds = %48
  %63 = trunc i64 %35 to i32
  %64 = call i32 @AppendPathSeperator(i8* %36, i32 %63)
  %65 = call i32 @strcpy(i8* %24, i8* %36)
  %66 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %67 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %24)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %15, align 8
  %68 = call i32 @strcpy(i8* %24, i8* %36)
  %69 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %70 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %24)
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %16, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %13, align 8
  br label %72

72:                                               ; preds = %82, %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %13, align 8
  br label %72

86:                                               ; preds = %80, %72
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %92, align 8
  br label %95

93:                                               ; preds = %86
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %16, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = call i32 @strcpy(i8* %27, i8* %36)
  %97 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %98 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %27)
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %15, align 8
  %99 = call i32 @strcpy(i8* %27, i8* %36)
  %100 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %101 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %27)
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %17, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %13, align 8
  br label %103

103:                                              ; preds = %113, %95
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %117

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %13, align 8
  br label %103

117:                                              ; preds = %111, %103
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %123, align 8
  br label %126

124:                                              ; preds = %117
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %17, align 8
  br label %126

126:                                              ; preds = %124, %120
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %13, align 8
  br label %128

128:                                              ; preds = %167, %126
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %171

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %134, i8* %137)
  %139 = call i32 @Log_Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %30)
  %140 = call i64 @strlen(i8* %30)
  %141 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %142 = sub i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %30, i64 %142
  %144 = call i32 @strcpy(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %14, align 8
  br label %146

146:                                              ; preds = %162, %131
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %148 = icmp ne %struct.TYPE_9__* %147, null
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %152, i8* %155)
  %157 = call i32 @stricmp(i8* %30, i8* %33)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %149
  %160 = call i32 @Log_Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %33)
  br label %166

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %14, align 8
  br label %146

166:                                              ; preds = %159, %146
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %13, align 8
  br label %128

171:                                              ; preds = %128
  br label %172

172:                                              ; preds = %171, %48
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %43

176:                                              ; preds = %43
  %177 = call i32 @globfree(%struct.TYPE_10__* %3)
  %178 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @AppendPathSeperator(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local %struct.TYPE_9__* @FindQuakeFiles(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @Log_Print(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @stricmp(i8*, i8*) #2

declare dso_local i32 @globfree(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
