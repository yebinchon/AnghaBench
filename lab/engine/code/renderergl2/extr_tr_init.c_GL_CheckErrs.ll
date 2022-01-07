; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_GL_CheckErrs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_GL_CheckErrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i8*, i8*, i32)* }

@GL_NO_ERROR = common dso_local global i32 0, align 4
@r_ignoreGLErrors = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"GL_INVALID_ENUM\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GL_INVALID_VALUE\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"GL_INVALID_OPERATION\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"GL_STACK_OVERFLOW\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"GL_STACK_UNDERFLOW\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"GL_OUT_OF_MEMORY\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"GL_CheckErrors: %s in %s at line %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_CheckErrs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @qglGetError()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GL_NO_ERROR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_ignoreGLErrors, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %49

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %38 [
    i32 133, label %20
    i32 131, label %23
    i32 132, label %26
    i32 129, label %29
    i32 128, label %32
    i32 130, label %35
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %42

26:                                               ; preds = %18
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %42

29:                                               ; preds = %18
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %42

32:                                               ; preds = %18
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %42

35:                                               ; preds = %18
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %42

38:                                               ; preds = %18
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @Com_sprintf(i8* %39, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %35, %32, %29, %26, %23, %20
  %43 = load i32 (i32, i8*, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %44 = load i32, i32* @ERR_FATAL, align 4
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %43(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %17, %11
  ret void
}

declare dso_local i32 @qglGetError(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
