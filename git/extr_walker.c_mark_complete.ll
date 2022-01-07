; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_mark_complete.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_mark_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4
@complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @mark_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_complete(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @the_repository, align 4
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call %struct.commit* @lookup_commit_reference_gently(i32 %10, %struct.object_id* %11, i32 1)
  store %struct.commit* %12, %struct.commit** %9, align 8
  %13 = load %struct.commit*, %struct.commit** %9, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32, i32* @COMPLETE, align 4
  %17 = load %struct.commit*, %struct.commit** %9, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.commit*, %struct.commit** %9, align 8
  %23 = call i32 @commit_list_insert(%struct.commit* %22, i32* @complete)
  br label %24

24:                                               ; preds = %15, %4
  ret i32 0
}

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
