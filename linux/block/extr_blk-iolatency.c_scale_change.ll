; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_scale_change.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_scale_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iolatency_grp*, i32)* @scale_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_change(%struct.iolatency_grp* %0, i32 %1) #0 {
  %3 = alloca %struct.iolatency_grp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %9 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @scale_amount(i64 %16, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %20 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %36 = call i32 @lat_to_blkg(%struct.iolatency_grp* %35)
  %37 = call i64 @blkcg_unuse_delay(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %68

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @min(i64 %48, i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %53 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %56 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @wake_up_all(i32* %57)
  br label %59

59:                                               ; preds = %44, %40
  br label %68

60:                                               ; preds = %28
  %61 = load i64, i64* %7, align 8
  %62 = lshr i64 %61, 1
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @max(i64 %63, i64 1)
  %65 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %66 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %39, %60, %59
  ret void
}

declare dso_local i64 @scale_amount(i64, i32) #1

declare dso_local i64 @blkcg_unuse_delay(i32) #1

declare dso_local i32 @lat_to_blkg(%struct.iolatency_grp*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
