; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_has_extension.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_gl.c_glad_gl_has_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_IS_SOME_NEW_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8**, i8*)* @glad_gl_has_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glad_gl_has_extension(i32 %0, i8* %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @GLAD_VERSION_MAJOR(i32 %17)
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @GLAD_GL_IS_SOME_NEW_VERSION, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %20, %5
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %23
  store i32 0, i32* %6, align 4
  br label %89

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %65
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strstr(i8* %33, i8* %34)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %89

39:                                               ; preds = %32
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %65

54:                                               ; preds = %48, %39
  %55 = load i8*, i8** %14, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 1, i32* %6, align 4
  br label %89

65:                                               ; preds = %59, %48
  %66 = load i8*, i8** %14, align 8
  store i8* %66, i8** %12, align 8
  br label %32

67:                                               ; preds = %20
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i8**, i8*** %10, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i64 @strcmp(i8* %78, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %89

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %82, %64, %38, %30
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @GLAD_VERSION_MAJOR(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
