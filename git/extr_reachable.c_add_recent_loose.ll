; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_add_recent_loose.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_add_recent_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.stat = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unable to stat %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i8*)* @add_recent_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recent_loose(%struct.object_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @the_repository, align 4
  %11 = load %struct.object_id*, %struct.object_id** %5, align 8
  %12 = call %struct.object* @lookup_object(i32 %10, %struct.object_id* %11)
  store %struct.object* %12, %struct.object** %9, align 8
  %13 = load %struct.object*, %struct.object** %9, align 8
  %14 = icmp ne %struct.object* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.object*, %struct.object** %9, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEEN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %42

23:                                               ; preds = %15, %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @stat(i8* %24, %struct.stat* %8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %42

32:                                               ; preds = %27
  %33 = load %struct.object_id*, %struct.object_id** %5, align 8
  %34 = call i32 @oid_to_hex(%struct.object_id* %33)
  %35 = call i32 @error_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.object_id*, %struct.object_id** %5, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @add_recent_object(%struct.object_id* %37, i32 %39, i8* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32, %31, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_recent_object(%struct.object_id*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
