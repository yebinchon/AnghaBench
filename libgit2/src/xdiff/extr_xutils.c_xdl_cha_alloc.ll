; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_cha_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_cha_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xdl_cha_alloc(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 16, %21
  %23 = call i64 @xdl_malloc(i64 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %4, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %75

27:                                               ; preds = %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %41, align 8
  br label %42

42:                                               ; preds = %36, %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %57, align 8
  br label %58

58:                                               ; preds = %51, %10
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = bitcast %struct.TYPE_5__* %59 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 16
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8* %65, i8** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %58, %26
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i64 @xdl_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
