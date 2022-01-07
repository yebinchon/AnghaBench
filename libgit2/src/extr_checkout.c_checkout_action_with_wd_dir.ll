; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_with_wd_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_action_with_wd_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CHECKOUT_ACTION__NONE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_DIRTY = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_UNTRACKED = common dso_local global i32 0, align 4
@FORCE = common dso_local global i32 0, align 4
@REMOVE_AND_UPDATE = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@DONT_OVERWRITE_IGNORED = common dso_local global i32 0, align 4
@CONFLICT = common dso_local global i32 0, align 4
@SAFE = common dso_local global i32 0, align 4
@UPDATE_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*, i32*, i32*)* @checkout_action_with_wd_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_action_with_wd_dir(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @CHECKOUT_ACTION__NONE, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %108 [
    i32 128, label %16
    i32 132, label %32
    i32 130, label %32
    i32 131, label %66
    i32 129, label %80
  ]

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @GIT_CHECKOUT_NOTIFY_DIRTY, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = call i32 @checkout_notify(i32* %17, i32 %18, %struct.TYPE_9__* %19, i32* null)
  %21 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UNTRACKED, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @checkout_notify(i32* %22, i32 %23, %struct.TYPE_9__* null, i32* %24)
  %26 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %25)
  %27 = load i32, i32* @FORCE, align 4
  %28 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %29 = load i32, i32* @NONE, align 4
  %30 = call i32 @CHECKOUT_ACTION_IF(i32 %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %109

32:                                               ; preds = %5, %5
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @git_iterator_current_is_ignored(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @DONT_OVERWRITE_IGNORED, align 4
  %53 = load i32, i32* @CONFLICT, align 4
  %54 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %55 = call i32 @CHECKOUT_ACTION_IF(i32 %52, i32 %53, i32 %54)
  br label %61

56:                                               ; preds = %47
  %57 = load i32, i32* @FORCE, align 4
  %58 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %59 = load i32, i32* @CONFLICT, align 4
  %60 = call i32 @CHECKOUT_ACTION_IF(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %40
  br label %65

65:                                               ; preds = %64, %39
  br label %109

66:                                               ; preds = %5
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UNTRACKED, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @checkout_notify(i32* %74, i32 %75, %struct.TYPE_9__* null, i32* %76)
  %78 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  br label %109

80:                                               ; preds = %5
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @SAFE, align 4
  %89 = load i32, i32* @UPDATE_BLOB, align 4
  %90 = load i32, i32* @NONE, align 4
  %91 = call i32 @CHECKOUT_ACTION_IF(i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %107

93:                                               ; preds = %80
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @FORCE, align 4
  %102 = load i32, i32* @REMOVE_AND_UPDATE, align 4
  %103 = load i32, i32* @CONFLICT, align 4
  %104 = call i32 @CHECKOUT_ACTION_IF(i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %93
  br label %107

107:                                              ; preds = %106, %87
  br label %109

108:                                              ; preds = %5
  br label %109

109:                                              ; preds = %108, %107, %79, %65, %16
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @checkout_action_common(i32* %110, i32* %111, %struct.TYPE_9__* %112, i32* %113)
  ret i32 %114
}

declare dso_local i32 @GIT_ERROR_CHECK_ERROR(i32) #1

declare dso_local i32 @checkout_notify(i32*, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @CHECKOUT_ACTION_IF(i32, i32, i32) #1

declare dso_local i32 @git_iterator_current_is_ignored(i32*) #1

declare dso_local i32 @checkout_action_common(i32*, i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
