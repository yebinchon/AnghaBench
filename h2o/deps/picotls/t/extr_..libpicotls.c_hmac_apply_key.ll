; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_hmac_apply_key.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_hmac_apply_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_picotls_hmac_context_t = type { i32*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_picotls_hmac_context_t*, i32)* @hmac_apply_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_apply_key(%struct.st_picotls_hmac_context_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_picotls_hmac_context_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.st_picotls_hmac_context_t* %0, %struct.st_picotls_hmac_context_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %6
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, %15
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %28 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*, i32*, i64)*, i32 (%struct.TYPE_4__*, i32*, i64)** %30, align 8
  %32 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %33 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %39 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 %31(%struct.TYPE_4__* %34, i32* %37, i64 %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %61, %26
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %47 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.st_picotls_hmac_context_t*, %struct.st_picotls_hmac_context_t** %3, align 8
  %55 = getelementptr inbounds %struct.st_picotls_hmac_context_t, %struct.st_picotls_hmac_context_t* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, %53
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %44

64:                                               ; preds = %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
