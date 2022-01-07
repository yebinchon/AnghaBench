; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_object_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_object_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.multi_pack_index = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object_id* @nth_midxed_object_oid(%struct.object_id* %0, %struct.multi_pack_index* %1, i32 %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.multi_pack_index*, align 8
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.multi_pack_index* %1, %struct.multi_pack_index** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %10 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.object_id* null, %struct.object_id** %4, align 8
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = getelementptr inbounds %struct.object_id, %struct.object_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %19 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %22 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = call i32 @hashcpy(i32 %17, i64 %27)
  %29 = load %struct.object_id*, %struct.object_id** %5, align 8
  store %struct.object_id* %29, %struct.object_id** %4, align 8
  br label %30

30:                                               ; preds = %14, %13
  %31 = load %struct.object_id*, %struct.object_id** %4, align 8
  ret %struct.object_id* %31
}

declare dso_local i32 @hashcpy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
