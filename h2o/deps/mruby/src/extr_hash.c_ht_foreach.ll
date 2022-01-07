; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_foreach.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_hash.c_ht_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i64 (i32*, i32, i32, i8*)**, i8*)* @ht_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_foreach(i32* %0, %struct.TYPE_7__* %1, i64 (i32*, i32, i32, i8*)** %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64 (i32*, i32, i32, i8*)**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 (i32*, i32, i32, i8*)** %2, i64 (i32*, i32, i32, i8*)*** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %81

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  br label %18

18:                                               ; preds = %77, %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %81

40:                                               ; preds = %33, %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @mrb_undef_p(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %74

51:                                               ; preds = %40
  %52 = load i64 (i32*, i32, i32, i8*)**, i64 (i32*, i32, i32, i8*)*** %7, align 8
  %53 = load i64 (i32*, i32, i32, i8*)*, i64 (i32*, i32, i32, i8*)** %52, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 %53(i32* %54, i32 %61, i32 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %81

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %22

77:                                               ; preds = %22
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %9, align 8
  br label %18

81:                                               ; preds = %13, %39, %72, %18
  ret void
}

declare dso_local i64 @mrb_undef_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
