; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_shader.c_IJK_GLES2_loadShader.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_shader.c_IJK_GLES2_loadShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"glCreateShader\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"glShaderSource\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"glCompileShader\00", align 1
@GL_COMPILE_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IJK_GLES2_loadShader(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @glCreateShader(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = call i32 @IJK_GLES2_checkError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @glShaderSource(i64 %19, i32 1, i8** %5, i32* null)
  %21 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @glCompileShader(i64 %22)
  %24 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %27 = call i32 @glGetShaderiv(i64 %25, i32 %26, i64* %7)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %33

31:                                               ; preds = %16
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %42

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @IJK_GLES2_printShaderInfo(i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @glDeleteShader(i64 %39)
  br label %41

41:                                               ; preds = %36, %33
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %41, %31, %15
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @glCreateShader(i32) #1

declare dso_local i32 @IJK_GLES2_checkError(i8*) #1

declare dso_local i32 @glShaderSource(i64, i32, i8**, i32*) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @glCompileShader(i64) #1

declare dso_local i32 @glGetShaderiv(i64, i32, i64*) #1

declare dso_local i32 @IJK_GLES2_printShaderInfo(i64) #1

declare dso_local i32 @glDeleteShader(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
