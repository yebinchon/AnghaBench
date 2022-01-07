; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_oe_set_delta_ext.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_oe_set_delta_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { %struct.object_entry*, i64, i32 }
%struct.object_entry = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oe_set_delta_ext(%struct.packing_data* %0, %struct.object_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.packing_data*, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_entry*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %4, align 8
  store %struct.object_entry* %1, %struct.object_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %9 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %8, i32 0, i32 0
  %10 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %11 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %12 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %16 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ALLOC_GROW(%struct.object_entry* %10, i64 %14, i32 %17)
  %19 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %20 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %19, i32 0, i32 0
  %21 = load %struct.object_entry*, %struct.object_entry** %20, align 8
  %22 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %23 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %21, i64 %24
  store %struct.object_entry* %26, %struct.object_entry** %7, align 8
  %27 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %28 = call i32 @memset(%struct.object_entry* %27, i32 0, i32 20)
  %29 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %30 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @hashcpy(i32 %33, i8* %34)
  %36 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %37 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %39 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %41 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %43 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %44 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %43, i32 0, i32 0
  %45 = load %struct.object_entry*, %struct.object_entry** %44, align 8
  %46 = ptrtoint %struct.object_entry* %42 to i64
  %47 = ptrtoint %struct.object_entry* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 20
  %50 = add nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %53 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.object_entry*, i64, i32) #1

declare dso_local i32 @memset(%struct.object_entry*, i32, i32) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
