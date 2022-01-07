; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_init.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i64, i32, i32, i32, i32, i32, double, float }

@INT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"--use_staging\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--break\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--validate\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"--c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"Usage:\0A  %s [--use_staging] [--validate] [--break] [--c <framecount>]\0A\00", align 1
@APP_SHORT_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*, i32, i8**)* @demo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_init(%struct.demo* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.demo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.demo* %0, %struct.demo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.demo*, %struct.demo** %4, align 8
  %9 = call i32 @memset(%struct.demo* %8, i32 0, i32 48)
  %10 = load i64, i64* @INT32_MAX, align 8
  %11 = load %struct.demo*, %struct.demo** %4, align 8
  %12 = getelementptr inbounds %struct.demo, %struct.demo* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %95, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %98

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.demo*, %struct.demo** %4, align 8
  %27 = getelementptr inbounds %struct.demo, %struct.demo* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  br label %95

28:                                               ; preds = %17
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.demo*, %struct.demo** %4, align 8
  %38 = getelementptr inbounds %struct.demo, %struct.demo* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  br label %95

39:                                               ; preds = %28
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.demo*, %struct.demo** %4, align 8
  %49 = getelementptr inbounds %struct.demo, %struct.demo* %48, i32 0, i32 3
  store i32 1, i32* %49, align 8
  br label %95

50:                                               ; preds = %39
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  %59 = load %struct.demo*, %struct.demo** %4, align 8
  %60 = getelementptr inbounds %struct.demo, %struct.demo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INT32_MAX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.demo*, %struct.demo** %4, align 8
  %77 = getelementptr inbounds %struct.demo, %struct.demo* %76, i32 0, i32 0
  %78 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %77)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load %struct.demo*, %struct.demo** %4, align 8
  %82 = getelementptr inbounds %struct.demo, %struct.demo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %95

88:                                               ; preds = %80, %69, %64, %58, %50
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @APP_SHORT_NAME, align 8
  %91 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 @fflush(i32 %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %85, %47, %36, %25
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %13

98:                                               ; preds = %13
  %99 = load %struct.demo*, %struct.demo** %4, align 8
  %100 = call i32 @demo_init_connection(%struct.demo* %99)
  %101 = load %struct.demo*, %struct.demo** %4, align 8
  %102 = call i32 @demo_init_vk(%struct.demo* %101)
  %103 = load %struct.demo*, %struct.demo** %4, align 8
  %104 = getelementptr inbounds %struct.demo, %struct.demo* %103, i32 0, i32 4
  store i32 300, i32* %104, align 4
  %105 = load %struct.demo*, %struct.demo** %4, align 8
  %106 = getelementptr inbounds %struct.demo, %struct.demo* %105, i32 0, i32 5
  store i32 300, i32* %106, align 8
  %107 = load %struct.demo*, %struct.demo** %4, align 8
  %108 = getelementptr inbounds %struct.demo, %struct.demo* %107, i32 0, i32 6
  store double 1.000000e+00, double* %108, align 8
  %109 = load %struct.demo*, %struct.demo** %4, align 8
  %110 = getelementptr inbounds %struct.demo, %struct.demo* %109, i32 0, i32 7
  store float 0xBF847AE140000000, float* %110, align 8
  ret void
}

declare dso_local i32 @memset(%struct.demo*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @demo_init_connection(%struct.demo*) #1

declare dso_local i32 @demo_init_vk(%struct.demo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
