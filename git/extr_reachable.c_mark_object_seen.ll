; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_mark_object_seen.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_mark_object_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to create object '%s'\00", align 1
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i32, i32, %struct.packed_git*, i32)* @mark_object_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_object_seen(%struct.object_id* %0, i32 %1, i32 %2, i32 %3, %struct.packed_git* %4, i32 %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.packed_git*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.packed_git* %4, %struct.packed_git** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @the_repository, align 4
  %15 = load %struct.object_id*, %struct.object_id** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.object* @lookup_object_by_type(i32 %14, %struct.object_id* %15, i32 %16)
  store %struct.object* %17, %struct.object** %13, align 8
  %18 = load %struct.object*, %struct.object** %13, align 8
  %19 = icmp ne %struct.object* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load %struct.object_id*, %struct.object_id** %7, align 8
  %22 = call i32 @oid_to_hex(%struct.object_id* %21)
  %23 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %6
  %25 = load i32, i32* @SEEN, align 4
  %26 = load %struct.object*, %struct.object** %13, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  ret i32 0
}

declare dso_local %struct.object* @lookup_object_by_type(i32, %struct.object_id*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
