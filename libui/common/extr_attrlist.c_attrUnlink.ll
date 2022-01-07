; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrUnlink.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrlist.c_attrUnlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.attr*, %struct.attr* }
%struct.attr = type { %struct.attr*, %struct.attr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr* (%struct.TYPE_3__*, %struct.attr*)* @attrUnlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr* @attrUnlink(%struct.TYPE_3__* %0, %struct.attr* %1) #0 {
  %3 = alloca %struct.attr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.attr*, align 8
  %6 = alloca %struct.attr*, align 8
  %7 = alloca %struct.attr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.attr* %1, %struct.attr** %5, align 8
  %8 = load %struct.attr*, %struct.attr** %5, align 8
  %9 = getelementptr inbounds %struct.attr, %struct.attr* %8, i32 0, i32 0
  %10 = load %struct.attr*, %struct.attr** %9, align 8
  store %struct.attr* %10, %struct.attr** %6, align 8
  %11 = load %struct.attr*, %struct.attr** %5, align 8
  %12 = getelementptr inbounds %struct.attr, %struct.attr* %11, i32 0, i32 1
  %13 = load %struct.attr*, %struct.attr** %12, align 8
  store %struct.attr* %13, %struct.attr** %7, align 8
  %14 = load %struct.attr*, %struct.attr** %5, align 8
  %15 = getelementptr inbounds %struct.attr, %struct.attr* %14, i32 0, i32 0
  store %struct.attr* null, %struct.attr** %15, align 8
  %16 = load %struct.attr*, %struct.attr** %5, align 8
  %17 = getelementptr inbounds %struct.attr, %struct.attr* %16, i32 0, i32 1
  store %struct.attr* null, %struct.attr** %17, align 8
  %18 = load %struct.attr*, %struct.attr** %6, align 8
  %19 = icmp eq %struct.attr* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.attr*, %struct.attr** %7, align 8
  %22 = icmp eq %struct.attr* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.attr* null, %struct.attr** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.attr* null, %struct.attr** %27, align 8
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %55

28:                                               ; preds = %20, %2
  %29 = load %struct.attr*, %struct.attr** %6, align 8
  %30 = icmp eq %struct.attr* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.attr*, %struct.attr** %7, align 8
  %33 = getelementptr inbounds %struct.attr, %struct.attr* %32, i32 0, i32 0
  store %struct.attr* null, %struct.attr** %33, align 8
  %34 = load %struct.attr*, %struct.attr** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.attr* %34, %struct.attr** %36, align 8
  %37 = load %struct.attr*, %struct.attr** %7, align 8
  store %struct.attr* %37, %struct.attr** %3, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.attr*, %struct.attr** %7, align 8
  %40 = icmp eq %struct.attr* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.attr*, %struct.attr** %6, align 8
  %43 = getelementptr inbounds %struct.attr, %struct.attr* %42, i32 0, i32 1
  store %struct.attr* null, %struct.attr** %43, align 8
  %44 = load %struct.attr*, %struct.attr** %6, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.attr* %44, %struct.attr** %46, align 8
  store %struct.attr* null, %struct.attr** %3, align 8
  br label %55

47:                                               ; preds = %38
  %48 = load %struct.attr*, %struct.attr** %7, align 8
  %49 = load %struct.attr*, %struct.attr** %6, align 8
  %50 = getelementptr inbounds %struct.attr, %struct.attr* %49, i32 0, i32 1
  store %struct.attr* %48, %struct.attr** %50, align 8
  %51 = load %struct.attr*, %struct.attr** %6, align 8
  %52 = load %struct.attr*, %struct.attr** %7, align 8
  %53 = getelementptr inbounds %struct.attr, %struct.attr* %52, i32 0, i32 0
  store %struct.attr* %51, %struct.attr** %53, align 8
  %54 = load %struct.attr*, %struct.attr** %7, align 8
  store %struct.attr* %54, %struct.attr** %3, align 8
  br label %55

55:                                               ; preds = %47, %41, %31, %23
  %56 = load %struct.attr*, %struct.attr** %3, align 8
  ret %struct.attr* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
