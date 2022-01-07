; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_pmd_op_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_pmd_op_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gmap*, i64)* @gmap_pmd_op_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gmap_pmd_op_walk(%struct.gmap* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.gmap* %0, %struct.gmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.gmap*, %struct.gmap** %4, align 8
  %8 = call i32 @gmap_is_shadow(%struct.gmap* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.gmap*, %struct.gmap** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @gmap_table_walk(%struct.gmap* %10, i64 %11, i32 1)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.gmap*, %struct.gmap** %4, align 8
  %19 = getelementptr inbounds %struct.gmap, %struct.gmap* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pmd_none(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %33

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32* [ null, %30 ], [ %32, %31 ]
  store i32* %34, i32** %3, align 8
  br label %58

35:                                               ; preds = %17
  %36 = load %struct.gmap*, %struct.gmap** %4, align 8
  %37 = getelementptr inbounds %struct.gmap, %struct.gmap* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @pmd_none(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.gmap*, %struct.gmap** %4, align 8
  %45 = getelementptr inbounds %struct.gmap, %struct.gmap* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  store i32* null, i32** %3, align 8
  br label %58

47:                                               ; preds = %35
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pmd_large(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.gmap*, %struct.gmap** %4, align 8
  %54 = getelementptr inbounds %struct.gmap, %struct.gmap* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %56, %43, %33, %16
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64 @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pmd_large(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
