; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_object_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object*, %struct.tl_scheme_object* }

@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_scheme_object_free(%struct.tl_scheme_object* %0) #0 {
  %2 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %2, align 8
  %3 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %4 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %36 [
    i32 132, label %6
    i32 128, label %29
    i32 134, label %29
    i32 130, label %34
    i32 129, label %34
    i32 133, label %35
    i32 131, label %35
    i32 135, label %35
  ]

6:                                                ; preds = %1
  %7 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %8 = icmp ne %struct.tl_scheme_object* %7, @obj_empty_list
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %11 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %13, align 8
  call void @tl_scheme_object_free(%struct.tl_scheme_object* %14)
  %15 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %16 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %18, align 8
  %20 = icmp ne %struct.tl_scheme_object* %19, @obj_empty_list
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %23 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %25, align 8
  call void @tl_scheme_object_free(%struct.tl_scheme_object* %26)
  br label %27

27:                                               ; preds = %21, %9
  br label %28

28:                                               ; preds = %27, %6
  br label %36

29:                                               ; preds = %1, %1
  %30 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %31 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @cstr_free(i32* %32)
  br label %36

34:                                               ; preds = %1, %1
  br label %39

35:                                               ; preds = %1, %1, %1
  br label %36

36:                                               ; preds = %1, %35, %29, %28
  %37 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  %38 = call i32 @zfree(%struct.tl_scheme_object* %37, i32 32)
  br label %39

39:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @cstr_free(i32*) #1

declare dso_local i32 @zfree(%struct.tl_scheme_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
