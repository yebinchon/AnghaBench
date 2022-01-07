; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_send.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_send(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32* @alloca(i32 %13)
  store i32* %14, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %34, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @h2o_sendvec_init_raw(i32* %22, i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @do_sendvec(i32* %38, i32* %39, i64 %40, i32 %41)
  ret void
}

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @h2o_sendvec_init_raw(i32*, i32, i32) #1

declare dso_local i32 @do_sendvec(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
