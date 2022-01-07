; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/shitlisp/extr_sl-cifra.c_hmac_fn.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/shitlisp/extr_sl-cifra.c_hmac_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@sl_preprocess_eval = common dso_local global i32 0, align 4
@sl_assert_bytes = common dso_local global i32 0, align 4
@CF_MAXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_17__*, %struct.TYPE_17__*, i32*, %struct.TYPE_18__*)* @hmac_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @hmac_fn(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = call i32 @sl_iter_start(%struct.TYPE_17__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @sl_preprocess_eval, align 4
  %18 = load i32, i32* @sl_assert_bytes, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_17__* @sl_iter_convert(i32* %10, i32 %17, i32 %18, i32* %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %11, align 8
  %21 = load i32, i32* @sl_preprocess_eval, align 4
  %22 = load i32, i32* @sl_assert_bytes, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call %struct.TYPE_17__* @sl_iter_convert(i32* %10, i32 %21, i32 %22, i32* %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = call i32 @sl_decref(%struct.TYPE_17__* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %34 = call i32 @sl_decref(%struct.TYPE_17__* %33)
  %35 = call %struct.TYPE_17__* (...) @sl_get_nil()
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %5, align 8
  br label %72

36:                                               ; preds = %27
  %37 = load i32, i32* @CF_MAXHASH, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = call i32 @cf_hmac(i32 %45, i32 %50, i32 %55, i32 %60, i32* %40, %struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = call i32 @sl_decref(%struct.TYPE_17__* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %66 = call i32 @sl_decref(%struct.TYPE_17__* %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_17__* @sl_new_bytes(i32* %40, i32 %69)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %5, align 8
  %71 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %36, %30
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %73
}

declare dso_local i32 @sl_iter_start(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @sl_iter_convert(i32*, i32, i32, i32*) #1

declare dso_local i32 @sl_decref(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @sl_get_nil(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cf_hmac(i32, i32, i32, i32, i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @sl_new_bytes(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
