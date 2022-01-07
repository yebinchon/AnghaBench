; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_mark_as_seen.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_mark_as_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

@seen_objects = common dso_local global %struct.object** null, align 8
@seen_objects_nr = common dso_local global i64 0, align 8
@seen_objects_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @mark_as_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_as_seen(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %3 = load %struct.object**, %struct.object*** @seen_objects, align 8
  %4 = load i64, i64* @seen_objects_nr, align 8
  %5 = add nsw i64 %4, 1
  %6 = load i32, i32* @seen_objects_alloc, align 4
  %7 = call i32 @ALLOC_GROW(%struct.object** %3, i64 %5, i32 %6)
  %8 = load %struct.object*, %struct.object** %2, align 8
  %9 = load %struct.object**, %struct.object*** @seen_objects, align 8
  %10 = load i64, i64* @seen_objects_nr, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @seen_objects_nr, align 8
  %12 = getelementptr inbounds %struct.object*, %struct.object** %9, i64 %10
  store %struct.object* %8, %struct.object** %12, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.object**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
