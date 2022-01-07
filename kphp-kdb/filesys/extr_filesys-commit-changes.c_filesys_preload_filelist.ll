; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_filesys_preload_filelist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_filesys_preload_filelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_replica_name = common dso_local global i64 0, align 8
@engine_snapshot_replica_name = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"-fake\00", align 1
@engine_replica = common dso_local global i8* null, align 8
@engine_snapshot_replica = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @filesys_preload_filelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_preload_filelist(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strdup(i8* %7)
  store i64 %8, i64* @engine_replica_name, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 6
  %11 = call i64 @malloc(i32 %10)
  store i64 %11, i64* @engine_snapshot_replica_name, align 8
  %12 = load i64, i64* @engine_snapshot_replica_name, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcpy(i64 %12, i8* %13)
  %15 = load i64, i64* @engine_snapshot_replica_name, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @strcpy(i64 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @engine_replica_name, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i64, i64* @engine_snapshot_replica_name, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi i1 [ false, %1 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* @engine_replica_name, align 8
  %30 = call i8* @open_replica(i64 %29, i32 0)
  store i8* %30, i8** @engine_replica, align 8
  %31 = load i8*, i8** @engine_replica, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %41

34:                                               ; preds = %25
  %35 = load i64, i64* @engine_snapshot_replica_name, align 8
  %36 = call i8* @open_replica(i64 %35, i32 1)
  store i8* %36, i8** @engine_snapshot_replica, align 8
  %37 = load i8*, i8** @engine_snapshot_replica, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %33
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @open_replica(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
