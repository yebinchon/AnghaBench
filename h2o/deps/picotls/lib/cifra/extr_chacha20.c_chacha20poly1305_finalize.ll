; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_finalize.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha20poly1305_context_t = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chacha20poly1305_context_t*, i32*)* @chacha20poly1305_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20poly1305_finalize(%struct.chacha20poly1305_context_t* %0, i32* %1) #0 {
  %3 = alloca %struct.chacha20poly1305_context_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32], align 16
  store %struct.chacha20poly1305_context_t* %0, %struct.chacha20poly1305_context_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %7 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %6, i32 0, i32 0
  %8 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @chacha20poly1305_encrypt_pad(i32* %7, i32 %10)
  %12 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %13 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %16 = call i32 @write64_le(i32 %14, i32* %15)
  %17 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %18 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = call i32 @write64_le(i32 %19, i32* %21)
  %23 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %24 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %26 = call i32 @cf_poly1305_update(i32* %24, i32* %25, i32 64)
  %27 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %3, align 8
  %28 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %27, i32 0, i32 0
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @cf_poly1305_finish(i32* %28, i32* %29)
  ret void
}

declare dso_local i32 @chacha20poly1305_encrypt_pad(i32*, i32) #1

declare dso_local i32 @write64_le(i32, i32*) #1

declare dso_local i32 @cf_poly1305_update(i32*, i32*, i32) #1

declare dso_local i32 @cf_poly1305_finish(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
