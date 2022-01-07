; ModuleID = '/home/carl/AnghaBench/htop/extr_Hashtable.c_Hashtable_put.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Hashtable.c_Hashtable_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hashtable_put(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = urem i32 %9, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  store %struct.TYPE_6__** %19, %struct.TYPE_6__*** %8, align 8
  br label %20

20:                                               ; preds = %3, %61
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.TYPE_6__* @HashtableItem_new(i32 %25, i8* %26)
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %62

33:                                               ; preds = %20
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  br label %62

56:                                               ; preds = %33
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %8, align 8
  br label %60

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  br label %20

62:                                               ; preds = %51, %24
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @Hashtable_isConsistent(%struct.TYPE_7__* %63)
  %65 = call i32 @assert(i32 %64)
  ret void
}

declare dso_local %struct.TYPE_6__* @HashtableItem_new(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Hashtable_isConsistent(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
