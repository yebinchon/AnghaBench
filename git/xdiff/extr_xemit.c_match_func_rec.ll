; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xemit.c_match_func_rec.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xemit.c_match_func_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i8*, i64, i8*, i64, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_3__*, i64, i8*, i64)* @match_func_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_func_rec(i32* %0, %struct.TYPE_3__* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @xdl_get_rec(i32* %14, i64 %15, i8** %12)
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i64, i8*, i64, i32)** %18, align 8
  %20 = icmp ne i64 (i8*, i64, i8*, i64, i32)* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @def_ff(i8* %22, i64 %23, i8* %24, i64 %25, i32 %28)
  store i64 %29, i64* %6, align 8
  br label %42

30:                                               ; preds = %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i64, i8*, i64, i32)** %32, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %33(i8* %34, i64 %35, i8* %36, i64 %37, i32 %40)
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %30, %21
  %43 = load i64, i64* %6, align 8
  ret i64 %43
}

declare dso_local i64 @xdl_get_rec(i32*, i64, i8**) #1

declare dso_local i64 @def_ff(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
