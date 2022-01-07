; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_write_hash_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_write_hash_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.pack_idx_entry = type { i32 }
%struct.object_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, %struct.pack_idx_entry**, i64)* @write_hash_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_hash_cache(%struct.hashfile* %0, %struct.pack_idx_entry** %1, i64 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca %struct.pack_idx_entry**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store %struct.pack_idx_entry** %1, %struct.pack_idx_entry*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.pack_idx_entry*, %struct.pack_idx_entry** %15, i64 %16
  %18 = load %struct.pack_idx_entry*, %struct.pack_idx_entry** %17, align 8
  %19 = bitcast %struct.pack_idx_entry* %18 to %struct.object_entry*
  store %struct.object_entry* %19, %struct.object_entry** %8, align 8
  %20 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @htonl(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %25 = call i32 @hashwrite(%struct.hashfile* %24, i64* %9, i32 8)
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
