; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_gcm.c_cf_gcm_encrypt_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_gcm.c_cf_gcm_encrypt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i32*, i32*)* }
%struct.TYPE_7__ = type { i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_gcm_encrypt_init(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_7__* %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [16 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = bitcast [16 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %23 = call i32 %19(i8* %20, i32* %21, i32* %22)
  %24 = load i64, i64* %14, align 8
  %25 = icmp eq i64 %24, 12
  br i1 %25, label %26, label %49

26:                                               ; preds = %7
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @memcpy(i32* %29, i32* %30, i64 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 14
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 13
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 12
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 15
  store i32 1, i32* %48, align 4
  br label %65

49:                                               ; preds = %7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %53 = call i32 @ghash_init(i32* %51, i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @ghash_add_cipher(i32* %55, i32* %56, i64 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ghash_final(i32* %60, i32* %63)
  br label %65

65:                                               ; preds = %49, %26
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %69 = call i32 @ghash_init(i32* %67, i32* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @ghash_add_aad(i32* %71, i32* %72, i64 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memset(i32 %77, i32 0, i32 4)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @cf_ctr_init(i32* %80, %struct.TYPE_6__* %81, i8* %82, i32* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = call i32 @cf_ctr_custom_counter(i32* %88, i32 12, i32 4)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cf_ctr_cipher(i32* %91, i32 %94, i32 %97, i32 4)
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %100 = call i32 @mem_clean(i32* %99, i32 64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @ghash_init(i32*, i32*) #2

declare dso_local i32 @ghash_add_cipher(i32*, i32*, i64) #2

declare dso_local i32 @ghash_final(i32*, i32*) #2

declare dso_local i32 @ghash_add_aad(i32*, i32*, i64) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @cf_ctr_init(i32*, %struct.TYPE_6__*, i8*, i32*) #2

declare dso_local i32 @cf_ctr_custom_counter(i32*, i32, i32) #2

declare dso_local i32 @cf_ctr_cipher(i32*, i32, i32, i32) #2

declare dso_local i32 @mem_clean(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
