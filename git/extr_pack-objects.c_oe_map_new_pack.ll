; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_oe_map_new_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_oe_map_new_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i64, i32, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oe_map_new_pack(%struct.packing_data* %0) #0 {
  %2 = alloca %struct.packing_data*, align 8
  %3 = alloca i64, align 8
  store %struct.packing_data* %0, %struct.packing_data** %2, align 8
  %4 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %5 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %8 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @REALLOC_ARRAY(i32* %6, i32 %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %14 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %19 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %20 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @oe_in_pack(%struct.packing_data* %18, i64 %23)
  %25 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %26 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %35 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @FREE_AND_NULL(i32 %36)
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @oe_in_pack(%struct.packing_data*, i64) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
