; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_setattr.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, i64)* }
%struct.mount = type { i32 }
%struct.attr = type { i64 }
%struct.ish_stat = type { i32 }

@attr_size = common dso_local global i64 0, align 8
@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i64)* @fakefs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_setattr(%struct.mount* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.attr, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ish_stat, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  %11 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @attr_size, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32 (%struct.mount*, i8*, i64)*, i32 (%struct.mount*, i8*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %17 = load %struct.mount*, %struct.mount** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 %16(%struct.mount* %17, i8* %18, i64 %20)
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.mount*, %struct.mount** %6, align 8
  %24 = call i32 @db_begin(%struct.mount* %23)
  %25 = load %struct.mount*, %struct.mount** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @path_read_stat(%struct.mount* %25, i8* %26, %struct.ish_stat* %8, i32* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.mount*, %struct.mount** %6, align 8
  %31 = call i32 @db_rollback(%struct.mount* %30)
  %32 = load i32, i32* @_ENOENT, align 4
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @fake_stat_setattr(%struct.ish_stat* %8, i64 %35)
  %37 = load %struct.mount*, %struct.mount** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @inode_write_stat(%struct.mount* %37, i32 %38, %struct.ish_stat* %8)
  %40 = load %struct.mount*, %struct.mount** %6, align 8
  %41 = call i32 @db_commit(%struct.mount* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %29, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @path_read_stat(%struct.mount*, i8*, %struct.ish_stat*, i32*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @fake_stat_setattr(%struct.ish_stat*, i64) #1

declare dso_local i32 @inode_write_stat(%struct.mount*, i32, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
