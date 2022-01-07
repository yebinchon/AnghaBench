; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_one_remote_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_one_remote_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@REMOTE = common dso_local global i32 0, align 4
@objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @one_remote_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_remote_object(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %4 = load i32, i32* @the_repository, align 4
  %5 = load %struct.object_id*, %struct.object_id** %2, align 8
  %6 = call %struct.object* @lookup_object(i32 %4, %struct.object_id* %5)
  store %struct.object* %6, %struct.object** %3, align 8
  %7 = load %struct.object*, %struct.object** %3, align 8
  %8 = icmp ne %struct.object* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @the_repository, align 4
  %11 = load %struct.object_id*, %struct.object_id** %2, align 8
  %12 = call %struct.object* @parse_object(i32 %10, %struct.object_id* %11)
  store %struct.object* %12, %struct.object** %3, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.object*, %struct.object** %3, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %30

17:                                               ; preds = %13
  %18 = load i32, i32* @REMOTE, align 4
  %19 = load %struct.object*, %struct.object** %3, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @objects, align 4
  %24 = load %struct.object*, %struct.object** %3, align 8
  %25 = call i32 @object_list_contains(i32 %23, %struct.object* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load %struct.object*, %struct.object** %3, align 8
  %29 = call i32 @object_list_insert(%struct.object* %28, i32* @objects)
  br label %30

30:                                               ; preds = %16, %27, %17
  ret void
}

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @object_list_contains(i32, %struct.object*) #1

declare dso_local i32 @object_list_insert(%struct.object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
