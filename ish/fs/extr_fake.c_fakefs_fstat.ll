; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_fstat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_fakefs_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.fd*, %struct.statbuf*)* }
%struct.fd = type { i32, i32 }
%struct.statbuf = type { i32, i32, i32, i32, i32 }
%struct.ish_stat = type { i32, i32, i32, i32 }

@realfs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.statbuf*)* @fakefs_fstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakefs_fstat(%struct.fd* %0, %struct.statbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.statbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ish_stat, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.statbuf* %1, %struct.statbuf** %5, align 8
  %8 = load i32 (%struct.fd*, %struct.statbuf*)*, i32 (%struct.fd*, %struct.statbuf*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @realfs, i32 0, i32 0), align 8
  %9 = load %struct.fd*, %struct.fd** %4, align 8
  %10 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %11 = call i32 %8(%struct.fd* %9, %struct.statbuf* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.fd*, %struct.fd** %4, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @db_begin(i32 %19)
  %21 = load %struct.fd*, %struct.fd** %4, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fd*, %struct.fd** %4, align 8
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @inode_read_stat(i32 %23, i32 %26, %struct.ish_stat* %7)
  %28 = load %struct.fd*, %struct.fd** %4, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @db_commit(i32 %30)
  %32 = load %struct.fd*, %struct.fd** %4, align 8
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %36 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %7, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %40 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %44 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %48 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ish_stat, %struct.ish_stat* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %52 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %16, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @db_begin(i32) #1

declare dso_local i32 @inode_read_stat(i32, i32, %struct.ish_stat*) #1

declare dso_local i32 @db_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
