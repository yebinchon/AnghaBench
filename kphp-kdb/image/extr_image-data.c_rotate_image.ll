; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_rotate_image.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_rotate_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"rotate_image 2nd\00", align 1
@FORTH_FAIL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"rotate_image 1st\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"rotate_image: gm_rotate_image fail\00", align 1
@NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.forth_stack*)* @rotate_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rotate_image(i8** %0, %struct.forth_stack* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.forth_stack* %1, %struct.forth_stack** %5, align 8
  %10 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %11 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %14 = call i32 @pop_int(%struct.forth_stack* %13, i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %19 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %20, i8** %3, align 8
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %23 = call i32 @pop_image(%struct.forth_stack* %22, i32** %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %28 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %29, i8** %3, align 8
  br label %64

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 90, %41
  %43 = call i32* @gm_rotate_image(%struct.forth_stack* %39, i32* %40, i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %49 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %51 = call i8* @failf(%struct.forth_stack* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i8* %51, i8** %3, align 8
  br label %64

52:                                               ; preds = %38
  %53 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %54 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %55 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @free_stack(%struct.forth_stack* %53, i32 %57, i32 %58)
  %60 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @push_image(%struct.forth_stack* %60, i32* %61)
  %63 = load i32, i32* @NEXT, align 4
  br label %64

64:                                               ; preds = %52, %46, %25, %16
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i32 @pop_int(%struct.forth_stack*, i32*, i8*) #1

declare dso_local i32 @pop_image(%struct.forth_stack*, i32**, i8*) #1

declare dso_local i32* @gm_rotate_image(%struct.forth_stack*, i32*, i32) #1

declare dso_local i8* @failf(%struct.forth_stack*, i8*) #1

declare dso_local i32 @free_stack(%struct.forth_stack*, i32, i32) #1

declare dso_local i32 @push_image(%struct.forth_stack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
