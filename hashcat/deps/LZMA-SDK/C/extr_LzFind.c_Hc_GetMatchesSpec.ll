; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFind.c_Hc_GetMatchesSpec.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFind.c_Hc_GetMatchesSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i64, i64, i64*, i64*, i64, i64, i64, i64*, i32)* @Hc_GetMatchesSpec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @Hc_GetMatchesSpec(i32 %0, i64 %1, i64 %2, i64* %3, i64* %4, i64 %5, i64 %6, i64 %7, i64* %8, i32 %9) #0 {
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i64* %4, i64** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64* %8, i64** %20, align 8
  store i32 %9, i32* %21, align 4
  %27 = load i64*, i64** %15, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64* %30, i64** %22, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64*, i64** %16, align 8
  %33 = load i64, i64* %17, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %130, %10
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %23, align 8
  %39 = load i64, i64* %23, align 8
  %40 = load i64, i64* %18, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %134

43:                                               ; preds = %35
  %44 = load i64*, i64** %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* %23, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %18, align 8
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i64 [ %52, %51 ], [ 0, %53 ]
  %56 = add i64 %47, %55
  %57 = getelementptr inbounds i64, i64* %44, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %23, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %24, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = load i32, i32* %21, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %15, align 8
  %67 = load i32, i32* %21, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %24, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %65, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %54
  %75 = load i64*, i64** %15, align 8
  store i64* %75, i64** %25, align 8
  br label %76

76:                                               ; preds = %104, %74
  %77 = load i64*, i64** %25, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %25, align 8
  %80 = load i64, i64* %24, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %76
  %85 = load i64*, i64** %25, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %25, align 8
  %87 = load i64*, i64** %22, align 8
  %88 = icmp eq i64* %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i64*, i64** %22, align 8
  %91 = load i64*, i64** %15, align 8
  %92 = ptrtoint i64* %90 to i64
  %93 = ptrtoint i64* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 8
  %96 = load i64*, i64** %20, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %23, align 8
  %99 = sub i64 %98, 1
  %100 = load i64*, i64** %20, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %20, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  store i64* %103, i64** %11, align 8
  br label %136

104:                                              ; preds = %84
  br label %76

105:                                              ; preds = %76
  %106 = load i64*, i64** %25, align 8
  %107 = load i64*, i64** %15, align 8
  %108 = ptrtoint i64* %106 to i64
  %109 = ptrtoint i64* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %26, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %26, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %105
  %117 = load i32, i32* %26, align 4
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %26, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64*, i64** %20, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %23, align 8
  %123 = sub i64 %122, 1
  %124 = load i64*, i64** %20, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  store i64 %123, i64* %125, align 8
  %126 = load i64*, i64** %20, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  store i64* %127, i64** %20, align 8
  br label %128

128:                                              ; preds = %116, %105
  br label %129

129:                                              ; preds = %128, %54
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %19, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %19, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %35, label %134

134:                                              ; preds = %130, %42
  %135 = load i64*, i64** %20, align 8
  store i64* %135, i64** %11, align 8
  br label %136

136:                                              ; preds = %134, %89
  %137 = load i64*, i64** %11, align 8
  ret i64* %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
