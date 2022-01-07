; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_prepare_in_pack_by_idx.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_prepare_in_pack_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { %struct.packed_git**, i32 }
%struct.packed_git = type { i32, %struct.packed_git* }

@OE_IN_PACK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packing_data*)* @prepare_in_pack_by_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_in_pack_by_idx(%struct.packing_data* %0) #0 {
  %2 = alloca %struct.packing_data*, align 8
  %3 = alloca %struct.packed_git**, align 8
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.packing_data* %0, %struct.packing_data** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @OE_IN_PACK_BITS, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.packed_git**, %struct.packed_git*** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ALLOC_ARRAY(%struct.packed_git** %9, i32 %10)
  %12 = load %struct.packed_git**, %struct.packed_git*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %12, i64 %15
  store %struct.packed_git* null, %struct.packed_git** %16, align 8
  %17 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %18 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.packed_git* @get_all_packs(i32 %19)
  store %struct.packed_git* %20, %struct.packed_git** %4, align 8
  br label %21

21:                                               ; preds = %40, %1
  %22 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %23 = icmp ne %struct.packed_git* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.packed_git**, %struct.packed_git*** %3, align 8
  %30 = call i32 @free(%struct.packed_git** %29)
  br label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %34 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %36 = load %struct.packed_git**, %struct.packed_git*** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %36, i64 %38
  store %struct.packed_git* %35, %struct.packed_git** %39, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %42 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %41, i32 0, i32 1
  %43 = load %struct.packed_git*, %struct.packed_git** %42, align 8
  store %struct.packed_git* %43, %struct.packed_git** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.packed_git**, %struct.packed_git*** %3, align 8
  %48 = load %struct.packing_data*, %struct.packing_data** %2, align 8
  %49 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %48, i32 0, i32 0
  store %struct.packed_git** %47, %struct.packed_git*** %49, align 8
  br label %50

50:                                               ; preds = %46, %28
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(%struct.packed_git**, i32) #1

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @free(%struct.packed_git**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
