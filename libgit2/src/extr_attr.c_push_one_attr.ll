; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr.c_push_one_attr.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr.c_push_one_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32 }

@GIT_ATTR_FILE_NUM_SOURCES = common dso_local global i32 0, align 4
@GIT_ATTR_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @push_one_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_one_attr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %5, align 8
  %14 = load i32, i32* @GIT_ATTR_FILE_NUM_SOURCES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @attr_decide_sources(i32 %20, i32 %25, i32 %30, i32* %17)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcmp(i32* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %36
  %47 = phi i32 [ %44, %36 ], [ 0, %45 ]
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %75, %46
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %78

57:                                               ; preds = %55
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %17, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* @GIT_ATTR_FILE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @push_attr_file(i32 %60, i32 %63, i32 %66, i32 %70, i8* %71, i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %48

78:                                               ; preds = %55
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @attr_decide_sources(i32, i32, i32, i32*) #2

declare dso_local i32 @strcmp(i32*, i8*) #2

declare dso_local i32 @push_attr_file(i32, i32, i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
