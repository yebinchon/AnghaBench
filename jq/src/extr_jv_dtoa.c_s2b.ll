; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_s2b.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_s2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.dtoa_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.dtoa_context*, i8*, i32, i32, i32, i32)* @s2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @s2b(%struct.dtoa_context* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dtoa_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 8
  %20 = sdiv i32 %19, 9
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %21

21:                                               ; preds = %26, %6
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %17, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  br label %21

31:                                               ; preds = %21
  %32 = load %struct.dtoa_context*, %struct.dtoa_context** %7, align 8
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  %35 = call %struct.TYPE_6__* @Balloc(%struct.dtoa_context* %32, i32 %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 65535
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 16
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = icmp ne i32 %43, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  store i32 9, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 9, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %31
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 9
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %67, %55
  %59 = load %struct.dtoa_context*, %struct.dtoa_context** %7, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = call %struct.TYPE_6__* @multadd(%struct.dtoa_context* %59, %struct.TYPE_6__* %60, i32 10, i32 %65)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %13, align 8
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %58, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  br label %83

77:                                               ; preds = %31
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 9
  %80 = load i8*, i8** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.dtoa_context*, %struct.dtoa_context** %7, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  %96 = call %struct.TYPE_6__* @multadd(%struct.dtoa_context* %89, %struct.TYPE_6__* %90, i32 10, i32 %95)
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %13, align 8
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %101
}

declare dso_local %struct.TYPE_6__* @Balloc(%struct.dtoa_context*, i32) #1

declare dso_local %struct.TYPE_6__* @multadd(%struct.dtoa_context*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
