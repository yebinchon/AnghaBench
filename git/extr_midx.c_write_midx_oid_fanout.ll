; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_write_midx_oid_fanout.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_write_midx_oid_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.pack_midx_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MIDX_CHUNK_FANOUT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, %struct.pack_midx_entry*, i32)* @write_midx_oid_fanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_midx_oid_fanout(%struct.hashfile* %0, %struct.pack_midx_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca %struct.pack_midx_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pack_midx_entry*, align 8
  %8 = alloca %struct.pack_midx_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pack_midx_entry*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store %struct.pack_midx_entry* %1, %struct.pack_midx_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %5, align 8
  store %struct.pack_midx_entry* %12, %struct.pack_midx_entry** %7, align 8
  %13 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %13, i64 %15
  store %struct.pack_midx_entry* %16, %struct.pack_midx_entry** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %47, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  store %struct.pack_midx_entry* %21, %struct.pack_midx_entry** %11, align 8
  br label %22

22:                                               ; preds = %37, %20
  %23 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %11, align 8
  %24 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %8, align 8
  %25 = icmp ult %struct.pack_midx_entry* %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %11, align 8
  %28 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %26, %22
  %36 = phi i1 [ false, %22 ], [ %34, %26 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %11, align 8
  %41 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %40, i32 1
  store %struct.pack_midx_entry* %41, %struct.pack_midx_entry** %11, align 8
  br label %22

42:                                               ; preds = %35
  %43 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @hashwrite_be32(%struct.hashfile* %43, i32 %44)
  %46 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %11, align 8
  store %struct.pack_midx_entry* %46, %struct.pack_midx_entry** %7, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i64, i64* @MIDX_CHUNK_FANOUT_SIZE, align 8
  ret i64 %51
}

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
