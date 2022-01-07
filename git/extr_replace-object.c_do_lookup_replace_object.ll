; ModuleID = '/home/carl/AnghaBench/git/extr_replace-object.c_do_lookup_replace_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_replace-object.c_do_lookup_replace_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.replace_object = type { %struct.object_id }

@MAXREPLACEDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"replace depth too high for object %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object_id* @do_lookup_replace_object(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.replace_object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %9 = load i32, i32* @MAXREPLACEDEPTH, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.object_id*, %struct.object_id** %5, align 8
  store %struct.object_id* %10, %struct.object_id** %7, align 8
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = call i32 @prepare_replace_object(%struct.repository* %11)
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.object_id*, %struct.object_id** %7, align 8
  %24 = call %struct.replace_object* @oidmap_get(i32 %22, %struct.object_id* %23)
  store %struct.replace_object* %24, %struct.replace_object** %8, align 8
  %25 = load %struct.replace_object*, %struct.replace_object** %8, align 8
  %26 = icmp ne %struct.replace_object* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load %struct.object_id*, %struct.object_id** %7, align 8
  store %struct.object_id* %28, %struct.object_id** %3, align 8
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.replace_object*, %struct.replace_object** %8, align 8
  %31 = getelementptr inbounds %struct.replace_object, %struct.replace_object* %30, i32 0, i32 0
  store %struct.object_id* %31, %struct.object_id** %7, align 8
  br label %13

32:                                               ; preds = %13
  %33 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.object_id*, %struct.object_id** %5, align 8
  %35 = call i32 @oid_to_hex(%struct.object_id* %34)
  %36 = call i32 @die(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.object_id*, %struct.object_id** %3, align 8
  ret %struct.object_id* %38
}

declare dso_local i32 @prepare_replace_object(%struct.repository*) #1

declare dso_local %struct.replace_object* @oidmap_get(i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
