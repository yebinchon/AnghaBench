; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_open_pack_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_open_pack_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.bitmap_index = type { i32 }
%struct.packed_git = type { %struct.packed_git* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.bitmap_index*)* @open_pack_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_pack_bitmap(%struct.repository* %0, %struct.bitmap_index* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.bitmap_index*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.bitmap_index* %1, %struct.bitmap_index** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %8 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.repository*, %struct.repository** %3, align 8
  %15 = call %struct.packed_git* @get_all_packs(%struct.repository* %14)
  store %struct.packed_git* %15, %struct.packed_git** %5, align 8
  br label %16

16:                                               ; preds = %26, %2
  %17 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %18 = icmp ne %struct.packed_git* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %21 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %22 = call i64 @open_pack_bitmap_1(%struct.bitmap_index* %20, %struct.packed_git* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %28 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %27, i32 0, i32 0
  %29 = load %struct.packed_git*, %struct.packed_git** %28, align 8
  store %struct.packed_git* %29, %struct.packed_git** %5, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.packed_git* @get_all_packs(%struct.repository*) #1

declare dso_local i64 @open_pack_bitmap_1(%struct.bitmap_index*, %struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
