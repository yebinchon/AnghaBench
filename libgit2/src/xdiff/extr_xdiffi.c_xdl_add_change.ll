; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_add_change.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_add_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*, i64, i64, i64, i64)* @xdl_add_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @xdl_add_change(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = call i64 @xdl_malloc(i32 48)
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %36

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %6, align 8
  br label %36

36:                                               ; preds = %17, %16
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i64 @xdl_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
