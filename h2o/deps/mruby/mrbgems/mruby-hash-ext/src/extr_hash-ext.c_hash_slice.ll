; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-hash-ext/src/extr_hash-ext.c_hash_slice.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-hash-ext/src/extr_hash-ext.c_hash_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @hash_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_slice(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6, i64* %8)
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @mrb_hash_new_capa(i32* %17, i64 %18)
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @mrb_hash_new_capa(i32* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %48, %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (...) @mrb_undef_value()
  %37 = call i32 @mrb_hash_fetch(i32* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @mrb_undef_p(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @mrb_hash_set(i32* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @mrb_hash_new_capa(i32*, i64) #1

declare dso_local i32 @mrb_hash_fetch(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_undef_value(...) #1

declare dso_local i32 @mrb_undef_p(i32) #1

declare dso_local i32 @mrb_hash_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
