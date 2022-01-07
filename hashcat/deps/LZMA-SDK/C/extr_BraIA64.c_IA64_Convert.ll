; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_BraIA64.c_IA64_Convert.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_BraIA64.c_IA64_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IA64_Convert(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %130

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 16
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %124, %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 30
  %28 = ashr i32 860553216, %27
  %29 = and i32 %28, 3
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %116, %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 5
  %42 = add i64 %38, %41
  %43 = sub i64 %42, 8
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %115

52:                                               ; preds = %35
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %55, %59
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %60, %61
  %63 = and i32 %62, 112
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %52
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @GetUi32(i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = lshr i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 1048575
  %73 = load i32, i32* %14, align 4
  %74 = and i32 %73, 8388608
  %75 = lshr i32 %74, 3
  %76 = or i32 %72, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %93

87:                                               ; preds = %65
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %14, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %87, %81
  %94 = load i32, i32* %14, align 4
  %95 = lshr i32 %94, 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, 2097151
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add i32 %98, 7340032
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = and i32 %100, 9437183
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 9437183, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @SetUi32(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %93, %52, %35
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = icmp ule i32 %118, 4
  br i1 %119, label %35, label %120

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %21
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 16
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %21, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %17
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @GetUi32(i32*) #1

declare dso_local i32 @SetUi32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
