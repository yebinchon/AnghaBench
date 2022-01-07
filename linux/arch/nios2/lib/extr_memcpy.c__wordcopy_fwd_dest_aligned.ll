; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memcpy.c__wordcopy_fwd_dest_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memcpy.c__wordcopy_fwd_dest_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @_wordcopy_fwd_dest_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wordcopy_fwd_dest_aligned(i64 %0, i64 %1, i64 %2) #0 {
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
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @OPSIZ, align 8
  %17 = srem i64 %15, %16
  %18 = mul nsw i64 8, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* @OPSIZ, align 8
  %21 = mul nsw i64 8, %20
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* @OPSIZ, align 8
  %27 = sub nsw i64 0, %26
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* @OPSIZ, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %40, %3
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %38, 3
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %5, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %5, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @MERGE(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i64, i64* %4, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @MERGE(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i64, i64* %4, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @MERGE(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i64, i64* %4, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @MERGE(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i64, i64* @OPSIZ, align 8
  %91 = mul nsw i64 4, %90
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* @OPSIZ, align 8
  %95 = mul nsw i64 4, %94
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %6, align 8
  %99 = sub i64 %98, 4
  store i64 %99, i64* %6, align 8
  br label %37

100:                                              ; preds = %37
  br label %101

101:                                              ; preds = %104, %100
  %102 = load i64, i64* %6, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load i64, i64* %5, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @MERGE(i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i64, i64* %4, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i64, i64* @OPSIZ, align 8
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* @OPSIZ, align 8
  %122 = load i64, i64* %4, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = sub i64 %124, 1
  store i64 %125, i64* %6, align 8
  br label %101

126:                                              ; preds = %101
  ret void
}

declare dso_local i32 @MERGE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
