; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_write_midx_large_offsets.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_write_midx_large_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.pack_midx_entry = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"too many large-offset objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, i32, %struct.pack_midx_entry*, i32)* @write_midx_large_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_midx_large_offsets(%struct.hashfile* %0, i32 %1, %struct.pack_midx_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.hashfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pack_midx_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pack_midx_entry*, align 8
  %10 = alloca %struct.pack_midx_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pack_midx_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pack_midx_entry* %2, %struct.pack_midx_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  store %struct.pack_midx_entry* %14, %struct.pack_midx_entry** %9, align 8
  %15 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %15, i64 %17
  store %struct.pack_midx_entry* %18, %struct.pack_midx_entry** %10, align 8
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %38, %37, %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %9, align 8
  %24 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %10, align 8
  %25 = icmp uge %struct.pack_midx_entry* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %9, align 8
  %30 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %29, i32 1
  store %struct.pack_midx_entry* %30, %struct.pack_midx_entry** %9, align 8
  store %struct.pack_midx_entry* %29, %struct.pack_midx_entry** %12, align 8
  %31 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %12, align 8
  %32 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 %34, 31
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %19

38:                                               ; preds = %28
  %39 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %40 = load i32, i32* %13, align 4
  %41 = ashr i32 %40, 32
  %42 = call i32 @hashwrite_be32(%struct.hashfile* %39, i32 %41)
  %43 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4294967295
  %47 = trunc i64 %46 to i32
  %48 = call i32 @hashwrite_be32(%struct.hashfile* %43, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 8
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i64, i64* %11, align 8
  ret i64 %54
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
