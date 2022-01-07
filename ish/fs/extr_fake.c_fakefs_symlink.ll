; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_symlink.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mount = type { i32 }
%struct.ish_stat = type { i32, i64, i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i8*)* @fakefs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_symlink(%struct.mount* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ish_stat, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = call i32 @db_begin(%struct.mount* %12)
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @fix_path(i8* %17)
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @openat(i32 %16, i32 %18, i32 %23, i32 438)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.mount*, %struct.mount** %5, align 8
  %29 = call i32 @db_rollback(%struct.mount* %28)
  %30 = call i32 (...) @errno_map()
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i64 @write(i32 %32, i8* %33, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.mount*, %struct.mount** %5, align 8
  %44 = getelementptr inbounds %struct.mount, %struct.mount* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @fix_path(i8* %46)
  %48 = call i32 @unlinkat(i32 %45, i32 %47, i32 0)
  %49 = load %struct.mount*, %struct.mount** %5, align 8
  %50 = call i32 @db_rollback(%struct.mount* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* @errno, align 4
  %52 = call i32 (...) @errno_map()
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %31
  %54 = load i32, i32* @S_IFLNK, align 4
  %55 = or i32 %54, 511
  %56 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %11, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.mount*, %struct.mount** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @path_create(%struct.mount* %66, i8* %67, %struct.ish_stat* %11)
  %69 = load %struct.mount*, %struct.mount** %5, align 8
  %70 = call i32 @db_commit(%struct.mount* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %53, %41, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @openat(i32, i32, i32, i32) #1

declare dso_local i32 @fix_path(i8*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlinkat(i32, i32, i32) #1

declare dso_local i32 @path_create(%struct.mount*, i8*, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
