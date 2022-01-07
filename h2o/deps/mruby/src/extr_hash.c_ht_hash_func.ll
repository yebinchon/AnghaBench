; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_hash_func.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"hash modified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i32)* @ht_hash_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ht_hash_func(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mrb_type(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ]
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %35 [
    i32 130, label %27
    i32 128, label %31
    i32 133, label %31
    i32 129, label %31
    i32 132, label %31
    i32 131, label %31
  ]

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mrb_str_hash(i32* %28, i32 %29)
  store i64 %30, i64* %9, align 8
  br label %45

31:                                               ; preds = %24, %24, %24, %24, %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mrb_obj_id(i32 %32)
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  br label %45

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mrb_funcall(i32* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = ptrtoint %struct.TYPE_5__* %39 to i64
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mrb_fixnum(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = xor i64 %40, %43
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %35, %31, %27
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %63 = call i32 @mrb_raise(i32* %61, i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54, %45
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = shl i64 %66, 2
  %68 = xor i64 %65, %67
  %69 = load i64, i64* %9, align 8
  %70 = lshr i64 %69, 2
  %71 = xor i64 %68, %70
  ret i64 %71
}

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i64 @mrb_str_hash(i32*, i32) #1

declare dso_local i32 @mrb_obj_id(i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
