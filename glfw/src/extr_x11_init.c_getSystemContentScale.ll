; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_init.c_getSystemContentScale.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_init.c_getSystemContentScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"Xft.dpi\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Xft.Dpi\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @getSystemContentScale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getSystemContentScale(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i8*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  store float 9.600000e+01, float* %5, align 4
  store float 9.600000e+01, float* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %12 = call i8* @XResourceManagerString(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @XrmGetStringDatabase(i8* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  store i8* null, i8** %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @XrmGetResource(i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10, %struct.TYPE_6__* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call float @atof(i32 %33)
  store float %34, float* %6, align 4
  store float %34, float* %5, align 4
  br label %35

35:                                               ; preds = %31, %27, %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @XrmDestroyDatabase(i64 %37)
  br label %39

39:                                               ; preds = %36, %15
  br label %40

40:                                               ; preds = %39, %2
  %41 = load float, float* %5, align 4
  %42 = fdiv float %41, 9.600000e+01
  %43 = load float*, float** %3, align 8
  store float %42, float* %43, align 4
  %44 = load float, float* %6, align 4
  %45 = fdiv float %44, 9.600000e+01
  %46 = load float*, float** %4, align 8
  store float %45, float* %46, align 4
  ret void
}

declare dso_local i8* @XResourceManagerString(i32) #1

declare dso_local i64 @XrmGetStringDatabase(i8*) #1

declare dso_local i64 @XrmGetResource(i64, i8*, i8*, i8**, %struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local float @atof(i32) #1

declare dso_local i32 @XrmDestroyDatabase(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
