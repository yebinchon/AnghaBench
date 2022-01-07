; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_peel_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_peel_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }

@current_ref_iter = common dso_local global %struct.TYPE_3__* null, align 8
@RESOLVE_REF_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refs_peel_ref(%struct.ref_store* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.object_id, align 4
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_ref_iter, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_ref_iter, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_ref_iter, align 8
  %21 = call i64 @ref_iterator_peel(%struct.TYPE_3__* %20, %struct.object_id* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %37

24:                                               ; preds = %19
  %25 = load %struct.object_id*, %struct.object_id** %7, align 8
  %26 = call i32 @oidcpy(%struct.object_id* %25, %struct.object_id* %10)
  store i32 0, i32* %4, align 4
  br label %37

27:                                               ; preds = %13, %3
  %28 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @RESOLVE_REF_READING, align 4
  %31 = call i64 @refs_read_ref_full(%struct.ref_store* %28, i8* %29, i32 %30, %struct.object_id* %9, i32* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.object_id*, %struct.object_id** %7, align 8
  %36 = call i32 @peel_object(%struct.object_id* %9, %struct.object_id* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %33, %24, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ref_iterator_peel(%struct.TYPE_3__*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @refs_read_ref_full(%struct.ref_store*, i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @peel_object(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
