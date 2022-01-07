; ModuleID = '/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_vk_aesni_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_vk_aesni_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%union.anon = type { [2 x i64] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*, i32, i8*, i64)* @vk_aesni_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vk_aesni_ctr_crypt(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.anon, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i8* @align16(i32* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %14, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %12, align 8
  %35 = lshr i64 %34, 4
  %36 = load i64*, i64** %14, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %35
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %12, align 8
  %40 = and i64 %39, 15
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %6
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = bitcast %union.anon* %16 to [16 x i8]*
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %47, i64 0, i64 0
  %49 = call i32 @aesni256_encrypt(i8* %45, i8* %46, i8* %48)
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp sgt i32 %56, 16
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 16, i32* %18, align 4
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %81, %59
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = bitcast %union.anon* %16 to [16 x i8]*
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %70, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %69, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %65, label %85

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %6
  %87 = load i8*, i8** %8, align 8
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** %19, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i64*
  store i64* %90, i64** %20, align 8
  %91 = load i32, i32* %10, align 4
  %92 = ashr i32 %91, 4
  store i32 %92, i32* %21, align 4
  br label %93

93:                                               ; preds = %97, %86
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %21, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %93
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = bitcast %union.anon* %16 to [2 x i64]*
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %100, i64 0, i64 0
  %102 = bitcast i64* %101 to i8*
  %103 = call i32 @aesni256_encrypt(i8* %98, i8* %99, i8* %102)
  %104 = load i64*, i64** %14, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load i64*, i64** %19, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %19, align 8
  %109 = load i64, i64* %107, align 8
  %110 = bitcast %union.anon* %16 to [2 x i64]*
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %110, i64 0, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = xor i64 %109, %112
  %114 = load i64*, i64** %20, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %20, align 8
  store i64 %113, i64* %114, align 8
  %116 = load i64*, i64** %19, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %19, align 8
  %118 = load i64, i64* %116, align 8
  %119 = bitcast %union.anon* %16 to [2 x i64]*
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %119, i64 0, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = xor i64 %118, %121
  %123 = load i64*, i64** %20, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %20, align 8
  store i64 %122, i64* %123, align 8
  br label %93

125:                                              ; preds = %93
  %126 = load i64*, i64** %19, align 8
  %127 = bitcast i64* %126 to i8*
  store i8* %127, i8** %8, align 8
  %128 = load i64*, i64** %20, align 8
  %129 = bitcast i64* %128 to i8*
  store i8* %129, i8** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, 15
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %125
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = bitcast %union.anon* %16 to [16 x i8]*
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %137, i64 0, i64 0
  %139 = call i32 @aesni256_encrypt(i8* %135, i8* %136, i8* %138)
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %156, %134
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %141, align 1
  %144 = zext i8 %143 to i32
  %145 = bitcast %union.anon* %16 to [16 x i8]*
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %145, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = xor i32 %144, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %9, align 8
  store i8 %153, i8* %154, align 1
  br label %156

156:                                              ; preds = %140
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %140, label %160

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %125
  %162 = load i64, i64* %15, align 8
  %163 = load i64*, i64** %14, align 8
  store i64 %162, i64* %163, align 8
  ret void
}

declare dso_local i8* @align16(i32*) #1

declare dso_local i32 @aesni256_encrypt(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
