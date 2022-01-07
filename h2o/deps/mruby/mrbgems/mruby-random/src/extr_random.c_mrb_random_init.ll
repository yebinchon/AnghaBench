; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_random_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_random_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@mt_state_type = common dso_local global i32 0, align 4
@N = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_random_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_random_init(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @get_opt(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @DATA_PTR(i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = call i32 @mrb_free(i32* %15, %struct.TYPE_5__* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mrb_data_init(i32 %19, %struct.TYPE_5__* null, i32* @mt_state_type)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @mrb_malloc(i32* %21, i32 16)
  %23 = inttoptr i64 %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load i64, i64* @N, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mrb_random_mt_srand(i32* %28, %struct.TYPE_5__* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @mrb_nil_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %50

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mrb_fixnum_p(i32 %40)
  %42 = call i32 @mrb_assert(i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mrb_fixnum(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = call i32 @mrb_data_init(i32 %51, %struct.TYPE_5__* %52, i32* @mt_state_type)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @get_opt(i32*) #1

declare dso_local i64 @DATA_PTR(i32) #1

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @mrb_data_init(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i32 @mrb_random_mt_srand(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
