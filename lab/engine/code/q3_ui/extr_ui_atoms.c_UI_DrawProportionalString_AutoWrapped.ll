; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawProportionalString_AutoWrapped.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_DrawProportionalString_AutoWrapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawProportionalString_AutoWrapped(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca [1024 x i8], align 16
  %21 = alloca float, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %7
  br label %122

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = call float @UI_ProportionalSizeScale(i32 %32)
  store float %33, float* %21, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @Q_strncpyz(i8* %34, i8* %35, i32 1024)
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  store i8* %37, i8** %18, align 8
  store i8* %37, i8** %17, align 8
  store i8* %37, i8** %16, align 8
  br label %38

38:                                               ; preds = %31, %121
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i8*, i8** %18, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %18, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %18, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 32
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %18, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %39, label %54

54:                                               ; preds = %52
  %55 = load i8*, i8** %18, align 8
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %19, align 1
  %57 = load i8*, i8** %18, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %16, align 8
  %59 = call float @UI_ProportionalStringWidth(i8* %58)
  %60 = load float, float* %21, align 4
  %61 = fmul float %59, %60
  %62 = fptosi float %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i8, i8* %19, align 1
  %64 = load i8*, i8** %18, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %54
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8*, i8** %18, align 8
  store i8* %73, i8** %17, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i8*, i8** %17, align 8
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @UI_DrawProportionalString(i32 %76, i32 %77, i8* %78, i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i8, i8* %19, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %74
  %89 = load i8*, i8** %17, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %17, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @UI_DrawProportionalString(i32 %96, i32 %97, i8* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %122

103:                                              ; preds = %74
  %104 = load i8*, i8** %17, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %17, align 8
  %106 = load i8*, i8** %17, align 8
  store i8* %106, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  store i8* %107, i8** %18, align 8
  br label %121

108:                                              ; preds = %54
  %109 = load i8*, i8** %18, align 8
  store i8* %109, i8** %17, align 8
  %110 = load i8, i8* %19, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %16, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @UI_DrawProportionalString(i32 %114, i32 %115, i8* %116, i32 %117, i32 %118)
  br label %122

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %103
  br label %38

122:                                              ; preds = %30, %113, %102
  ret void
}

declare dso_local float @UI_ProportionalSizeScale(i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local float @UI_ProportionalStringWidth(i8*) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
