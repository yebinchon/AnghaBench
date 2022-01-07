; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_append.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @data_restore_append(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @map_int_vptr_get(i32* %12, i32 %13)
  %15 = inttoptr i64 %14 to i32**
  store i32** %15, i32*** %7, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load i32**, i32*** %7, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @restore_list_is_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @map_int_vptr_add(i32* %28, i32 %29)
  %31 = inttoptr i64 %30 to i32**
  store i32** %31, i32*** %9, align 8
  %32 = load i32**, i32*** %9, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @restore_list_alloc(i32 %36)
  %38 = load i32**, i32*** %9, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %35, %18
  %40 = load i32**, i32*** %9, align 8
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @restore_list_pop_front(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @restore_list_append(i32* %44, i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @map_int_vptr_del(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %3
  ret void
}

declare dso_local i64 @map_int_vptr_get(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @restore_list_is_empty(i32*) #1

declare dso_local i64 @map_int_vptr_add(i32*, i32) #1

declare dso_local i32* @restore_list_alloc(i32) #1

declare dso_local i32* @restore_list_pop_front(i32*) #1

declare dso_local i32 @restore_list_append(i32*, i32*) #1

declare dso_local i32 @map_int_vptr_del(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
