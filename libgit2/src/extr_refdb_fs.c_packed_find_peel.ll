; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_find_peel.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_find_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.packref = type { i32, i32, i32 }

@PACKREF_HAS_PEEL = common dso_local global i32 0, align 4
@PACKREF_CANNOT_PEEL = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.packref*)* @packed_find_peel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_find_peel(%struct.TYPE_3__* %0, %struct.packref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.packref*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.packref* %1, %struct.packref** %5, align 8
  %8 = load %struct.packref*, %struct.packref** %5, align 8
  %9 = getelementptr inbounds %struct.packref, %struct.packref* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PACKREF_HAS_PEEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.packref*, %struct.packref** %5, align 8
  %16 = getelementptr inbounds %struct.packref, %struct.packref* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PACKREF_CANNOT_PEEL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.packref*, %struct.packref** %5, align 8
  %27 = getelementptr inbounds %struct.packref, %struct.packref* %26, i32 0, i32 2
  %28 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %29 = call i64 @git_object_lookup(i32** %6, i32 %25, i32* %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %52

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @git_object_type(i32* %33)
  %35 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %7, align 8
  %39 = load %struct.packref*, %struct.packref** %5, align 8
  %40 = getelementptr inbounds %struct.packref, %struct.packref* %39, i32 0, i32 1
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @git_tag_target_id(i32* %41)
  %43 = call i32 @git_oid_cpy(i32* %40, i32 %42)
  %44 = load i32, i32* @PACKREF_HAS_PEEL, align 4
  %45 = load %struct.packref*, %struct.packref** %5, align 8
  %46 = getelementptr inbounds %struct.packref, %struct.packref* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37, %32
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @git_object_free(i32* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %31, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_tag_target_id(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
