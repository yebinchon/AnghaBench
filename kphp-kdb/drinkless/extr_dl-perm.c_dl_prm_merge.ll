; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_prm_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_prm_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_prm_merge(%struct.TYPE_10__** %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %11 = call i32 @fix(%struct.TYPE_10__** %6, %struct.TYPE_10__** %7, %struct.TYPE_10__** %10)
  br label %12

12:                                               ; preds = %74, %4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ true, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %75

20:                                               ; preds = %18
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %26, %20
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = call i64 @LEN(%struct.TYPE_10__* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %9, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store %struct.TYPE_10__** %50, %struct.TYPE_10__*** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %6, align 8
  br label %74

54:                                               ; preds = %26, %23
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = call i64 @LEN(%struct.TYPE_10__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %9, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store %struct.TYPE_10__** %70, %struct.TYPE_10__*** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %7, align 8
  br label %74

74:                                               ; preds = %54, %34
  br label %12

75:                                               ; preds = %18
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %76, align 8
  ret void
}

declare dso_local i32 @fix(%struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local i64 @LEN(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
