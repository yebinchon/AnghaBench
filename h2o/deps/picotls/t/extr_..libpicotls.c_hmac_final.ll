; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_hmac_final.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_picotls_hmac_context_t = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)* }

@PTLS_HASH_FINAL_MODE_SNAPSHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not supported\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @hmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_final(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_picotls_hmac_context_t*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.st_picotls_hmac_context_t*
  store %struct.st_picotls_hmac_context_t* %9, %struct.st_picotls_hmac_context_t** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PTLS_HASH_FINAL_MODE_SNAPSHOT, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i1 [ true, %3 ], [ false, %13 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %22 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %24, align 8
  %26 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %27 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 %25(%struct.TYPE_6__* %28, i8* %29, i32 128)
  %31 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %32 = call i32 @hmac_apply_key(%struct.st_picotls_hmac_context_t* %31, i32 92)
  %33 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %34 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %36, align 8
  %38 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %39 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %43 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %37(%struct.TYPE_6__* %40, i8* %41, i32 %46)
  br label %48

48:                                               ; preds = %20, %14
  %49 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %50 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %52, align 8
  %54 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %55 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %53(%struct.TYPE_6__* %56, i8* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %76 [
    i32 129, label %61
    i32 128, label %73
  ]

61:                                               ; preds = %48
  %62 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %63 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %66 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ptls_clear_memory(i32 %64, i32 %69)
  %71 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %72 = call i32 @free(%struct.st_picotls_hmac_context_t* %71)
  br label %78

73:                                               ; preds = %48
  %74 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %7, align 8
  %75 = call i32 @hmac_apply_key(%struct.st_picotls_hmac_context_t* %74, i32 54)
  br label %78

76:                                               ; preds = %48
  %77 = call i32 @assert(i32 0)
  br label %78

78:                                               ; preds = %76, %73, %61
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hmac_apply_key(%struct.st_picotls_hmac_context_t*, i32) #1

declare dso_local i32 @ptls_clear_memory(i32, i32) #1

declare dso_local i32 @free(%struct.st_picotls_hmac_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
