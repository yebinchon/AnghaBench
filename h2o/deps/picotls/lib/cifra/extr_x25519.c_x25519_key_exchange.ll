; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_key_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@X25519_KEY_SIZE = common dso_local global i32 0, align 4
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64)* @x25519_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25519_key_exchange(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = bitcast %struct.TYPE_7__* %5 to i64*
  store i64 %3, i64* %14, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  %15 = load i32, i32* @X25519_KEY_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @X25519_KEY_SIZE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %24, i32* %12, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load i32, i32* @X25519_KEY_SIZE, align 4
  %27 = call i32* @malloc(i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %30, i32* %12, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @x25519_create_keypair(i32* %18, i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @x25519_derive_secret(%struct.TYPE_7__* %34, i32* null, i32 %36, i32* %18, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %49

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @X25519_KEY_SIZE, align 4
  %45 = call i64 @ptls_iovec_init(i32* %43, i32 %44)
  %46 = bitcast %struct.TYPE_7__* %13 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_7__* %42 to i8*
  %48 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %41, %40, %29, %23
  %50 = mul nuw i64 4, %16
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ptls_clear_memory(i32* %18, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @X25519_KEY_SIZE, align 4
  %61 = call i32 @ptls_clear_memory(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %55, %49
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @x25519_create_keypair(i32*, i32*) #2

declare dso_local i32 @x25519_derive_secret(%struct.TYPE_7__*, i32*, i32, i32*, i32*) #2

declare dso_local i64 @ptls_iovec_init(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

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
