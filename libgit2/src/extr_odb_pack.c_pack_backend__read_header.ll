; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__read_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_odb_backend = type { i32 }
%struct.git_pack_entry = type { i32, i32 }
%struct.pack_backend = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, %struct.git_odb_backend*, i32*)* @pack_backend__read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_backend__read_header(i64* %0, i32* %1, %struct.git_odb_backend* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.git_odb_backend*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.git_pack_entry, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.git_odb_backend* %2, %struct.git_odb_backend** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.git_odb_backend*, %struct.git_odb_backend** %8, align 8
  %19 = icmp ne %struct.git_odb_backend* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %20, %17, %14, %4
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %4 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.git_odb_backend*, %struct.git_odb_backend** %8, align 8
  %28 = bitcast %struct.git_odb_backend* %27 to %struct.pack_backend*
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @pack_entry_find(%struct.git_pack_entry* %10, %struct.pack_backend* %28, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i64*, i64** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_packfile_resolve_header(i64* %35, i32* %36, i32 %38, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pack_entry_find(%struct.git_pack_entry*, %struct.pack_backend*, i32*) #1

declare dso_local i32 @git_packfile_resolve_header(i64*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
