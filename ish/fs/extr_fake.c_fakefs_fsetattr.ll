; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_fsetattr.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_fsetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.fd*, i64)* }
%struct.fd = type { i32, i32 }
%struct.attr = type { i64 }
%struct.ish_stat = type { i32 }

@attr_size = common dso_local global i64 0, align 8
@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i64)* @fakefs_fsetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_fsetattr(%struct.fd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attr, align 8
  %5 = alloca %struct.fd*, align 8
  %6 = alloca %struct.ish_stat, align 4
  %7 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.fd* %0, %struct.fd** %5, align 8
  %8 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @attr_size, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32 (%struct.fd*, i64)*, i32 (%struct.fd*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %14 = load %struct.fd*, %struct.fd** %5, align 8
  %15 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 %13(%struct.fd* %14, i64 %16)
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.fd*, %struct.fd** %5, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @db_begin(i32 %21)
  %23 = load %struct.fd*, %struct.fd** %5, align 8
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fd*, %struct.fd** %5, align 8
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inode_read_stat(i32 %25, i32 %28, %struct.ish_stat* %6)
  %30 = getelementptr inbounds %struct.attr, %struct.attr* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @fake_stat_setattr(%struct.ish_stat* %6, i64 %31)
  %33 = load %struct.fd*, %struct.fd** %5, align 8
  %34 = getelementptr inbounds %struct.fd, %struct.fd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fd*, %struct.fd** %5, align 8
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @inode_write_stat(i32 %35, i32 %38, %struct.ish_stat* %6)
  %40 = load %struct.fd*, %struct.fd** %5, align 8
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @db_commit(i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %18, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @db_begin(i32) #1

declare dso_local i32 @inode_read_stat(i32, i32, %struct.ish_stat*) #1

declare dso_local i32 @fake_stat_setattr(%struct.ish_stat*, i64) #1

declare dso_local i32 @inode_write_stat(i32, i32, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
