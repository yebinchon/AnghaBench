; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_resize_image.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_resize_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"resize_image 3rd\00", align 1
@FORTH_FAIL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"resize_image 2nd\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"resize_image 1st\00", align 1
@LanczosFilter = common dso_local global i32 0, align 4
@UndefinedException = common dso_local global i64 0, align 8
@NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.forth_stack*)* @resize_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resize_image(i8** %0, %struct.forth_stack* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.forth_stack* %1, %struct.forth_stack** %5, align 8
  %12 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %13 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %16 = call i32 @pop_int(%struct.forth_stack* %15, i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %21 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %22, i8** %3, align 8
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %25 = call i32 @pop_int(%struct.forth_stack* %24, i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %30 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %31, i8** %3, align 8
  br label %78

32:                                               ; preds = %23
  %33 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %34 = call i32 @pop_image(%struct.forth_stack* %33, i32** %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %39 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %40, i8** %3, align 8
  br label %78

41:                                               ; preds = %32
  %42 = call i32 @GetExceptionInfo(%struct.TYPE_6__* %10)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @LanczosFilter, align 4
  %47 = call i32* @ResizeImage(i32* %43, i32 %44, i32 %45, i32 %46, double 1.000000e+00, %struct.TYPE_6__* %10)
  store i32* %47, i32** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @UndefinedException, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %55 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %57 = call i32 @gm_catch_exception(%struct.forth_stack* %56, %struct.TYPE_6__* %10)
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @DestroyImage(i32* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %64, i8** %3, align 8
  br label %78

65:                                               ; preds = %41
  %66 = call i32 @DestroyExceptionInfo(%struct.TYPE_6__* %10)
  %67 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %68 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %69 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @free_stack(%struct.forth_stack* %67, i32 %71, i32 %72)
  %74 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @push_image(%struct.forth_stack* %74, i32* %75)
  %77 = load i32, i32* @NEXT, align 4
  br label %78

78:                                               ; preds = %65, %63, %36, %27, %18
  %79 = load i8*, i8** %3, align 8
  ret i8* %79
}

declare dso_local i32 @pop_int(%struct.forth_stack*, i32*, i8*) #1

declare dso_local i32 @pop_image(%struct.forth_stack*, i32**, i8*) #1

declare dso_local i32 @GetExceptionInfo(%struct.TYPE_6__*) #1

declare dso_local i32* @ResizeImage(i32*, i32, i32, i32, double, %struct.TYPE_6__*) #1

declare dso_local i32 @gm_catch_exception(%struct.forth_stack*, %struct.TYPE_6__*) #1

declare dso_local i32 @DestroyImage(i32*) #1

declare dso_local i32 @DestroyExceptionInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @free_stack(%struct.forth_stack*, i32, i32) #1

declare dso_local i32 @push_image(%struct.forth_stack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
