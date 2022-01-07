; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_CHECKOUT_UPDATE_ONLY = common dso_local global i32 0, align 4
@MKDIR_REMOVE_EXISTING = common dso_local global i32 0, align 4
@MKDIR_NORMAL = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @checkout_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_submodule(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i32 @should_remove_existing(%struct.TYPE_12__* %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GIT_CHECKOUT_UPDATE_ONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @MKDIR_REMOVE_EXISTING, align 4
  br label %36

34:                                               ; preds = %17
  %35 = load i32, i32* @MKDIR_NORMAL, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @checkout_mkdir(%struct.TYPE_12__* %18, i32 %21, i32 %25, i32 %29, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @git_submodule_lookup(i32* null, i32 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GIT_ENOTFOUND, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i32 (...) @git_error_clear()
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = call i32 @checkout_submodule_update_index(%struct.TYPE_12__* %57, %struct.TYPE_11__* %58)
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %42
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = call i32 @checkout_submodule_update_index(%struct.TYPE_12__* %63, %struct.TYPE_11__* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %60, %55, %40, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @should_remove_existing(%struct.TYPE_12__*) #1

declare dso_local i32 @checkout_mkdir(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @git_submodule_lookup(i32*, i32, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @checkout_submodule_update_index(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
