; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_is_date.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_is_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.tm*, i64, %struct.tm*)* @is_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_date(i32 %0, i32 %1, i32 %2, %struct.tm* %3, i64 %4, %struct.tm* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tm*, align 8
  %14 = alloca %struct.tm, align 4
  %15 = alloca %struct.tm*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.tm* %3, %struct.tm** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.tm* %5, %struct.tm** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 13
  br i1 %21, label %22, label %123

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %123

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %123

28:                                               ; preds = %25
  %29 = load %struct.tm*, %struct.tm** %13, align 8
  %30 = bitcast %struct.tm* %14 to i8*
  %31 = bitcast %struct.tm* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %struct.tm*, %struct.tm** %11, align 8
  %33 = icmp ne %struct.tm* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %37

35:                                               ; preds = %28
  %36 = load %struct.tm*, %struct.tm** %13, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi %struct.tm* [ %14, %34 ], [ %36, %35 ]
  store %struct.tm* %38, %struct.tm** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.tm*, %struct.tm** %15, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.tm*, %struct.tm** %15, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load %struct.tm*, %struct.tm** %11, align 8
  %50 = icmp ne %struct.tm* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %124

52:                                               ; preds = %48
  %53 = load %struct.tm*, %struct.tm** %11, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tm*, %struct.tm** %15, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %91

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 1970
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 2100
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1900
  %67 = load %struct.tm*, %struct.tm** %15, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %90

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 70
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.tm*, %struct.tm** %15, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %89

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 38
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 100
  %85 = load %struct.tm*, %struct.tm** %15, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %88

87:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %124

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90, %52
  %92 = load %struct.tm*, %struct.tm** %11, align 8
  %93 = icmp ne %struct.tm* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 1, i32* %7, align 4
  br label %124

95:                                               ; preds = %91
  %96 = load %struct.tm*, %struct.tm** %15, align 8
  %97 = call i64 @tm_to_time_t(%struct.tm* %96)
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %12, align 8
  %99 = add nsw i64 %98, 864000
  %100 = load i64, i64* %16, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %124

103:                                              ; preds = %95
  %104 = load %struct.tm*, %struct.tm** %15, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tm*, %struct.tm** %13, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tm*, %struct.tm** %15, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tm*, %struct.tm** %13, align 8
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load %struct.tm*, %struct.tm** %15, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tm*, %struct.tm** %13, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %103
  store i32 1, i32* %7, align 4
  br label %124

123:                                              ; preds = %25, %22, %19, %6
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %122, %102, %94, %87, %51
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @tm_to_time_t(%struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
