; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_forth_get_attr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_forth_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"getattr: 2nd isn't str\00", align 1
@FORTH_FAIL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"getattr: 1st isn't image\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.forth_stack*)* @forth_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @forth_get_attr(i8** %0, %struct.forth_stack* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.forth_stack* %1, %struct.forth_stack** %5, align 8
  %11 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %12 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %15 = call i32 @pop_str(%struct.forth_stack* %14, i8** %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %20 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %21, i8** %3, align 8
  br label %96

22:                                               ; preds = %2
  %23 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %24 = call i32 @pop_image(%struct.forth_stack* %23, i32** %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %29 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %30, i8** %3, align 8
  br label %96

31:                                               ; preds = %22
  %32 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %33 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %34 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @free_stack(%struct.forth_stack* %32, i32 %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_3__* @GetImageAttribute(i32* %39, i8* %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %9, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = icmp eq %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %31
  %45 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %46 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %50 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %53 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = call i32 @new_str(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %94

58:                                               ; preds = %31
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i8* @malloc(i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @assert(i8* %64)
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i8* %66, i32 %69, i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %81 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %85 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %88 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @new_str(i32* %91, i8* %92, i32 0)
  br label %94

94:                                               ; preds = %58, %44
  %95 = load i32, i32* @NEXT, align 4
  br label %96

96:                                               ; preds = %94, %26, %17
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i32 @pop_str(%struct.forth_stack*, i8**, i8*) #1

declare dso_local i32 @pop_image(%struct.forth_stack*, i32**, i8*) #1

declare dso_local i32 @free_stack(%struct.forth_stack*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @GetImageAttribute(i32*, i8*) #1

declare dso_local i32 @new_str(i32*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
