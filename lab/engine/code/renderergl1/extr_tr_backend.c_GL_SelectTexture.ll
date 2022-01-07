; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_SelectTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_SelectTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GL_TEXTURE0_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"glActiveTextureARB( GL_TEXTURE0_ARB )\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"glClientActiveTextureARB( GL_TEXTURE0_ARB )\0A\00", align 1
@GL_TEXTURE1_ARB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"glActiveTextureARB( GL_TEXTURE1_ARB )\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"glClientActiveTextureARB( GL_TEXTURE1_ARB )\0A\00", align 1
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"GL_SelectTexture: unit = %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_SelectTexture(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* @GL_TEXTURE0_ARB, align 4
  %12 = call i32 @qglActiveTextureARB(i32 %11)
  %13 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @GL_TEXTURE0_ARB, align 4
  %15 = call i32 @qglClientActiveTextureARB(i32 %14)
  %16 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %33

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @GL_TEXTURE1_ARB, align 4
  %22 = call i32 @qglActiveTextureARB(i32 %21)
  %23 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @GL_TEXTURE1_ARB, align 4
  %25 = call i32 @qglClientActiveTextureARB(i32 %24)
  %26 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %32

27:                                               ; preds = %17
  %28 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %29 = load i32, i32* @ERR_DROP, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 %28(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %33, %6
  ret void
}

declare dso_local i32 @qglActiveTextureARB(i32) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @qglClientActiveTextureARB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
