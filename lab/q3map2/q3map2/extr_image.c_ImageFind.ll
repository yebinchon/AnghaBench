; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_ImageFind.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_ImageFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@MAX_IMAGES = common dso_local global i32 0, align 4
@images = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ImageFind(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @ImageInit()
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %54

16:                                               ; preds = %9
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcpy(i8* %17, i8* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = call i32 @StripExtension(i8* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %50, %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAX_IMAGES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @images, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @images, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strcmp(i8* %35, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @images, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %2, align 8
  br label %54

49:                                               ; preds = %34, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %22

53:                                               ; preds = %22
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %54

54:                                               ; preds = %53, %44, %15
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %55
}

declare dso_local i32 @ImageInit(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
