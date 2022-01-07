; ModuleID = '/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_template_lmo.c_lmo_translate.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_template_lmo.c_lmo_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32 }

@_lmo_active_catalog = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmo_translate(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_lmo_active_catalog, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  store i32 -2, i32* %5, align 4
  br label %56

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lmo_canon_hash(i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_lmo_active_catalog, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %12, align 8
  br label %26

26:                                               ; preds = %51, %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_6__* @lmo_find_entry(%struct.TYPE_7__* %30, i32 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %11, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = load i8**, i8*** %8, align 8
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %56

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %12, align 8
  br label %26

55:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %34, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @lmo_canon_hash(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @lmo_find_entry(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
