; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_stat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statbuf = type { i32 }
%struct.stat = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, %struct.statbuf*, i32)* @realfs_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realfs_stat(%struct.mount* %0, i8* %1, %struct.statbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.statbuf* %2, %struct.statbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mount*, %struct.mount** %6, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @fix_path(i8* %14)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  %23 = call i64 @fstatat(i32 %13, i32 %15, %struct.stat* %10, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @errno_map()
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %29 = call i32 @copy_stat(%struct.statbuf* %28, %struct.stat* %10)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @fstatat(i32, i32, %struct.stat*, i32) #1

declare dso_local i32 @fix_path(i8*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @copy_stat(%struct.statbuf*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
