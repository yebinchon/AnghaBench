; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_entry = type { i32 }
%struct.pack_backend = type { %struct.git_pack_file* }
%struct.git_pack_file = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to find pack entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_entry*, %struct.pack_backend*, i32*)* @pack_entry_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_entry_find(%struct.git_pack_entry* %0, %struct.pack_backend* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.git_pack_entry*, align 8
  %6 = alloca %struct.pack_backend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.git_pack_file*, align 8
  store %struct.git_pack_entry* %0, %struct.git_pack_entry** %5, align 8
  store %struct.pack_backend* %1, %struct.pack_backend** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %10 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %9, i32 0, i32 0
  %11 = load %struct.git_pack_file*, %struct.git_pack_file** %10, align 8
  store %struct.git_pack_file* %11, %struct.git_pack_file** %8, align 8
  %12 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %13 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %12, i32 0, i32 0
  %14 = load %struct.git_pack_file*, %struct.git_pack_file** %13, align 8
  %15 = icmp ne %struct.git_pack_file* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.git_pack_entry*, %struct.git_pack_entry** %5, align 8
  %18 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %19 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %18, i32 0, i32 0
  %20 = load %struct.git_pack_file*, %struct.git_pack_file** %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %23 = call i64 @git_pack_entry_find(%struct.git_pack_entry* %17, %struct.git_pack_file* %20, i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %38

26:                                               ; preds = %16, %3
  %27 = load %struct.git_pack_entry*, %struct.git_pack_entry** %5, align 8
  %28 = load %struct.pack_backend*, %struct.pack_backend** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %31 = call i32 @pack_entry_find_inner(%struct.git_pack_entry* %27, %struct.pack_backend* %28, i32* %29, %struct.git_pack_file* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %37 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %33, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @git_pack_entry_find(%struct.git_pack_entry*, %struct.git_pack_file*, i32*, i32) #1

declare dso_local i32 @pack_entry_find_inner(%struct.git_pack_entry*, %struct.pack_backend*, i32*, %struct.git_pack_file*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
