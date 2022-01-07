; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_EmitVertexRemapShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_EmitVertexRemapShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s;%s\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"vertexremapshader%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\00", align 1
@entities = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitVertexRemapShader(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %10, %2
  br label %73

26:                                               ; preds = %19
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = bitcast [16 x i32]* %5 to i8*
  %35 = call i32 @MD5(i8* %31, i32 %33, i8* %34)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  %46 = load i32, i32* %45, align 16
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 6
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 8
  %54 = load i32, i32* %53, align 16
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 9
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 10
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 11
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 12
  %62 = load i32, i32* %61, align 16
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 13
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66)
  %68 = load i32*, i32** @entities, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %72 = call i32 @SetKeyValue(i32* %69, i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @MD5(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SetKeyValue(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
