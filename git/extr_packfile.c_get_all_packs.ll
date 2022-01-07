; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_get_all_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_get_all_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.packed_git*, %struct.multi_pack_index* }
%struct.multi_pack_index = type { i64, %struct.multi_pack_index* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.packed_git* @get_all_packs(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %5 = load %struct.repository*, %struct.repository** %2, align 8
  %6 = call i32 @prepare_packed_git(%struct.repository* %5)
  %7 = load %struct.repository*, %struct.repository** %2, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.multi_pack_index*, %struct.multi_pack_index** %10, align 8
  store %struct.multi_pack_index* %11, %struct.multi_pack_index** %3, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %14 = icmp ne %struct.multi_pack_index* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %19 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.repository*, %struct.repository** %2, align 8
  %24 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @prepare_midx_pack(%struct.repository* %23, %struct.multi_pack_index* %24, i64 %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %16

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %33 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %32, i32 0, i32 1
  %34 = load %struct.multi_pack_index*, %struct.multi_pack_index** %33, align 8
  store %struct.multi_pack_index* %34, %struct.multi_pack_index** %3, align 8
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.repository*, %struct.repository** %2, align 8
  %37 = getelementptr inbounds %struct.repository, %struct.repository* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.packed_git*, %struct.packed_git** %39, align 8
  ret %struct.packed_git* %40
}

declare dso_local i32 @prepare_packed_git(%struct.repository*) #1

declare dso_local i32 @prepare_midx_pack(%struct.repository*, %struct.multi_pack_index*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
