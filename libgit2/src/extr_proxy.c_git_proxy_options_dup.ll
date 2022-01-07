; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_proxy.c_git_proxy_options_dup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_proxy.c_git_proxy_options_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@GIT_PROXY_OPTIONS_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_proxy_options_dup(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @GIT_PROXY_OPTIONS_VERSION, align 4
  %11 = call i32 @git_proxy_options_init(%struct.TYPE_7__* %9, i32 %10)
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @memcpy(%struct.TYPE_7__* %13, %struct.TYPE_7__* %14, i32 8)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @git__strdup(i64 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(i64 %29)
  br label %31

31:                                               ; preds = %20, %12
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %8
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @git_proxy_options_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @git__strdup(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
