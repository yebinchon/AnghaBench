; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_group_next.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_group_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }
%struct.xdlgroup = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.xdlgroup*)* @group_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_next(%struct.TYPE_3__* %0, %struct.xdlgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.xdlgroup*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.xdlgroup* %1, %struct.xdlgroup** %5, align 8
  %6 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %7 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %16 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %20 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %22 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %25 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %38, %14
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %31 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.xdlgroup*, %struct.xdlgroup** %5, align 8
  %40 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
