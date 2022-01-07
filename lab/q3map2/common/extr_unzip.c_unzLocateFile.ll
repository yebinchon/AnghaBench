; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzLocateFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzLocateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@UNZ_MAXFILENAMEINZIP = common dso_local global i64 0, align 8
@UNZ_END_OF_LIST_OF_FILE = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzLocateFile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = load i64, i64* @UNZ_MAXFILENAMEINZIP, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %78

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @UNZ_END_OF_LIST_OF_FILE, align 4
  store i32 %34, i32* %4, align 4
  br label %78

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @unzGoToFirstFile(i32* %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %69, %35
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UNZ_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i64, i64* @UNZ_MAXFILENAMEINZIP, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %12, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %13, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = sub i64 %50, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @unzGetCurrentFileInfo(i32* %53, i32* null, i8* %52, i32 %55, i32* null, i32 0, i32* null, i32 0)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @unzStringFileNameCompare(i8* %52, i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @UNZ_OK, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %66

63:                                               ; preds = %48
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @unzGoToNextFile(i32* %64)
  store i32 %65, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %14, align 4
  switch i32 %68, label %80 [
    i32 0, label %69
    i32 1, label %78
  ]

69:                                               ; preds = %66
  br label %44

70:                                               ; preds = %44
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %70, %66, %33, %24, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79

80:                                               ; preds = %66
  unreachable
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @unzGoToFirstFile(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unzGetCurrentFileInfo(i32*, i32*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @unzStringFileNameCompare(i8*, i8*, i32) #1

declare dso_local i32 @unzGoToNextFile(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
