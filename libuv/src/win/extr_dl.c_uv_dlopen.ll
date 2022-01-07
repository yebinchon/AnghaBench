; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv_dlopen.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv_dlopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@CP_UTF8 = common dso_local global i32 0, align 4
@LOAD_WITH_ALTERED_SEARCH_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_dlopen(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca [32768 x i32], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @CP_UTF8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds [32768 x i32], [32768 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [32768 x i32], [32768 x i32]* %6, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = call i32 @MultiByteToWideChar(i32 %11, i32 0, i8* %12, i32 -1, i32* %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @uv__dlerror(%struct.TYPE_4__* %19, i8* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = getelementptr inbounds [32768 x i32], [32768 x i32]* %6, i64 0, i64 0
  %25 = load i32, i32* @LOAD_WITH_ALTERED_SEARCH_PATH, align 4
  %26 = call i32* @LoadLibraryExW(i32* %24, i32* null, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 @uv__dlerror(%struct.TYPE_4__* %34, i8* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @uv__dlerror(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @LoadLibraryExW(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
