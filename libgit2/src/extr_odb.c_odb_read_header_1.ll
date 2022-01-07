; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_read_header_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_read_header_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i64*, i32*, %struct.TYPE_8__*, i32*)*, i32 }

@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, %struct.TYPE_9__*, i32*, i32)* @odb_read_header_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odb_read_header_1(i64* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @odb_hardcoded_type(i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i64*, i64** %7, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %6, align 4
  br label %82

29:                                               ; preds = %20, %5
  store i64 0, i64* %12, align 8
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %12, align 8
  %41 = call %struct.TYPE_10__* @git_vector_get(%struct.TYPE_11__* %39, i64 %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %16, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %17, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %74

53:                                               ; preds = %47, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32 (i64*, i32*, %struct.TYPE_8__*, i32*)*, i32 (i64*, i32*, %struct.TYPE_8__*, i32*)** %55, align 8
  %57 = icmp ne i32 (i64*, i32*, %struct.TYPE_8__*, i32*)* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %74

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (i64*, i32*, %struct.TYPE_8__*, i32*)*, i32 (i64*, i32*, %struct.TYPE_8__*, i32*)** %61, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 %62(i64* %63, i32* %64, %struct.TYPE_8__* %65, i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  switch i32 %68, label %71 [
    i32 128, label %69
    i32 129, label %70
  ]

69:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %73

70:                                               ; preds = %59
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %6, align 4
  br label %82

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %73, %58, %52
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %30

77:                                               ; preds = %30
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 128, i32 129
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %71, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @odb_hardcoded_type(i32*) #1

declare dso_local %struct.TYPE_10__* @git_vector_get(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
