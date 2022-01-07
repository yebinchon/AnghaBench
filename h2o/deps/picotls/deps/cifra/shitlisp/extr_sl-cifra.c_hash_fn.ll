; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/shitlisp/extr_sl-cifra.c_hash_fn.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/shitlisp/extr_sl-cifra.c_hash_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 (i32*, i32*)*, i32 (i32*, i32, i32)*, i32 (i32*)* }

@sl_preprocess_eval = common dso_local global i32 0, align 4
@sl_assert_bytes = common dso_local global i32 0, align 4
@CF_CHASH_MAXCTX = common dso_local global i64 0, align 8
@CF_MAXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*, %struct.TYPE_16__*, i32*, %struct.TYPE_17__*)* @hash_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @hash_fn(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = call i32 @sl_iter_start(%struct.TYPE_16__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @sl_preprocess_eval, align 4
  %18 = load i32, i32* @sl_assert_bytes, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_16__* @sl_iter_convert(i32* %10, i32 %17, i32 %18, i32* %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = call %struct.TYPE_16__* (...) @sl_get_nil()
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %5, align 8
  br label %73

25:                                               ; preds = %4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CF_CHASH_MAXCTX, align 8
  %30 = icmp sle i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = call i32 %35(i32* %12)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %39(i32* %12, i32 %44, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = call i32 @sl_decref(%struct.TYPE_16__* %51)
  %53 = load i32, i32* @CF_MAXHASH, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %13, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %14, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CF_MAXHASH, align 4
  %61 = icmp sle i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %65, align 8
  %67 = call i32 %66(i32* %12, i32* %56)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_16__* @sl_new_bytes(i32* %56, i32 %70)
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %5, align 8
  %72 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %25, %23
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %74
}

declare dso_local i32 @sl_iter_start(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @sl_iter_convert(i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @sl_get_nil(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sl_decref(%struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_16__* @sl_new_bytes(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
