; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_stat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, %struct.statbuf*, i32)* }
%struct.mount = type { i32 }
%struct.statbuf = type { i32, i32, i32, i32, i32 }
%struct.ish_stat = type { i32, i32, i32, i32 }

@_ENOENT = common dso_local global i32 0, align 4
@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, %struct.statbuf*, i32)* @fakefs_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_stat(%struct.mount* %0, i8* %1, %struct.statbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ish_stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.statbuf* %2, %struct.statbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mount*, %struct.mount** %6, align 8
  %14 = call i32 @db_begin(%struct.mount* %13)
  %15 = load %struct.mount*, %struct.mount** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @path_read_stat(%struct.mount* %15, i8* %16, %struct.ish_stat* %10, i32* %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.mount*, %struct.mount** %6, align 8
  %21 = call i32 @db_rollback(%struct.mount* %20)
  %22 = load i32, i32* @_ENOENT, align 4
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %4
  %24 = load i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, %struct.statbuf*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %25 = load %struct.mount*, %struct.mount** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %24(%struct.mount* %25, i8* %26, %struct.statbuf* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.mount*, %struct.mount** %6, align 8
  %31 = call i32 @db_commit(%struct.mount* %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %56

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %39 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %10, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %43 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %47 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %51 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %55 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %36, %34, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @path_read_stat(%struct.mount*, i8*, %struct.ish_stat*, i32*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
