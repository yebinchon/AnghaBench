; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_make_shader.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_make_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ERROR: Failed to compile %s shader\0A\00", align 1
@GL_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fragment\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vertex\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ERROR: \0A%s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @make_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_shader(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8192 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @glCreateShader(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = bitcast i8** %4 to i32**
  %16 = call i32 @glShaderSource(i64 %14, i32 1, i32** %15, i32* null)
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @glCompileShader(i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %21 = call i32 @glGetShaderiv(i64 %19, i32 %20, i64* %6)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @GL_TRUE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %13
  %26 = load i32, i32* @stderr, align 4
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @GL_FRAGMENT_SHADER, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %35 = call i32 @glGetShaderInfoLog(i64 %33, i32 8192, i32* %7, i8* %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @glDeleteShader(i64 %39)
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %25, %13
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @glCreateShader(i64) #1

declare dso_local i32 @glShaderSource(i64, i32, i32**, i32*) #1

declare dso_local i32 @glCompileShader(i64) #1

declare dso_local i32 @glGetShaderiv(i64, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @glGetShaderInfoLog(i64, i32, i32*, i8*) #1

declare dso_local i32 @glDeleteShader(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
