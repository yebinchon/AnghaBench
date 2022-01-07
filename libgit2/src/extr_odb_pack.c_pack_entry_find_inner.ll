; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find_inner.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_entry = type { i32 }
%struct.pack_backend = type { %struct.git_pack_file*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.git_pack_file = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_entry*, %struct.pack_backend*, i32*, %struct.git_pack_file*)* @pack_entry_find_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_entry_find_inner(%struct.git_pack_entry* %0, %struct.pack_backend* %1, i32* %2, %struct.git_pack_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.git_pack_entry*, align 8
  %7 = alloca %struct.pack_backend*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.git_pack_file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.git_pack_file*, align 8
  store %struct.git_pack_entry* %0, %struct.git_pack_entry** %6, align 8
  store %struct.pack_backend* %1, %struct.pack_backend** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.git_pack_file* %3, %struct.git_pack_file** %9, align 8
  %12 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %13 = icmp ne %struct.git_pack_file* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %16 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %19 = call i64 @git_pack_entry_find(%struct.git_pack_entry* %15, %struct.git_pack_file* %16, i32* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %55

22:                                               ; preds = %14, %4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %26 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %32 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %31, i32 0, i32 1
  %33 = load i64, i64* %10, align 8
  %34 = call %struct.git_pack_file* @git_vector_get(%struct.TYPE_2__* %32, i64 %33)
  store %struct.git_pack_file* %34, %struct.git_pack_file** %11, align 8
  %35 = load %struct.git_pack_file*, %struct.git_pack_file** %11, align 8
  %36 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %37 = icmp eq %struct.git_pack_file* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %51

39:                                               ; preds = %30
  %40 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %41 = load %struct.git_pack_file*, %struct.git_pack_file** %11, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %44 = call i64 @git_pack_entry_find(%struct.git_pack_entry* %40, %struct.git_pack_file* %41, i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.git_pack_file*, %struct.git_pack_file** %11, align 8
  %48 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %49 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %48, i32 0, i32 0
  store %struct.git_pack_file* %47, %struct.git_pack_file** %49, align 8
  store i32 0, i32* %5, align 4
  br label %55

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %23

54:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %46, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @git_pack_entry_find(%struct.git_pack_entry*, %struct.git_pack_file*, i32*, i32) #1

declare dso_local %struct.git_pack_file* @git_vector_get(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
