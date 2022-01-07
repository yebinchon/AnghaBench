; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_path.c_path_normalize.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_path.c_path_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.fd*, %struct.fd* }
%struct.fd = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ENOENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@AT_PWD = common dso_local global %struct.fd* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_normalize(%struct.fd* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.fd*, %struct.fd** %6, align 8
  %15 = icmp ne %struct.fd* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @_ENOENT, align 4
  store i32 %22, i32* %5, align 4
  br label %86

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @lock(i32* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load %struct.fd*, %struct.fd** %38, align 8
  store %struct.fd* %39, %struct.fd** %6, align 8
  br label %51

40:                                               ; preds = %23
  %41 = load %struct.fd*, %struct.fd** %6, align 8
  %42 = load %struct.fd*, %struct.fd** @AT_PWD, align 8
  %43 = icmp eq %struct.fd* %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.fd*, %struct.fd** %48, align 8
  store %struct.fd* %49, %struct.fd** %6, align 8
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @unlock(i32* %55)
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %10, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %11, align 8
  %61 = load %struct.fd*, %struct.fd** %6, align 8
  %62 = icmp ne %struct.fd* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load %struct.fd*, %struct.fd** %6, align 8
  %65 = call i32 @generic_getpath(%struct.fd* %64, i8* %60)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %84

70:                                               ; preds = %63
  %71 = call i32 @path_is_normalized(i8* %60)
  %72 = call i32 @assert(i32 %71)
  br label %73

73:                                               ; preds = %70, %51
  %74 = load %struct.fd*, %struct.fd** %6, align 8
  %75 = icmp ne %struct.fd* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %78

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %76
  %79 = phi i8* [ %60, %76 ], [ null, %77 ]
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @__path_normalize(i8* %79, i8* %80, i8* %81, i32 %82, i32 0)
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %78, %68
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %84, %21
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @generic_getpath(%struct.fd*, i8*) #1

declare dso_local i32 @path_is_normalized(i8*) #1

declare dso_local i32 @__path_normalize(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
