; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_00501.c_AES128_decrypt_cbc.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_00501.c_AES128_decrypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@te0 = common dso_local global i64 0, align 8
@te1 = common dso_local global i64 0, align 8
@te2 = common dso_local global i64 0, align 8
@te3 = common dso_local global i64 0, align 8
@td0 = common dso_local global i64 0, align 8
@td1 = common dso_local global i64 0, align 8
@td2 = common dso_local global i64 0, align 8
@td3 = common dso_local global i64 0, align 8
@td4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @AES128_decrypt_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AES128_decrypt_cbc(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @te0, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i64, i64* @te1, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i64, i64* @te2, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i64, i64* @te3, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i64, i64* @td0, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i64, i64* @td1, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i64, i64* @td2, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* @td3, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @aes128_set_decrypt_key(i32 %15, i32* %16, i32* %18, i32* %20, i32* %22, i32* %24, i32* %26, i32* %28, i32* %30, i32* %32)
  %34 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 16, i1 false)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %45, i32* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %160, %4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %163

54:                                               ; preds = %51
  %55 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 16, i1 false)
  %56 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 16, i1 false)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 0
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %62, i32* %63, align 16
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %89 = load i64, i64* @td0, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i64, i64* @td1, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i64, i64* @td2, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i64, i64* @td3, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i64, i64* @td4, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @aes128_decrypt(i32 %86, i32* %87, i32* %88, i32* %90, i32* %92, i32* %94, i32* %96, i32* %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = xor i32 %103, %101
  store i32 %104, i32* %102, align 16
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 %113, %111
  store i32 %114, i32* %112, align 8
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %149 = load i32, i32* %148, align 16
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %149, i32* %150, align 16
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %54
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %11, align 4
  br label %51

163:                                              ; preds = %51
  ret void
}

declare dso_local i32 @aes128_set_decrypt_key(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @aes128_decrypt(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
