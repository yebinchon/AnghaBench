; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_fix.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix(%struct.TYPE_9__** %0, %struct.TYPE_9__** %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %6, align 8
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %79

11:                                               ; preds = %3
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %79

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %22, %15
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  store %struct.TYPE_9__** %25, %struct.TYPE_9__*** %4, align 8
  br label %16

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %33, %26
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  store %struct.TYPE_9__** %36, %struct.TYPE_9__*** %5, align 8
  br label %27

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = call i32 @dl_prm_fix(%struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.TYPE_9__* @dl_prm_rev_del(%struct.TYPE_9__** %64, i64 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = icmp eq %struct.TYPE_9__* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = call i32 @dl_free_prm(%struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @dl_prm_fix(%struct.TYPE_9__* %76)
  br label %78

78:                                               ; preds = %47, %37
  br label %79

79:                                               ; preds = %78, %11, %3
  ret void
}

declare dso_local i32 @dl_prm_fix(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @dl_prm_rev_del(%struct.TYPE_9__**, i64) #1

declare dso_local i32 @dl_free_prm(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
