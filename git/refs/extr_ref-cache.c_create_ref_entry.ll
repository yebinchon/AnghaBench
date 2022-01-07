; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_ref_entry.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_ref_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_entry* @create_ref_entry(i8* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_entry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %9 = load i32, i32* @name, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @FLEX_ALLOC_STR(%struct.ref_entry* %8, i32 %9, i8* %10)
  %12 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %13 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = call i32 @oidcpy(i32* %15, %struct.object_id* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  ret %struct.ref_entry* %21
}

declare dso_local i32 @FLEX_ALLOC_STR(%struct.ref_entry*, i32, i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
