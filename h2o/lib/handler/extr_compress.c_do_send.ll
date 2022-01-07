; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_do_send.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_compress_encoder_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i32)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.st_compress_encoder_t*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast i8* %15 to %struct.st_compress_encoder_t*
  store %struct.st_compress_encoder_t* %16, %struct.st_compress_encoder_t** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @h2o_send_state_is_in_progress(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %11, align 8
  %25 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %24, i32 0, i32 0
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @h2o_ostream_send_next(i32* %25, i32* %26, i32* %27, i64 %28, i32 %29)
  br label %47

31:                                               ; preds = %19, %5
  %32 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %11, align 8
  %33 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @h2o_compress_transform(i32 %34, i32* %35, i32* %36, i64 %37, i32 %38, i32** %12, i64* %13)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %11, align 8
  %41 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %40, i32 0, i32 0
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @h2o_ostream_send_next(i32* %41, i32* %42, i32* %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %23
  ret void
}

declare dso_local i64 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @h2o_ostream_send_next(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @h2o_compress_transform(i32, i32*, i32*, i64, i32, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
