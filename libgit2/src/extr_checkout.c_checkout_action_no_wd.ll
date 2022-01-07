; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_no_wd.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_no_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CHECKOUT_ACTION__NONE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_DIRTY = common dso_local global i32 0, align 4
@RECREATE_MISSING = common dso_local global i32 0, align 4
@UPDATE_BLOB = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@SAFE = common dso_local global i32 0, align 4
@CONFLICT = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*)* @checkout_action_no_wd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_action_no_wd(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @CHECKOUT_ACTION__NONE, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %61 [
    i32 128, label %14
    i32 132, label %29
    i32 130, label %35
    i32 129, label %41
    i32 131, label %55
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @GIT_CHECKOUT_NOTIFY_DIRTY, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = call i32 @checkout_notify(i32* %15, i32 %16, %struct.TYPE_7__* %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %14
  %24 = load i32, i32* @RECREATE_MISSING, align 4
  %25 = load i32, i32* @UPDATE_BLOB, align 4
  %26 = load i32, i32* @NONE, align 4
  %27 = call i32 @CHECKOUT_ACTION_IF(i32 %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %62

29:                                               ; preds = %3
  %30 = load i32, i32* @SAFE, align 4
  %31 = load i32, i32* @UPDATE_BLOB, align 4
  %32 = load i32, i32* @NONE, align 4
  %33 = call i32 @CHECKOUT_ACTION_IF(i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %62

35:                                               ; preds = %3
  %36 = load i32, i32* @RECREATE_MISSING, align 4
  %37 = load i32, i32* @UPDATE_BLOB, align 4
  %38 = load i32, i32* @CONFLICT, align 4
  %39 = call i32 @CHECKOUT_ACTION_IF(i32 %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %62

41:                                               ; preds = %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @SAFE, align 4
  %50 = load i32, i32* @UPDATE_BLOB, align 4
  %51 = load i32, i32* @NONE, align 4
  %52 = call i32 @CHECKOUT_ACTION_IF(i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %41
  br label %62

55:                                               ; preds = %3
  %56 = load i32, i32* @SAFE, align 4
  %57 = load i32, i32* @REMOVE, align 4
  %58 = load i32, i32* @NONE, align 4
  %59 = call i32 @CHECKOUT_ACTION_IF(i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %62

61:                                               ; preds = %3
  br label %62

62:                                               ; preds = %61, %55, %54, %35, %29, %23
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = call i32 @checkout_action_common(i32* %63, i32* %64, %struct.TYPE_7__* %65, i32* null)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @checkout_notify(i32*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @CHECKOUT_ACTION_IF(i32, i32, i32) #1

declare dso_local i32 @checkout_action_common(i32*, i32*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
