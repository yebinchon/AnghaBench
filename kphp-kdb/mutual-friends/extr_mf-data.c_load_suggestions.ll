; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_suggestions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_suggestions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@load_suggestions.buff = internal global [30000 x i32] zeroinitializer, align 16
@fd = common dso_local global i32* null, align 8
@fsize = common dso_local global i64* null, align 8
@MAX_SUGGESTIONS = common dso_local global i32 0, align 4
@MAX_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_suggestions(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @open_file(i32 3, i8* %9, i32 -1)
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** @fd, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, ...) @read(i32 %16, i64* %6, i64 8)
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 8
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64*, i64** @fsize, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %102, %72, %1
  %30 = load i32*, i32** @fd, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, ...) @read(i32 %32, i32* %3, i64 4)
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %103

36:                                               ; preds = %29
  %37 = load i32*, i32** @fd, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, ...) @read(i32 %39, i32* %4, i64 4)
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 0, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %48, 2
  %50 = icmp slt i32 %49, 30000
  br label %51

51:                                               ; preds = %47, %36
  %52 = phi i1 [ false, %36 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** @fd, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, ...) @read(i32 %61, i32* getelementptr inbounds ([30000 x i32], [30000 x i32]* @load_suggestions.buff, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call %struct.TYPE_3__* @conv_uid(i32 %68)
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %5, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = icmp eq %struct.TYPE_3__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %29

73:                                               ; preds = %51
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MAX_SUGGESTIONS, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @MAX_SUGGESTIONS, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %73
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [30000 x i32], [30000 x i32]* @load_suggestions.buff, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [30000 x i32], [30000 x i32]* @load_suggestions.buff, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @trp_incr(i32* %86, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %80

102:                                              ; preds = %80
  br label %29

103:                                              ; preds = %29
  %104 = load i32*, i32** @fd, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @close(i32 %106)
  %108 = icmp sge i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32*, i32** @fd, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 -1, i32* %112, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @open_file(i32, i8*, i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local %struct.TYPE_3__* @conv_uid(i32) #1

declare dso_local i32 @trp_incr(i32*, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
