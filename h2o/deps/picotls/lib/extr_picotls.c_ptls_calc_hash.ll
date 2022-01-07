; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_calc_hash.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_calc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* (...)* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i64)* }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_HASH_FINAL_MODE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_calc_hash(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__* (...)*, %struct.TYPE_7__* (...)** %12, align 8
  %14 = call %struct.TYPE_7__* (...) %13()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %33

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_7__*, i8*, i64)*, i32 (%struct.TYPE_7__*, i8*, i64)** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 %21(%struct.TYPE_7__* %22, i8* %23, i64 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @PTLS_HASH_FINAL_MODE_FREE, align 4
  %32 = call i32 %28(%struct.TYPE_7__* %29, i8* %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
