; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_get_ref_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_get_ref_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.ref_dir*, i32)* }
%struct.ref_entry = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ref_dir }

@REF_DIR = common dso_local global i32 0, align 4
@REF_INCOMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"incomplete ref_store without fill_ref_dir function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %0) #0 {
  %2 = alloca %struct.ref_entry*, align 8
  %3 = alloca %struct.ref_dir*, align 8
  store %struct.ref_entry* %0, %struct.ref_entry** %2, align 8
  %4 = load %struct.ref_entry*, %struct.ref_entry** %2, align 8
  %5 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @REF_DIR, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.ref_entry*, %struct.ref_entry** %2, align 8
  %11 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ref_dir* %12, %struct.ref_dir** %3, align 8
  %13 = load %struct.ref_entry*, %struct.ref_entry** %2, align 8
  %14 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REF_INCOMPLETE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %21 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32 (i32, %struct.ref_dir*, i32)*, i32 (i32, %struct.ref_dir*, i32)** %23, align 8
  %25 = icmp ne i32 (i32, %struct.ref_dir*, i32)* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @BUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %30 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32 (i32, %struct.ref_dir*, i32)*, i32 (i32, %struct.ref_dir*, i32)** %32, align 8
  %34 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %35 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %40 = load %struct.ref_entry*, %struct.ref_entry** %2, align 8
  %41 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %33(i32 %38, %struct.ref_dir* %39, i32 %42)
  %44 = load i32, i32* @REF_INCOMPLETE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ref_entry*, %struct.ref_entry** %2, align 8
  %47 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %28, %1
  %51 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  ret %struct.ref_dir* %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
