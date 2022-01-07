; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_add_recent_packed.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_add_recent_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.packed_git*, i32, i8*)* @add_recent_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recent_packed(%struct.object_id* %0, %struct.packed_git* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.packed_git* %1, %struct.packed_git** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %6, align 8
  %13 = call %struct.object* @lookup_object(i32 %11, %struct.object_id* %12)
  store %struct.object* %13, %struct.object** %10, align 8
  %14 = load %struct.object*, %struct.object** %10, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.object*, %struct.object** %10, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SEEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %31

24:                                               ; preds = %16, %4
  %25 = load %struct.object_id*, %struct.object_id** %6, align 8
  %26 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @add_recent_object(%struct.object_id* %25, i32 %28, i8* %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local i32 @add_recent_object(%struct.object_id*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
