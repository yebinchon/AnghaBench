; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_checkout_cancel_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_checkout_cancel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_cancel_at = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*, i8*)* @checkout_cancel_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_cancel_cb(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.checkout_cancel_at*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = bitcast i8* %15 to %struct.checkout_cancel_at*
  store %struct.checkout_cancel_at* %16, %struct.checkout_cancel_at** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @GIT_UNUSED(i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @GIT_UNUSED(i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @GIT_UNUSED(i32* %21)
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @GIT_UNUSED(i32* %23)
  %25 = load %struct.checkout_cancel_at*, %struct.checkout_cancel_at** %14, align 8
  %26 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.checkout_cancel_at*, %struct.checkout_cancel_at** %14, align 8
  %31 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i8* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = load %struct.checkout_cancel_at*, %struct.checkout_cancel_at** %14, align 8
  %37 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
