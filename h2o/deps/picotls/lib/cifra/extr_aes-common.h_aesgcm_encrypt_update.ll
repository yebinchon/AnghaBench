; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aesgcm_encrypt_update.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aesgcm_encrypt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesgcm_context_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i64)* @aesgcm_encrypt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aesgcm_encrypt_update(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aesgcm_context_t*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.aesgcm_context_t*
  store %struct.aesgcm_context_t* %11, %struct.aesgcm_context_t** %9, align 8
  %12 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %13 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @cf_gcm_encrypt_update(i32* %13, i8* %14, i64 %15, i8* %16)
  %18 = load i64, i64* %8, align 8
  ret i64 %18
}

declare dso_local i32 @cf_gcm_encrypt_update(i32*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
