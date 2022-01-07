; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_imm_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_imm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i64*, i32*, i32, i32, i64*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLAG_IMM_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.jit_ctx*)* @imm_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_offset(i64 %0, %struct.jit_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.jit_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.jit_ctx* %1, %struct.jit_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %9, i32 0, i32 5
  %11 = load i64*, i64** %10, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %125

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %19
  %35 = phi i1 [ false, %19 ], [ %33, %25 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %19

50:                                               ; preds = %46, %34
  %51 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %50
  %68 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %71, i32 0, i32 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = mul i32 %95, 4
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %100, i32 0, i32 5
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = udiv i32 %103, 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  store i64 %99, i64* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 4
  %112 = add nsw i32 8, %111
  %113 = sub i32 %107, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, -4096
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %67
  %118 = load i32, i32* @FLAG_IMM_OVERFLOW, align 4
  %119 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %125

123:                                              ; preds = %67
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %117, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
