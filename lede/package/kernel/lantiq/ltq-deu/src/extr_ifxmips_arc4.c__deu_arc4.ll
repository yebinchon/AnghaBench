; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c__deu_arc4.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c__deu_arc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc4_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ARC4_START = common dso_local global i64 0, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32, i32, i32)* @_deu_arc4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_deu_arc4(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.arc4_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i64, i64* @ARC4_START, align 8
  %23 = inttoptr i64 %22 to %struct.arc4_t*
  store %struct.arc4_t* %23, %struct.arc4_t** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* @CRTCL_SECT_START, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %27 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %26, i32 0, i32 0
  store volatile i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %117, %7
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %120

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %16, align 4
  %35 = ashr i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %41 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %40, i32 0, i32 1
  store volatile i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %16, align 4
  %44 = ashr i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %50 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %49, i32 0, i32 2
  store volatile i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %16, align 4
  %53 = ashr i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %59 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %58, i32 0, i32 3
  store volatile i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %16, align 4
  %62 = ashr i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %68 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %67, i32 0, i32 4
  store volatile i32 %66, i32* %68, align 8
  %69 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %70 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store volatile i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %78, %32
  %73 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %74 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load volatile i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %72

79:                                               ; preds = %72
  %80 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %81 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %80, i32 0, i32 5
  %82 = load volatile i32, i32* %81, align 4
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store volatile i32 %82, i32* %83, align 16
  %84 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %85 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %84, i32 0, i32 6
  %86 = load volatile i32, i32* %85, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store volatile i32 %86, i32* %87, align 4
  %88 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %89 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %88, i32 0, i32 7
  %90 = load volatile i32, i32* %89, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store volatile i32 %90, i32* %91, align 8
  %92 = load %struct.arc4_t*, %struct.arc4_t** %15, align 8
  %93 = getelementptr inbounds %struct.arc4_t, %struct.arc4_t* %92, i32 0, i32 8
  %94 = load volatile i32, i32* %93, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store volatile i32 %94, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp sgt i32 %99, 16
  br i1 %100, label %101, label %102

101:                                              ; preds = %79
  store i32 16, i32* %20, align 4
  br label %102

102:                                              ; preds = %101, %79
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32* %103, i32** %19, align 8
  store i32 0, i32* %21, align 4
  br label %104

104:                                              ; preds = %114, %102
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32*, i32** %19, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %19, align 8
  %111 = load volatile i32, i32* %109, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  br label %104

117:                                              ; preds = %104
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 16
  store i32 %119, i32* %16, align 4
  br label %28

120:                                              ; preds = %28
  %121 = load i32, i32* @CRTCL_SECT_END, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
