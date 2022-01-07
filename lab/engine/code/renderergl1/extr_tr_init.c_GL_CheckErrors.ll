; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_GL_CheckErrors.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_GL_CheckErrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i8*)* }

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
@.str.7 = private unnamed_addr constant [19 x i8] c"GL_CheckErrors: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_CheckErrors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = call i32 (...) @qglGetError()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @GL_NO_ERROR, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %43

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_ignoreGLErrors, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %43

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  switch i32 %15, label %34 [
    i32 133, label %16
    i32 131, label %19
    i32 132, label %22
    i32 129, label %25
    i32 128, label %28
    i32 130, label %31
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %38

19:                                               ; preds = %14
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %38

22:                                               ; preds = %14
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %38

25:                                               ; preds = %14
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %38

28:                                               ; preds = %14
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %38

31:                                               ; preds = %14
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %38

34:                                               ; preds = %14
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @Com_sprintf(i8* %35, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31, %28, %25, %22, %19, %16
  %39 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %40 = load i32, i32* @ERR_FATAL, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %42 = call i32 %39(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %13, %7
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
