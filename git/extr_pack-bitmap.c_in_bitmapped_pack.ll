; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_in_bitmapped_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_in_bitmapped_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }
%struct.object_list = type { %struct.object_list*, %struct.object* }
%struct.object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_index*, %struct.object_list*)* @in_bitmapped_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_bitmapped_pack(%struct.bitmap_index* %0, %struct.object_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_index*, align 8
  %5 = alloca %struct.object_list*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %4, align 8
  store %struct.object_list* %1, %struct.object_list** %5, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.object_list*, %struct.object_list** %5, align 8
  %9 = icmp ne %struct.object_list* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.object_list*, %struct.object_list** %5, align 8
  %12 = getelementptr inbounds %struct.object_list, %struct.object_list* %11, i32 0, i32 1
  %13 = load %struct.object*, %struct.object** %12, align 8
  store %struct.object* %13, %struct.object** %6, align 8
  %14 = load %struct.object_list*, %struct.object_list** %5, align 8
  %15 = getelementptr inbounds %struct.object_list, %struct.object_list* %14, i32 0, i32 0
  %16 = load %struct.object_list*, %struct.object_list** %15, align 8
  store %struct.object_list* %16, %struct.object_list** %5, align 8
  %17 = load %struct.object*, %struct.object** %6, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %22 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @find_pack_entry_one(i32 %20, i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %10
  br label %7

28:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @find_pack_entry_one(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
