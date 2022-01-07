; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_load_pack_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_load_pack_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i64, i32*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_index*)* @load_pack_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_pack_bitmap(%struct.bitmap_index* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_index*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %3, align 8
  %4 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %5 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = call i32 (...) @kh_init_oid_map()
  %9 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %10 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = call i32 (...) @kh_init_oid_pos()
  %12 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %13 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %16 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @load_pack_revindex(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %23 = call i8* @read_bitmap_1(%struct.bitmap_index* %22)
  %24 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %25 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = icmp ne i8* %23, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %29 = call i8* @read_bitmap_1(%struct.bitmap_index* %28)
  %30 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %31 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = icmp ne i8* %29, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %35 = call i8* @read_bitmap_1(%struct.bitmap_index* %34)
  %36 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %37 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = icmp ne i8* %35, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %41 = call i8* @read_bitmap_1(%struct.bitmap_index* %40)
  %42 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %43 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = icmp ne i8* %41, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %33, %27, %21
  br label %52

46:                                               ; preds = %39
  %47 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %48 = call i64 @load_bitmap_entries_v1(%struct.bitmap_index* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %64

52:                                               ; preds = %50, %45, %20
  %53 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %54 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %57 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @munmap(i32* %55, i64 %58)
  %60 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %61 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %63 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 -1, i32* %2, align 4
  br label %64

64:                                               ; preds = %52, %51
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @kh_init_oid_map(...) #1

declare dso_local i32 @kh_init_oid_pos(...) #1

declare dso_local i64 @load_pack_revindex(i32) #1

declare dso_local i8* @read_bitmap_1(%struct.bitmap_index*) #1

declare dso_local i64 @load_bitmap_entries_v1(%struct.bitmap_index*) #1

declare dso_local i32 @munmap(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
