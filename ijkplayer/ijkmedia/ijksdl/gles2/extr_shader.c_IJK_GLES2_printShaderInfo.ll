; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_shader.c_IJK_GLES2_printShaderInfo.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_shader.c_IJK_GLES2_printShaderInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[GLES2][Shader] empty info\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[GLES2][Shader] error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @IJK_GLES2_printShaderInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IJK_GLES2_printShaderInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %14 = call i32 @glGetShaderiv(i32 %12, i32 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %47

19:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8* %20, i8** %6, align 8
  store i32 31, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 32
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @glGetShaderInfoLog(i32 %36, i32 %37, i32* null, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %10, %17, %44, %35
  ret void
}

declare dso_local i32 @glGetShaderiv(i32, i32, i32*) #1

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
