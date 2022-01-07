; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_encode_int.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h2o_hpack_encode_int(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @encode_int_is_onebyte(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %13, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %13, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %30, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %30, align 4
  br label %34

34:                                               ; preds = %42, %17
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 128
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = or i32 128, %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 7
  store i32 %44, i32* %5, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %11
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i64 @encode_int_is_onebyte(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
