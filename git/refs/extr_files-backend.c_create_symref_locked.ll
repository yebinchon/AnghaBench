; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_create_symref_locked.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_create_symref_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_ref_store = type { i32 }
%struct.ref_lock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@prefer_symlink_refs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to fdopen %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ref: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to write symref for %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, %struct.ref_lock*, i8*, i8*, i8*)* @create_symref_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_symref_locked(%struct.files_ref_store* %0, %struct.ref_lock* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca %struct.ref_lock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %7, align 8
  store %struct.ref_lock* %1, %struct.ref_lock** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i64, i64* @prefer_symlink_refs, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %5
  %15 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @create_ref_symlink(%struct.ref_lock* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %21 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @update_symref_reflog(%struct.files_ref_store* %20, %struct.ref_lock* %21, i8* %22, i8* %23, i8* %24)
  store i32 0, i32* %6, align 4
  br label %66

26:                                               ; preds = %14, %5
  %27 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %28 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %27, i32 0, i32 0
  %29 = call i32 @fdopen_lock_file(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %33 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %40)
  store i32 %41, i32* %6, align 4
  br label %66

42:                                               ; preds = %26
  %43 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %44 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @update_symref_reflog(%struct.files_ref_store* %43, %struct.ref_lock* %44, i8* %45, i8* %46, i8* %47)
  %49 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %50 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %58 = call i64 @commit_ref(%struct.ref_lock* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i8* @strerror(i32 %62)
  %64 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %63)
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %60, %31, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @create_ref_symlink(%struct.ref_lock*, i8*) #1

declare dso_local i32 @update_symref_reflog(%struct.files_ref_store*, %struct.ref_lock*, i8*, i8*, i8*) #1

declare dso_local i32 @fdopen_lock_file(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @commit_ref(%struct.ref_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
