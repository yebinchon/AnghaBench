; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_head_to_pending.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_head_to_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_head_to_pending(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = alloca %struct.object*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %5 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.object* @parse_object(i32 %11, %struct.object_id* %3)
  store %struct.object* %12, %struct.object** %4, align 8
  %13 = load %struct.object*, %struct.object** %4, align 8
  %14 = icmp ne %struct.object* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  %17 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %18 = load %struct.object*, %struct.object** %4, align 8
  %19 = call i32 @add_pending_object(%struct.rev_info* %17, %struct.object* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %15, %7
  ret void
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
