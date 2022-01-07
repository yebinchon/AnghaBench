; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_retrieve_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_retrieve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_object = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walk_object**, %struct.TYPE_4__*, i32*)* @retrieve_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_object(%struct.walk_object** %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.walk_object**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.walk_object*, align 8
  %9 = alloca i32, align 4
  store %struct.walk_object** %0, %struct.walk_object*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.walk_object* @git_oidmap_get(i32 %12, i32* %13)
  store %struct.walk_object* %14, %struct.walk_object** %8, align 8
  %15 = icmp eq %struct.walk_object* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @lookup_walk_object(%struct.walk_object** %8, %struct.TYPE_4__* %17, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %28 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %27, i32 0, i32 0
  %29 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %30 = call i32 @git_oidmap_set(i32 %26, i32* %28, %struct.walk_object* %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %37 = load %struct.walk_object**, %struct.walk_object*** %5, align 8
  store %struct.walk_object* %36, %struct.walk_object** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.walk_object* @git_oidmap_get(i32, i32*) #1

declare dso_local i32 @lookup_walk_object(%struct.walk_object**, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @git_oidmap_set(i32, i32*, %struct.walk_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
