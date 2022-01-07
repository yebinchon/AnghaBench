; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_resolve_gitlink_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_resolve_gitlink_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_store = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_gitlink_ref(i8* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.ref_store*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.ref_store* @get_submodule_ref_store(i8* %10)
  store %struct.ref_store* %11, %struct.ref_store** %8, align 8
  %12 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  %13 = icmp ne %struct.ref_store* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.object_id*, %struct.object_id** %7, align 8
  %19 = call i32 @refs_resolve_ref_unsafe(%struct.ref_store* %16, i8* %17, i32 0, %struct.object_id* %18, i32* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = call i64 @is_null_oid(%struct.object_id* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %15
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.ref_store* @get_submodule_ref_store(i8*) #1

declare dso_local i32 @refs_resolve_ref_unsafe(%struct.ref_store*, i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
