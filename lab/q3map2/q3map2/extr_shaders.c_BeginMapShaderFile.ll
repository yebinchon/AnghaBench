; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_BeginMapShaderFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_BeginMapShaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@mapName = common dso_local global i8* null, align 8
@mapShaderFile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s/../%s/q3map2_%s.shader\00", align 1
@game = common dso_local global %struct.TYPE_2__* null, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Map has shader script %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@warnImage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginMapShaderFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @mapName, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %6, align 1
  %7 = load i8*, i8** @mapShaderFile, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %8, align 1
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  br label %76

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = call i32 @StripExtension(i8* %22)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %46, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 92
  br label %44

44:                                               ; preds = %37, %30, %27
  %45 = phi i1 [ false, %30 ], [ false, %27 ], [ %43, %37 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %27

49:                                               ; preds = %44
  %50 = load i8*, i8** @mapName, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %53
  %55 = call i32 @strcpy(i8* %50, i8* %54)
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %76

62:                                               ; preds = %49
  %63 = load i8*, i8** @mapShaderFile, align 8
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @mapName, align 8
  %69 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %67, i8* %68)
  %70 = load i32, i32* @SYS_VRB, align 4
  %71 = load i8*, i8** @mapShaderFile, align 8
  %72 = call i32 @Sys_FPrintf(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** @mapShaderFile, align 8
  %74 = call i32 @remove(i8* %73)
  %75 = load i32, i32* @qfalse, align 4
  store i32 %75, i32* @warnImage, align 4
  br label %76

76:                                               ; preds = %62, %61, %17
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
