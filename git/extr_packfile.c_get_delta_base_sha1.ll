; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_get_delta_base_sha1.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_get_delta_base_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }
%struct.revindex_entry = type { i32 }

@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.packed_git*, %struct.pack_window**, i32, i32, i32)* @get_delta_base_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_delta_base_sha1(%struct.packed_git* %0, %struct.pack_window** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca %struct.pack_window**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.revindex_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %7, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @OBJ_REF_DELTA, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %20 = load %struct.pack_window**, %struct.pack_window*** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @use_pack(%struct.packed_git* %19, %struct.pack_window** %20, i32 %21, i32* null)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  store i8* %23, i8** %6, align 8
  br label %51

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %30 = load %struct.pack_window**, %struct.pack_window*** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @get_delta_base(%struct.packed_git* %29, %struct.pack_window** %30, i32* %9, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8* null, i8** %6, align 8
  br label %51

37:                                               ; preds = %28
  %38 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call %struct.revindex_entry* @find_pack_revindex(%struct.packed_git* %38, i32 %39)
  store %struct.revindex_entry* %40, %struct.revindex_entry** %13, align 8
  %41 = load %struct.revindex_entry*, %struct.revindex_entry** %13, align 8
  %42 = icmp ne %struct.revindex_entry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i8* null, i8** %6, align 8
  br label %51

44:                                               ; preds = %37
  %45 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %46 = load %struct.revindex_entry*, %struct.revindex_entry** %13, align 8
  %47 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @nth_packed_object_sha1(%struct.packed_git* %45, i32 %48)
  store i8* %49, i8** %6, align 8
  br label %51

50:                                               ; preds = %24
  store i8* null, i8** %6, align 8
  br label %51

51:                                               ; preds = %50, %44, %43, %36, %18
  %52 = load i8*, i8** %6, align 8
  ret i8* %52
}

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i32, i32*) #1

declare dso_local i32 @get_delta_base(%struct.packed_git*, %struct.pack_window**, i32*, i32, i32) #1

declare dso_local %struct.revindex_entry* @find_pack_revindex(%struct.packed_git*, i32) #1

declare dso_local i8* @nth_packed_object_sha1(%struct.packed_git*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
