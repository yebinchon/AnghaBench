; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_readlink.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.mount*, i8*, i8*, i64)* }
%struct.mount = type { i32 }
%struct.ish_stat = type { i32 }

@_ENOENT = common dso_local global i64 0, align 8
@_EINVAL = common dso_local global i64 0, align 8
@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mount*, i8*, i8*, i64)* @fakefs_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fakefs_readlink(%struct.mount* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ish_stat, align 4
  %11 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mount*, %struct.mount** %6, align 8
  %13 = call i32 @db_begin(%struct.mount* %12)
  %14 = load %struct.mount*, %struct.mount** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @path_read_stat(%struct.mount* %14, i8* %15, %struct.ish_stat* %10, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.mount*, %struct.mount** %6, align 8
  %20 = call i32 @db_rollback(%struct.mount* %19)
  %21 = load i64, i64* @_ENOENT, align 8
  store i64 %21, i64* %5, align 8
  br label %51

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISLNK(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.mount*, %struct.mount** %6, align 8
  %29 = call i32 @db_rollback(%struct.mount* %28)
  %30 = load i64, i64* @_EINVAL, align 8
  store i64 %30, i64* %5, align 8
  br label %51

31:                                               ; preds = %22
  %32 = load i64 (%struct.mount*, i8*, i8*, i64)*, i64 (%struct.mount*, i8*, i8*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %33 = load %struct.mount*, %struct.mount** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 %32(%struct.mount* %33, i8* %34, i8* %35, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @_EINVAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.mount*, %struct.mount** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @file_readlink(%struct.mount* %42, i8* %43, i8* %44, i64 %45)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %41, %31
  %48 = load %struct.mount*, %struct.mount** %6, align 8
  %49 = call i32 @db_commit(%struct.mount* %48)
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %47, %27, %18
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @path_read_stat(%struct.mount*, i8*, %struct.ish_stat*, i32*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @file_readlink(%struct.mount*, i8*, i8*, i64) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
