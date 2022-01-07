; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_object_list_contains.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_object_list_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_list = type { %struct.object_list*, %struct.object* }
%struct.object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @object_list_contains(%struct.object_list* %0, %struct.object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_list*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.object_list* %0, %struct.object_list** %4, align 8
  store %struct.object* %1, %struct.object** %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load %struct.object_list*, %struct.object_list** %4, align 8
  %8 = icmp ne %struct.object_list* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.object_list*, %struct.object_list** %4, align 8
  %11 = getelementptr inbounds %struct.object_list, %struct.object_list* %10, i32 0, i32 1
  %12 = load %struct.object*, %struct.object** %11, align 8
  %13 = load %struct.object*, %struct.object** %5, align 8
  %14 = icmp eq %struct.object* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.object_list*, %struct.object_list** %4, align 8
  %18 = getelementptr inbounds %struct.object_list, %struct.object_list* %17, i32 0, i32 0
  %19 = load %struct.object_list*, %struct.object_list** %18, align 8
  store %struct.object_list* %19, %struct.object_list** %4, align 8
  br label %6

20:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
