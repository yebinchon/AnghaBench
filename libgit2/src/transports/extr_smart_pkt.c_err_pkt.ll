; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_err_pkt.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_err_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@GIT_PKT_ERR = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error parsing ERR pkt-line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i64)* @err_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_pkt(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @git__prefixncmp(i8* %10, i64 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 4
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 4, i32 %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 %23, i32 1)
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.TYPE_5__* @git__malloc(i64 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %27)
  %29 = load i32, i32* @GIT_PKT_ERR, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = bitcast %struct.TYPE_5__* %46 to i32*
  %48 = load i32**, i32*** %5, align 8
  store i32* %47, i32** %48, align 8
  store i32 0, i32* %4, align 4
  br label %54

49:                                               ; preds = %14
  %50 = load i32, i32* @GIT_ERROR_NET, align 4
  %51 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = call i32 @git__free(%struct.TYPE_5__* %52)
  store i32 -1, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @git__prefixncmp(i8*, i64, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local %struct.TYPE_5__* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
