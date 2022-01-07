; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gmap* @gmap_create(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.gmap*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.gmap* @gmap_alloc(i64 %8)
  store %struct.gmap* %9, %struct.gmap** %6, align 8
  %10 = load %struct.gmap*, %struct.gmap** %6, align 8
  %11 = icmp ne %struct.gmap* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.gmap* null, %struct.gmap** %3, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = load %struct.gmap*, %struct.gmap** %6, align 8
  %16 = getelementptr inbounds %struct.gmap, %struct.gmap* %15, i32 0, i32 2
  store %struct.mm_struct* %14, %struct.mm_struct** %16, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.gmap*, %struct.gmap** %6, align 8
  %22 = getelementptr inbounds %struct.gmap, %struct.gmap* %21, i32 0, i32 1
  %23 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @list_add_rcu(i32* %22, i32* %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i64 @list_is_singular(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load %struct.gmap*, %struct.gmap** %6, align 8
  %34 = getelementptr inbounds %struct.gmap, %struct.gmap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %37

36:                                               ; preds = %13
  store i64 -1, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @WRITE_ONCE(i32 %41, i64 %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.gmap*, %struct.gmap** %6, align 8
  store %struct.gmap* %48, %struct.gmap** %3, align 8
  br label %49

49:                                               ; preds = %37, %12
  %50 = load %struct.gmap*, %struct.gmap** %3, align 8
  ret %struct.gmap* %50
}

declare dso_local %struct.gmap* @gmap_alloc(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
