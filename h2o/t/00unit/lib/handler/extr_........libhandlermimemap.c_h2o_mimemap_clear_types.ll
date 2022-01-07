; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlermimemap.c_h2o_mimemap_clear_types.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlermimemap.c_h2o_mimemap_clear_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@extmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mimemap_clear_types(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @kh_begin(i32 %8)
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @kh_end(i32 %14)
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @kh_exist(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i8* @kh_key(i32 %28, i64 %29)
  store i8* %30, i8** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i8* @kh_val(i32 %33, i64 %34)
  store i8* %35, i8** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @on_unlink(%struct.TYPE_5__* %36, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @h2o_mem_release_shared(i8* %39)
  %41 = load i32, i32* @extmap, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @kh_del(i32 %41, i32 %44, i64 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @h2o_mem_release_shared(i8* %47)
  br label %49

49:                                               ; preds = %25, %24
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %10

52:                                               ; preds = %10
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = call i32 @rebuild_typeset(%struct.TYPE_5__* %53)
  ret void
}

declare dso_local i64 @kh_begin(i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i32 @kh_exist(i32, i64) #1

declare dso_local i8* @kh_key(i32, i64) #1

declare dso_local i8* @kh_val(i32, i64) #1

declare dso_local i32 @on_unlink(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @h2o_mem_release_shared(i8*) #1

declare dso_local i32 @kh_del(i32, i32, i64) #1

declare dso_local i32 @rebuild_typeset(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
