; ModuleID = '/home/carl/AnghaBench/git/extr_notes-utils.c_copy_note_for_rewrite.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-utils.c_copy_note_for_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_rewrite_cfg = type { i32, i64* }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_note_for_rewrite(%struct.notes_rewrite_cfg* %0, %struct.object_id* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.notes_rewrite_cfg*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.notes_rewrite_cfg* %0, %struct.notes_rewrite_cfg** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %9
  %19 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.object_id*, %struct.object_id** %5, align 8
  %27 = load %struct.object_id*, %struct.object_id** %6, align 8
  %28 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @copy_note(i64 %25, %struct.object_id* %26, %struct.object_id* %27, i32 1, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %18
  %37 = phi i1 [ true, %18 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i64 @copy_note(i64, %struct.object_id*, %struct.object_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
