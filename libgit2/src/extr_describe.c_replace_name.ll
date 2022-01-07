; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_replace_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_replace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.commit_name = type { i32, %struct.TYPE_8__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, i32*, %struct.commit_name*, i32, i32*)* @replace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_name(%struct.TYPE_8__** %0, i32* %1, %struct.commit_name* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.commit_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.commit_name* %2, %struct.commit_name** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %16 = icmp ne %struct.commit_name* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %19 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %5
  store i32 1, i32* %6, align 4
  br label %91

24:                                               ; preds = %17
  %25 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %26 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  %33 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %34 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %40 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %39, i32 0, i32 2
  %41 = call i64 @git_tag_lookup(%struct.TYPE_8__** %14, i32* %38, i32* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %91

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %47 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %46, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @git_tag_lookup(%struct.TYPE_8__** %14, i32* %49, i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %91

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %58 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %65 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %63, %54
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %91

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %29, %24
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %88, %53, %43, %23
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @git_tag_lookup(%struct.TYPE_8__**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
