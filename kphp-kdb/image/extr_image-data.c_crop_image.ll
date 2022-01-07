; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_crop_image.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_crop_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"crop_image 5th\00", align 1
@FORTH_FAIL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"crop_image 4th\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"crop_image 3rd\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"crop_image 2nd\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"crop_image 1st\00", align 1
@NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.forth_stack*)* @crop_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @crop_image(i8** %0, %struct.forth_stack* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.forth_stack* %1, %struct.forth_stack** %5, align 8
  %14 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %15 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %18 = call i32 @pop_int(%struct.forth_stack* %17, i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %23 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %24, i8** %3, align 8
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %27 = call i32 @pop_int(%struct.forth_stack* %26, i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %32 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %33, i8** %3, align 8
  br label %92

34:                                               ; preds = %25
  %35 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %36 = call i32 @pop_int(%struct.forth_stack* %35, i32* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %41 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %42, i8** %3, align 8
  br label %92

43:                                               ; preds = %34
  %44 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %45 = call i32 @pop_int(%struct.forth_stack* %44, i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %50 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %51, i8** %3, align 8
  br label %92

52:                                               ; preds = %43
  %53 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %54 = call i32 @pop_image(%struct.forth_stack* %53, i32** %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %59 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %60, i8** %3, align 8
  br label %92

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @gm_crop_image(%struct.forth_stack* %70, i32* %71, %struct.TYPE_3__* %12)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %78 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %79, i8** %3, align 8
  br label %92

80:                                               ; preds = %61
  %81 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %82 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %83 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @free_stack(%struct.forth_stack* %81, i32 %85, i32 %86)
  %88 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @push_image(%struct.forth_stack* %88, i32* %89)
  %91 = load i32, i32* @NEXT, align 4
  br label %92

92:                                               ; preds = %80, %75, %56, %47, %38, %29, %20
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i32 @pop_int(%struct.forth_stack*, i32*, i8*) #1

declare dso_local i32 @pop_image(%struct.forth_stack*, i32**, i8*) #1

declare dso_local i32* @gm_crop_image(%struct.forth_stack*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @free_stack(%struct.forth_stack*, i32, i32) #1

declare dso_local i32 @push_image(%struct.forth_stack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
