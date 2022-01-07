; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_extend_slice.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_extend_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"[%c] extend slice start=%lu end=%lu jiffies=%lu\00", align 1
@READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, i32, i64)* @throtl_extend_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_extend_slice(%struct.throtl_grp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %9 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @roundup(i64 %7, i32 %12)
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @READ, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 82, i32 87
  %27 = trunc i32 %26 to i8
  %28 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %29 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %36 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @jiffies, align 4
  %43 = call i32 @throtl_log(i32* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 signext %27, i32 %34, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @throtl_log(i32*, i8*, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
