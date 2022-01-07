; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Text_Wrapped_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Text_Wrapped_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (i32*, i8*, i32)* }
%struct.TYPE_8__ = type { i8*, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { float, float }

@DC = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Text_Wrapped_Paint(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %133

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DC, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %31 = call i32 %26(i32* %29, i8* %30, i32 1024)
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %133

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = call i32 @Item_TextColor(%struct.TYPE_8__* %45, i32* %12)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @Item_SetTextExtents(%struct.TYPE_8__* %47, i32* %8, i32* %9, i8* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  store float %53, float* %10, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  store float %57, float* %11, align 4
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 13)
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %71, %44
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br i1 %70, label %71, label %118

71:                                               ; preds = %69
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = add nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i32 @strncpy(i8* %72, i8* %73, i32 %80)
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DC, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (float, float, i32, i32, i8*, i32, i32, i32)** %89, align 8
  %91 = load float, float* %10, align 4
  %92 = load float, float* %11, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %90(float %91, float %92, i32 %95, i32 %96, i8* %97, i32 0, i32 0, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 5
  %104 = sitofp i32 %103 to float
  %105 = load float, float* %11, align 4
  %106 = fadd float %105, %104
  store float %106, float* %11, align 4
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = add nsw i64 %111, 1
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = call i8* @strchr(i8* %116, i8 signext 13)
  store i8* %117, i8** %4, align 8
  br label %61

118:                                              ; preds = %69
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DC, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (float, float, i32, i32, i8*, i32, i32, i32)** %120, align 8
  %122 = load float, float* %10, align 4
  %123 = load float, float* %11, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %121(float %122, float %123, i32 %126, i32 %127, i8* %128, i32 0, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %118, %43, %22
  ret void
}

declare dso_local i32 @Item_TextColor(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @Item_SetTextExtents(%struct.TYPE_8__*, i32*, i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
