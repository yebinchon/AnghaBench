; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_locate_object_entry_hash.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_locate_object_entry_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i64, i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.packing_data*, %struct.object_id*, i32*)* @locate_object_entry_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @locate_object_entry_hash(%struct.packing_data* %0, %struct.object_id* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.packing_data*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %12 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %9, align 8
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  %16 = call i64 @oidhash(%struct.object_id* %15)
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %48, %3
  %20 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %21 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %29 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load %struct.object_id*, %struct.object_id** %6, align 8
  %36 = load %struct.packing_data*, %struct.packing_data** %5, align 8
  %37 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i64 @oideq(%struct.object_id* %35, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load i32*, i32** %7, align 8
  store i32 1, i32* %46, align 4
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %4, align 8
  br label %56

48:                                               ; preds = %27
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  %51 = load i64, i64* %9, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %8, align 8
  br label %19

53:                                               ; preds = %19
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @oidhash(%struct.object_id*) #1

declare dso_local i64 @oideq(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
