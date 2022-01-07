; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_cmp_query_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_cmp_query_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@qn_word = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_query_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_query_node(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__**
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @qn_word, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %91

54:                                               ; preds = %45
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %91

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %21
  br label %80

65:                                               ; preds = %2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @qn_word, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @qn_word, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %91

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %83 = icmp ult %struct.TYPE_2__* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %88 = icmp ugt %struct.TYPE_2__* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %84, %78, %71, %62, %53, %44, %35
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
