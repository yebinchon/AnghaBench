; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_convert_words_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_convert_words_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32)* @convert_words_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_words_list(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %141

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %39

26:                                               ; preds = %22, %15
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = xor i64 %31, %37
  br label %39

39:                                               ; preds = %26, %25
  %40 = phi i64 [ -1, %25 ], [ %38, %26 ]
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %61

48:                                               ; preds = %44, %39
  %49 = load i64*, i64** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %53, %59
  br label %61

61:                                               ; preds = %48, %47
  %62 = phi i64 [ -1, %47 ], [ %60, %48 ]
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* %8, align 8
  br label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = call i64 @llvm.ctlz.i64(i64 %71, i1 true)
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = load i64*, i64** %4, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 -1
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = xor i64 %77, %82
  %84 = call i64 @llvm.ctlz.i64(i64 %83, i1 true)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load i64*, i64** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 1
  call void @convert_words_list(i64* %86, i32 %87, i32 %89)
  %90 = load i64*, i64** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 2
  call void @convert_words_list(i64* %94, i32 %98, i32 %100)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %70
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 58
  %108 = icmp sle i32 %105, %107
  br label %109

109:                                              ; preds = %104, %70
  %110 = phi i1 [ false, %70 ], [ %108, %104 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 64, %113
  %115 = zext i32 %114 to i64
  %116 = shl i64 -1, %115
  %117 = load i64*, i64** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %121, %116
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i64*, i64** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = zext i32 %123 to i64
  %130 = shl i64 %128, %129
  store i64 %130, i64* %127, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = or i64 %139, %134
  store i64 %140, i64* %138, align 8
  br label %141

141:                                              ; preds = %109, %14
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
