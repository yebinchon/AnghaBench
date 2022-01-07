; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_push_bytes.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_push_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expbuf_t = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expbuf_t*, i8*, i64)* @expbuf_push_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expbuf_push_bytes(%struct.expbuf_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.expbuf_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.expbuf_t* %0, %struct.expbuf_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @expbuf_push_num(%struct.expbuf_t* %7, i64 %8)
  %10 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @expbuf_reserve(%struct.expbuf_t* %10, i64 %11)
  %13 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %14 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @memcpy(i64 %15, i8* %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %21 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %19
  store i64 %23, i64* %21, align 8
  ret void
}

declare dso_local i32 @expbuf_push_num(%struct.expbuf_t*, i64) #1

declare dso_local i32 @expbuf_reserve(%struct.expbuf_t*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
