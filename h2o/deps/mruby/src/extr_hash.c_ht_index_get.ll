; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_index_get.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32, i32*)* @ht_index_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_index_get(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = call i64 @HT_MASK(%struct.TYPE_9__* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ht_hash_func(i32* %20, %struct.TYPE_10__* %21, i32 %22)
  %24 = load i64, i64* %11, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %68, %4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @mrb_undef_p(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %34
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @ht_hash_equal(i32* %47, %struct.TYPE_10__* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %59, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %53
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %5, align 4
  br label %77

68:                                               ; preds = %46, %34
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  %72 = add i64 %69, %71
  %73 = load i64, i64* %11, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %12, align 8
  br label %26

75:                                               ; preds = %26
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @HT_MASK(%struct.TYPE_9__*) #1

declare dso_local i64 @ht_hash_func(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mrb_undef_p(i32) #1

declare dso_local i64 @ht_hash_equal(i32*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
