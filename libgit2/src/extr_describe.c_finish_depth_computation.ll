; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_finish_depth_computation.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_finish_depth_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.possible_tag = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__** }

@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.possible_tag*)* @finish_depth_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @finish_depth_computation(i32* %0, i32* %1, %struct.possible_tag* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.possible_tag*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.possible_tag* %2, %struct.possible_tag** %7, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %115, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @git_pqueue_size(i32* %16)
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %116

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_6__* @git_pqueue_pop(i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %28 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @git_pqueue_size(i32* %34)
  %36 = load i64, i64* %12, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call %struct.TYPE_6__* @git_pqueue_get(i32* %39, i64 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %13, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %46 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %54

51:                                               ; preds = %38
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %33

54:                                               ; preds = %50, %33
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @git_pqueue_size(i32* %56)
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %116

60:                                               ; preds = %54
  br label %66

61:                                               ; preds = %19
  %62 = load %struct.possible_tag*, %struct.possible_tag** %7, align 8
  %63 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %60
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %112, %66
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %67
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %14, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = call i32 @git_commit_list_parse(i32* %81, %struct.TYPE_6__* %82)
  store i32 %83, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %4, align 8
  br label %118

88:                                               ; preds = %73
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SEEN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %98 = call i32 @git_pqueue_insert(i32* %96, %struct.TYPE_6__* %97)
  store i32 %98, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %4, align 8
  br label %118

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %67

115:                                              ; preds = %67
  br label %15

116:                                              ; preds = %59, %15
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %116, %100, %85
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i64 @git_pqueue_size(i32*) #1

declare dso_local %struct.TYPE_6__* @git_pqueue_pop(i32*) #1

declare dso_local %struct.TYPE_6__* @git_pqueue_get(i32*, i64) #1

declare dso_local i32 @git_commit_list_parse(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @git_pqueue_insert(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
