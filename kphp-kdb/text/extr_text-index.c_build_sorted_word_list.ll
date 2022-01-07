; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_build_sorted_word_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_build_sorted_word_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }

@PRIME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"expected %lld words, found %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_sorted_word_list(%struct.TYPE_6__** %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__** %11, %struct.TYPE_6__*** %8, align 8
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %13
  store %struct.TYPE_6__** %14, %struct.TYPE_6__*** %9, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %50, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PRIME, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  br label %27

27:                                               ; preds = %45, %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i32 1
  store %struct.TYPE_6__** %38, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %41 = icmp ule %struct.TYPE_6__** %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %35, %30
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %10, align 8
  br label %27

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %15

53:                                               ; preds = %15
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %56 = icmp ne %struct.TYPE_6__** %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %62 = ptrtoint %struct.TYPE_6__** %60 to i64
  %63 = ptrtoint %struct.TYPE_6__** %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %65)
  br label %67

67:                                               ; preds = %57, %53
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %70 = icmp eq %struct.TYPE_6__** %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @word_sort(%struct.TYPE_6__** %73, i64 %75)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @word_sort(%struct.TYPE_6__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
