; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrInsertBefore.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrInsertBefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.attr*, %struct.attr* }
%struct.attr = type { %struct.attr*, %struct.attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.attr*, %struct.attr*)* @attrInsertBefore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrInsertBefore(%struct.TYPE_3__* %0, %struct.attr* %1, %struct.attr* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.attr*, align 8
  %6 = alloca %struct.attr*, align 8
  %7 = alloca %struct.attr*, align 8
  %8 = alloca %struct.attr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.attr* %1, %struct.attr** %5, align 8
  store %struct.attr* %2, %struct.attr** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.attr*, %struct.attr** %10, align 8
  %12 = icmp eq %struct.attr* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.attr*, %struct.attr** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.attr* %14, %struct.attr** %16, align 8
  %17 = load %struct.attr*, %struct.attr** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.attr* %17, %struct.attr** %19, align 8
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.attr*, %struct.attr** %6, align 8
  %22 = icmp eq %struct.attr* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.attr*, %struct.attr** %25, align 8
  store %struct.attr* %26, %struct.attr** %7, align 8
  %27 = load %struct.attr*, %struct.attr** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store %struct.attr* %27, %struct.attr** %29, align 8
  %30 = load %struct.attr*, %struct.attr** %7, align 8
  %31 = load %struct.attr*, %struct.attr** %5, align 8
  %32 = getelementptr inbounds %struct.attr, %struct.attr* %31, i32 0, i32 1
  store %struct.attr* %30, %struct.attr** %32, align 8
  %33 = load %struct.attr*, %struct.attr** %5, align 8
  %34 = load %struct.attr*, %struct.attr** %7, align 8
  %35 = getelementptr inbounds %struct.attr, %struct.attr* %34, i32 0, i32 0
  store %struct.attr* %33, %struct.attr** %35, align 8
  br label %72

36:                                               ; preds = %20
  %37 = load %struct.attr*, %struct.attr** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.attr*, %struct.attr** %39, align 8
  %41 = icmp eq %struct.attr* %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.attr*, %struct.attr** %44, align 8
  store %struct.attr* %45, %struct.attr** %8, align 8
  %46 = load %struct.attr*, %struct.attr** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.attr* %46, %struct.attr** %48, align 8
  %49 = load %struct.attr*, %struct.attr** %5, align 8
  %50 = load %struct.attr*, %struct.attr** %8, align 8
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %50, i32 0, i32 1
  store %struct.attr* %49, %struct.attr** %51, align 8
  %52 = load %struct.attr*, %struct.attr** %8, align 8
  %53 = load %struct.attr*, %struct.attr** %5, align 8
  %54 = getelementptr inbounds %struct.attr, %struct.attr* %53, i32 0, i32 0
  store %struct.attr* %52, %struct.attr** %54, align 8
  br label %72

55:                                               ; preds = %36
  %56 = load %struct.attr*, %struct.attr** %6, align 8
  %57 = getelementptr inbounds %struct.attr, %struct.attr* %56, i32 0, i32 1
  %58 = load %struct.attr*, %struct.attr** %57, align 8
  %59 = load %struct.attr*, %struct.attr** %5, align 8
  %60 = getelementptr inbounds %struct.attr, %struct.attr* %59, i32 0, i32 1
  store %struct.attr* %58, %struct.attr** %60, align 8
  %61 = load %struct.attr*, %struct.attr** %6, align 8
  %62 = load %struct.attr*, %struct.attr** %5, align 8
  %63 = getelementptr inbounds %struct.attr, %struct.attr* %62, i32 0, i32 0
  store %struct.attr* %61, %struct.attr** %63, align 8
  %64 = load %struct.attr*, %struct.attr** %5, align 8
  %65 = load %struct.attr*, %struct.attr** %6, align 8
  %66 = getelementptr inbounds %struct.attr, %struct.attr* %65, i32 0, i32 1
  store %struct.attr* %64, %struct.attr** %66, align 8
  %67 = load %struct.attr*, %struct.attr** %5, align 8
  %68 = load %struct.attr*, %struct.attr** %5, align 8
  %69 = getelementptr inbounds %struct.attr, %struct.attr* %68, i32 0, i32 1
  %70 = load %struct.attr*, %struct.attr** %69, align 8
  %71 = getelementptr inbounds %struct.attr, %struct.attr* %70, i32 0, i32 0
  store %struct.attr* %67, %struct.attr** %71, align 8
  br label %72

72:                                               ; preds = %55, %42, %23, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
