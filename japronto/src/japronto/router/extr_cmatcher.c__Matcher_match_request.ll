; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/router/extr_cmatcher.c__Matcher_match_request.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/router/extr_cmatcher.c__Matcher_match_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @_Matcher_match_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_Matcher_match_request(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_3__* @Matcher_match_request(i32* %11, i32* %12, i32** %6, i64* %8)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32* @MatchDict_entries_to_dict(i32* %21, i64 %22)
  store i32* %23, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %37

26:                                               ; preds = %17
  %27 = call i32* @PyTuple_New(i32 2)
  store i32* %27, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @PyTuple_SET_ITEM(i32* %31, i32 0, i32* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @PyTuple_SET_ITEM(i32* %34, i32 1, i32* %35)
  br label %40

37:                                               ; preds = %29, %25
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @Py_XDECREF(i32* %38)
  store i32* null, i32** %7, align 8
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @Py_INCREF(i32* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %10, align 8
  ret i32* %47
}

declare dso_local %struct.TYPE_3__* @Matcher_match_request(i32*, i32*, i32**, i64*) #1

declare dso_local i32* @MatchDict_entries_to_dict(i32*, i64) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
