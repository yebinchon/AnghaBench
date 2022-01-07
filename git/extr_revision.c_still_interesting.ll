; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_still_interesting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_still_interesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.commit = type { i32 }

@SLOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*, i64, i32, %struct.commit**)* @still_interesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @still_interesting(%struct.commit_list* %0, i64 %1, i32 %2, %struct.commit** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit**, align 8
  store %struct.commit_list* %0, %struct.commit_list** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.commit** %3, %struct.commit*** %9, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @SLOP, align 4
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %13
  %24 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %25 = load %struct.commit**, %struct.commit*** %9, align 8
  %26 = call i32 @everybody_uninteresting(%struct.commit_list* %24, %struct.commit** %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @SLOP, align 4
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %28, %21, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @everybody_uninteresting(%struct.commit_list*, %struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
