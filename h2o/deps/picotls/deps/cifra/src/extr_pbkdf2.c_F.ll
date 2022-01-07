; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_pbkdf2.c_F.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_pbkdf2.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CF_MAXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i32*, i64, i64, i32*)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @F(%struct.TYPE_7__* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x i32], align 16
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @CF_MAXHASH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %30 = call i32 @write32_be(i64 %28, i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = bitcast %struct.TYPE_7__* %17 to i8*
  %33 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @cf_hmac_update(%struct.TYPE_7__* %17, i32* %34, i64 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %38 = call i32 @cf_hmac_update(%struct.TYPE_7__* %17, i32* %37, i64 16)
  %39 = call i32 @cf_hmac_finish(%struct.TYPE_7__* %17, i32* %22)
  %40 = load i32*, i32** %12, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @memcpy(i32* %40, i32* %22, i64 %41)
  store i64 1, i64* %18, align 8
  br label %43

43:                                               ; preds = %58, %6
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = bitcast %struct.TYPE_7__* %17 to i8*
  %50 = bitcast %struct.TYPE_7__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @cf_hmac_update(%struct.TYPE_7__* %17, i32* %22, i64 %51)
  %53 = call i32 @cf_hmac_finish(%struct.TYPE_7__* %17, i32* %22)
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @xor_bb(i32* %54, i32* %55, i32* %22, i64 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i64, i64* %18, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %18, align 8
  br label %43

61:                                               ; preds = %43
  %62 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write32_be(i64, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @cf_hmac_update(%struct.TYPE_7__*, i32*, i64) #2

declare dso_local i32 @cf_hmac_finish(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @xor_bb(i32*, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
