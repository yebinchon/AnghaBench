; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mkdir.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.mount*, i8*, i32)* }
%struct.mount = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ish_stat = type { i32, i64, i32, i32 }

@realfs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i32)* @fakefs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_mkdir(%struct.mount* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ish_stat, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mount*, %struct.mount** %5, align 8
  %11 = call i32 @db_begin(%struct.mount* %10)
  %12 = load i32 (%struct.mount*, i8*, i32)*, i32 (%struct.mount*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @realfs, i32 0, i32 0), align 8
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 %12(%struct.mount* %13, i8* %14, i32 511)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.mount*, %struct.mount** %5, align 8
  %20 = call i32 @db_rollback(%struct.mount* %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %9, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %9, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %9, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.mount*, %struct.mount** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @path_create(%struct.mount* %36, i8* %37, %struct.ish_stat* %9)
  %39 = load %struct.mount*, %struct.mount** %5, align 8
  %40 = call i32 @db_commit(%struct.mount* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %22, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @db_begin(%struct.mount*) #1

declare dso_local i32 @db_rollback(%struct.mount*) #1

declare dso_local i32 @path_create(%struct.mount*, i8*, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
