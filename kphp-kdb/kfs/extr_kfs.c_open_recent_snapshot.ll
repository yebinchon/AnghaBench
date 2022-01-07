; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_open_recent_snapshot.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_open_recent_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file = type { i32 }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"opening last snapshot file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfs_file* @open_recent_snapshot(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.kfs_file*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.kfs_file*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.kfs_file* null, %struct.kfs_file** %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9
  store %struct.kfs_file* null, %struct.kfs_file** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %30, %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.kfs_file* @open_snapshot(%struct.TYPE_4__* %24, i32 %25)
  store %struct.kfs_file* %26, %struct.kfs_file** %4, align 8
  %27 = icmp eq %struct.kfs_file* %26, null
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %20

33:                                               ; preds = %28
  %34 = load %struct.kfs_file*, %struct.kfs_file** %4, align 8
  store %struct.kfs_file* %34, %struct.kfs_file** %2, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load %struct.kfs_file*, %struct.kfs_file** %2, align 8
  ret %struct.kfs_file* %36
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.kfs_file* @open_snapshot(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
