; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_expires.c_on_setup_ostream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_expires.c_on_setup_ostream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.st_expires_t = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@H2O_TOKEN_EXPIRES = common dso_local global i32 0, align 4
@H2O_TOKEN_CACHE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32**)* @on_setup_ostream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_setup_ostream(i32* %0, %struct.TYPE_8__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.st_expires_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.st_expires_t*
  store %struct.st_expires_t* %10, %struct.st_expires_t** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %54 [
    i32 200, label %15
    i32 201, label %15
    i32 204, label %15
    i32 206, label %15
    i32 301, label %15
    i32 302, label %15
    i32 303, label %15
    i32 304, label %15
    i32 307, label %15
  ]

15:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %16 = load %struct.st_expires_t*, %struct.st_expires_t** %7, align 8
  %17 = getelementptr inbounds %struct.st_expires_t, %struct.st_expires_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %51 [
    i32 129, label %19
    i32 128, label %35
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* @H2O_TOKEN_EXPIRES, align 4
  %26 = load %struct.st_expires_t*, %struct.st_expires_t** %7, align 8
  %27 = getelementptr inbounds %struct.st_expires_t, %struct.st_expires_t* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.st_expires_t*, %struct.st_expires_t** %7, align 8
  %31 = getelementptr inbounds %struct.st_expires_t, %struct.st_expires_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @h2o_set_header(i32* %21, i32* %24, i32 %25, i32 %29, i32 %33, i32 0)
  br label %53

35:                                               ; preds = %15
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* @H2O_TOKEN_CACHE_CONTROL, align 4
  %42 = load %struct.st_expires_t*, %struct.st_expires_t** %7, align 8
  %43 = getelementptr inbounds %struct.st_expires_t, %struct.st_expires_t* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.st_expires_t*, %struct.st_expires_t** %7, align 8
  %47 = getelementptr inbounds %struct.st_expires_t, %struct.st_expires_t* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @h2o_set_header_token(i32* %37, i32* %40, i32 %41, i32 %45, i32 %49)
  br label %53

51:                                               ; preds = %15
  %52 = call i32 @assert(i32 0)
  br label %53

53:                                               ; preds = %51, %35, %19
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = call i32 @h2o_setup_next_ostream(%struct.TYPE_8__* %56, i32** %57)
  ret void
}

declare dso_local i32 @h2o_set_header(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @h2o_set_header_token(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_setup_next_ostream(%struct.TYPE_8__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
