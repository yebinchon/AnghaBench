; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_which_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_which_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.commit*)* @which_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @which_parent(%struct.object_id* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.commit*, %struct.commit** %5, align 8
  %9 = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 0
  %10 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %10, %struct.commit_list** %7, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %13 = icmp ne %struct.commit_list* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.object_id*, %struct.object_id** %4, align 8
  %21 = call i64 @oideq(i32* %19, %struct.object_id* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %30 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %29, i32 0, i32 1
  %31 = load %struct.commit_list*, %struct.commit_list** %30, align 8
  store %struct.commit_list* %31, %struct.commit_list** %7, align 8
  br label %11

32:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @oideq(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
