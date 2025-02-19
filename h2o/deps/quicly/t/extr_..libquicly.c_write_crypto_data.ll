; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_write_crypto_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_write_crypto_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64*)* @write_crypto_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_crypto_data(i32* %0, %struct.TYPE_3__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %61, %17
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %26, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %61

35:                                               ; preds = %21
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 1, %37
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = call i32* @quicly_get_stream(i32* %36, i32 %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %49, %53
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @quicly_streambuf_egress_write(i32* %46, i64 %54, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %35
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %18

64:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %58, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_streambuf_egress_write(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
