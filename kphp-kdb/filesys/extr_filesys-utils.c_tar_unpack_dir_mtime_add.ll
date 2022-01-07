; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_unpack_dir_mtime_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_unpack_dir_mtime_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.tar_unpack_dir_mtime_entry** }
%struct.tar_unpack_dir_mtime_entry = type { %struct.tar_unpack_dir_mtime_entry*, i32, i32 }
%struct.stat = type { i32 }

@MAX_DIR_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, %struct.stat*)* @tar_unpack_dir_mtime_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tar_unpack_dir_mtime_add(%struct.TYPE_3__* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tar_unpack_dir_mtime_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX_DIR_DEPTH, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add i64 16, %33
  %35 = add i64 %34, 1
  %36 = call %struct.tar_unpack_dir_mtime_entry* @zmalloc(i64 %35)
  store %struct.tar_unpack_dir_mtime_entry* %36, %struct.tar_unpack_dir_mtime_entry** %9, align 8
  %37 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %9, align 8
  %38 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %37, i32 0, i32 2
  %39 = load %struct.stat*, %struct.stat** %6, align 8
  %40 = call i32 @memcpy(i32* %38, %struct.stat* %39, i32 4)
  %41 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %9, align 8
  %42 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcpy(i32 %43, i8* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.tar_unpack_dir_mtime_entry**, %struct.tar_unpack_dir_mtime_entry*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %48, i64 %50
  %52 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %51, align 8
  %53 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %9, align 8
  %54 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %53, i32 0, i32 0
  store %struct.tar_unpack_dir_mtime_entry* %52, %struct.tar_unpack_dir_mtime_entry** %54, align 8
  %55 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %9, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.tar_unpack_dir_mtime_entry**, %struct.tar_unpack_dir_mtime_entry*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %58, i64 %60
  store %struct.tar_unpack_dir_mtime_entry* %55, %struct.tar_unpack_dir_mtime_entry** %61, align 8
  br label %62

62:                                               ; preds = %31, %27
  ret void
}

declare dso_local %struct.tar_unpack_dir_mtime_entry* @zmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.stat*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
