; ModuleID = '/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_vk_ssl_aes_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_vk_ssl_aes_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.anon = type { [2 x i64] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vk_ssl_aes_ctr_crypt(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.anon, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %13, align 8
  %24 = load i64*, i64** %13, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %12, align 8
  %27 = lshr i64 %26, 4
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* %12, align 8
  %32 = and i64 %31, 15
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %6
  %37 = load i8*, i8** %11, align 8
  %38 = bitcast %union.anon* %15 to [16 x i8]*
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @AES_encrypt(i8* %37, i8* %39, i32* %42)
  %44 = load i64*, i64** %13, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp sgt i32 %50, 16
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i32 16, i32* %17, align 4
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %75, %53
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = bitcast %union.anon* %15 to [16 x i8]*
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %64, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %63, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  store i8 %72, i8* %73, align 1
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %59, label %79

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %6
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to i64*
  store i64* %82, i64** %18, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i64*
  store i64* %84, i64** %19, align 8
  %85 = load i32, i32* %10, align 4
  %86 = ashr i32 %85, 4
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %91, %80
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %20, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = load i8*, i8** %11, align 8
  %93 = bitcast %union.anon* %15 to [2 x i64]*
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %93, i64 0, i64 0
  %95 = bitcast i64* %94 to i8*
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @AES_encrypt(i8* %92, i8* %95, i32* %98)
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i64*, i64** %18, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %18, align 8
  %105 = load i64, i64* %103, align 8
  %106 = bitcast %union.anon* %15 to [2 x i64]*
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %106, i64 0, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = xor i64 %105, %108
  %110 = load i64*, i64** %19, align 8
  %111 = getelementptr inbounds i64, i64* %110, i32 1
  store i64* %111, i64** %19, align 8
  store i64 %109, i64* %110, align 8
  %112 = load i64*, i64** %18, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %18, align 8
  %114 = load i64, i64* %112, align 8
  %115 = bitcast %union.anon* %15 to [2 x i64]*
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %115, i64 0, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = xor i64 %114, %117
  %119 = load i64*, i64** %19, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %19, align 8
  store i64 %118, i64* %119, align 8
  br label %87

121:                                              ; preds = %87
  %122 = load i64*, i64** %18, align 8
  %123 = bitcast i64* %122 to i8*
  store i8* %123, i8** %8, align 8
  %124 = load i64*, i64** %19, align 8
  %125 = bitcast i64* %124 to i8*
  store i8* %125, i8** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 15
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %121
  %131 = load i8*, i8** %11, align 8
  %132 = bitcast %union.anon* %15 to [16 x i8]*
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %132, i64 0, i64 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = call i32 @AES_encrypt(i8* %131, i8* %133, i32* %136)
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %154, %130
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  %141 = load i8, i8* %139, align 1
  %142 = zext i8 %141 to i32
  %143 = bitcast %union.anon* %15 to [16 x i8]*
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %143, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = xor i32 %142, %149
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %9, align 8
  store i8 %151, i8* %152, align 1
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %138, label %158

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %121
  %160 = load i64, i64* %14, align 8
  %161 = load i64*, i64** %13, align 8
  store i64 %160, i64* %161, align 8
  ret void
}

declare dso_local i32 @AES_encrypt(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
