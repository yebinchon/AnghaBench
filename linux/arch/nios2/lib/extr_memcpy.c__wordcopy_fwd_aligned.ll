; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memcpy.c__wordcopy_fwd_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memcpy.c__wordcopy_fwd_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @_wordcopy_fwd_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wordcopy_fwd_aligned(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %15

15:                                               ; preds = %18, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 7
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* %5, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* %5, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %5, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %4, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %4, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %4, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %4, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* %4, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i64, i64* %4, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i64, i64* %4, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @OPSIZ, align 4
  %84 = mul nsw i32 8, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %5, align 8
  %88 = load i32, i32* @OPSIZ, align 4
  %89 = mul nsw i32 8, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %4, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %93, 8
  store i64 %94, i64* %6, align 8
  br label %15

95:                                               ; preds = %15
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i64, i64* %6, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i64, i64* %5, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %4, align 8
  %104 = inttoptr i64 %103 to i32*
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @OPSIZ, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %5, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %5, align 8
  %109 = load i32, i32* @OPSIZ, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %4, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %96

115:                                              ; preds = %96
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
