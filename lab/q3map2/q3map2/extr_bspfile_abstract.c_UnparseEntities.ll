; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_UnparseEntities.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_UnparseEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@bspEntData = common dso_local global i8* null, align 8
@numBSPEntities = common dso_local global i32 0, align 4
@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"misc_model\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_decal\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_skybox\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\22%s\22 \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@MAX_MAP_ENTSTRING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Entity text too long\00", align 1
@bspEntDataSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnparseEntities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = load i8*, i8** @bspEntData, align 8
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8 0, i8* %11, align 1
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %109, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @numBSPEntities, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @numEntities, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %112

22:                                               ; preds = %20
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entities, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %109

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entities, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = call i8* @ValueForKey(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @Q_stricmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @Q_stricmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @Q_stricmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %41, %32
  br label %109

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %3, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entities, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %4, align 8
  br label %61

61:                                               ; preds = %91, %50
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcpy(i8* %65, i32 %68)
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %71 = call i32 @StripTrailing(i8* %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strcpy(i8* %72, i32 %75)
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %78 = call i32 @StripTrailing(i8* %77)
  %79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %82 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %85 = call i32 @strcat(i8* %83, i8* %84)
  %86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %87 = call i32 @strlen(i8* %86)
  %88 = load i8*, i8** %3, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %64
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %4, align 8
  br label %61

95:                                               ; preds = %61
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strcat(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %3, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load i8*, i8** %2, align 8
  %102 = load i32, i32* @MAX_MAP_ENTSTRING, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = icmp ugt i8* %100, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %95
  br label %109

109:                                              ; preds = %108, %49, %31
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %12

112:                                              ; preds = %20
  %113 = load i8*, i8** %3, align 8
  %114 = load i8*, i8** %2, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = add nsw i64 %117, 1
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* @bspEntDataSize, align 4
  ret void
}

declare dso_local i8* @ValueForKey(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @StripTrailing(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
