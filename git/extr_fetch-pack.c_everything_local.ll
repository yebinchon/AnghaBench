; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_everything_local.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_everything_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_pack_args = type { i32 }
%struct.ref = type { i32, %struct.object_id, %struct.ref* }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"want %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"already have %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_pack_args*, %struct.ref**)* @everything_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @everything_local(%struct.fetch_pack_args* %0, %struct.ref** %1) #0 {
  %3 = alloca %struct.fetch_pack_args*, align 8
  %4 = alloca %struct.ref**, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object*, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %3, align 8
  store %struct.ref** %1, %struct.ref*** %4, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.ref**, %struct.ref*** %4, align 8
  %10 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %10, %struct.ref** %5, align 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  %13 = icmp ne %struct.ref* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 1
  store %struct.object_id* %16, %struct.object_id** %7, align 8
  %17 = load i32, i32* @the_repository, align 4
  %18 = load %struct.object_id*, %struct.object_id** %7, align 8
  %19 = call %struct.object* @lookup_object(i32 %17, %struct.object_id* %18)
  store %struct.object* %19, %struct.object** %8, align 8
  %20 = load %struct.object*, %struct.object** %8, align 8
  %21 = icmp ne %struct.object* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.object*, %struct.object** %8, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @COMPLETE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22, %14
  store i32 0, i32* %6, align 4
  %30 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %3, align 8
  %31 = load %struct.object_id*, %struct.object_id** %7, align 8
  %32 = call i32 @oid_to_hex(%struct.object_id* %31)
  %33 = load %struct.ref*, %struct.ref** %5, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @print_verbose(%struct.fetch_pack_args* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %3, align 8
  %39 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.object_id*, %struct.object_id** %7, align 8
  %41 = call i32 @oid_to_hex(%struct.object_id* %40)
  %42 = load %struct.ref*, %struct.ref** %5, align 8
  %43 = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @print_verbose(%struct.fetch_pack_args* %38, i8* %39, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load %struct.ref*, %struct.ref** %5, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 2
  %49 = load %struct.ref*, %struct.ref** %48, align 8
  store %struct.ref* %49, %struct.ref** %5, align 8
  br label %11

50:                                               ; preds = %11
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local i32 @print_verbose(%struct.fetch_pack_args*, i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
