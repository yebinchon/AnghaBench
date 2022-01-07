; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_pending_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_pending_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_pending_oid(%struct.rev_info* %0, i8* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.object_id*, %struct.object_id** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.object* @get_reference(%struct.rev_info* %10, i8* %11, %struct.object_id* %12, i32 %13)
  store %struct.object* %14, %struct.object** %9, align 8
  %15 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %16 = load %struct.object*, %struct.object** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @add_pending_object(%struct.rev_info* %15, %struct.object* %16, i8* %17)
  ret void
}

declare dso_local %struct.object* @get_reference(%struct.rev_info*, i8*, %struct.object_id*, i32) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
