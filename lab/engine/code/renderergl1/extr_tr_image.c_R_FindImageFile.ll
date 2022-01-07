; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_FindImageFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_FindImageFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 (i32*)*, i32, i32 (i32, i8*, i8*, i32, i32)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (i32, i8*, i32*, i32, i32)*, i32 (i32, i8*, i32**, i32*, i32*, i32)*, i64 (i32, i8*, i8*, i32)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@hashTable = common dso_local global %struct.TYPE_10__** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"*white\00", align 1
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WARNING: reused image %s with mixed flags (%i vs %i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".dds\00", align 1
@GL_RGBA8 = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @R_FindImageFile(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = call %struct.TYPE_11__* (...) @dmlab_context()
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  %23 = load i32, i32* @MAX_QPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @MAX_QPATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %31 = load i32, i32* @qtrue, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %164

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @generateHashValue(i8* %36)
  store i64 %37, i64* %18, align 8
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @hashTable, align 8
  %39 = load i64, i64* %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %13, align 8
  br label %42

42:                                               ; preds = %75, %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %46, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32 (i32, i8*, i8*, i32, i32)*, i32 (i32, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 2), align 8
  %64 = load i32, i32* @PRINT_DEVELOPER, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 %63(i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %56
  br label %72

72:                                               ; preds = %71, %52
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %164

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %13, align 8
  br label %42

79:                                               ; preds = %42
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64 (i32, i8*, i8*, i32)*, i64 (i32, i8*, i8*, i32)** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = trunc i64 %24 to i32
  %89 = call i64 %83(i32 %86, i8* %87, i8* %26, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i8* %26, i8** %12, align 8
  br label %92

92:                                               ; preds = %91, %79
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32 (i32, i8*, i32**, i32*, i32*, i32)*, i32 (i32, i8*, i32**, i32*, i32*, i32)** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 1), align 8
  %102 = call i32 %96(i32 %99, i8* %100, i32** %17, i32* %14, i32* %15, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %92
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* @MAX_QPATH, align 4
  %107 = call i32 @COM_StripExtension(i8* %105, i8* %29, i32 %106)
  %108 = load i32, i32* @MAX_QPATH, align 4
  %109 = call i32 @Q_strcat(i8* %29, i32 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %110 = call i32 @R_LoadDDS(i8* %29, i32** %17, i32* %14, i32* %15, i64* %19, i32* %16)
  %111 = load i32*, i32** %17, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* @GL_RGBA8, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 %118(i32* %119)
  store i32* null, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %117, %113, %104
  %122 = load i32*, i32** %17, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @R_LoadImage(i8* %125, i32** %17, i32* %14, i32* %15)
  br label %127

127:                                              ; preds = %124, %121
  br label %130

128:                                              ; preds = %92
  %129 = load i32, i32* @qfalse, align 4
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i32*, i32** %17, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %164

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64 (i32, i8*, i32*, i32, i32)*, i64 (i32, i8*, i32*, i32, i32)** %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i64 %138(i32 %141, i8* %142, i32* %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %134
  store i32 1, i32* %16, align 4
  %149 = load i32, i32* @qfalse, align 4
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %148, %134
  %151 = load i8*, i8** %5, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %20, align 4
  %159 = call %struct.TYPE_10__* @R_CreateImageInternal(i8* %151, i32* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 0, i32 %158)
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %13, align 8
  %160 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %161 = load i32*, i32** %17, align 8
  %162 = call i32 %160(i32* %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %164

164:                                              ; preds = %150, %133, %72, %34
  %165 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %166
}

declare dso_local %struct.TYPE_11__* @dmlab_context(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @generateHashValue(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @R_LoadDDS(i8*, i32**, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @R_LoadImage(i8*, i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @R_CreateImageInternal(i8*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
