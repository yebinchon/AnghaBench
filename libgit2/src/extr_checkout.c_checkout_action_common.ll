; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_common.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@GIT_CHECKOUT_NOTIFY_NONE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_UPDATE_ONLY = common dso_local global i32 0, align 4
@CHECKOUT_ACTION__REMOVE = common dso_local global i32 0, align 4
@CHECKOUT_ACTION__UPDATE_BLOB = common dso_local global i32 0, align 4
@CHECKOUT_ACTION__UPDATE_SUBMODULE = common dso_local global i32 0, align 4
@GIT_FILEMODE_LINK = common dso_local global i64 0, align 8
@GIT_CHECKOUT_NOTIFY_UPDATED = common dso_local global i32 0, align 4
@CHECKOUT_ACTION__CONFLICT = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @checkout_action_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_action_common(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %10 = load i32, i32* @GIT_CHECKOUT_NOTIFY_NONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GIT_CHECKOUT_UPDATE_ONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHECKOUT_ACTION__REMOVE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CHECKOUT_ACTION__UPDATE_BLOB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @S_ISGITLINK(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CHECKOUT_ACTION__UPDATE_BLOB, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* @CHECKOUT_ACTION__UPDATE_SUBMODULE, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GIT_FILEMODE_LINK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @CHECKOUT_ACTION__REMOVE, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %53, %46
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @GIT_PERMS_IS_EXEC(i64 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @GIT_PERMS_IS_EXEC(i64 %72)
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load i32, i32* @CHECKOUT_ACTION__REMOVE, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %64, %61
  %81 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UPDATED, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %24
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CHECKOUT_ACTION__CONFLICT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @GIT_CHECKOUT_NOTIFY_CONFLICT, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = call i32 @checkout_notify(%struct.TYPE_14__* %91, i32 %92, %struct.TYPE_13__* %93, %struct.TYPE_12__* %94)
  ret i32 %95
}

declare dso_local i64 @S_ISGITLINK(i64) #1

declare dso_local i64 @GIT_PERMS_IS_EXEC(i64) #1

declare dso_local i32 @checkout_notify(%struct.TYPE_14__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
