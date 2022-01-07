; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_write_note_to_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_write_note_to_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"cannot read note %s for object %s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"blob expected in note %s for object %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.object_id*)* @write_note_to_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_note_to_worktree(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = call i8* @read_object_file(%struct.object_id* %8, i32* %5, i64* %6)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i32 @oid_to_hex(%struct.object_id* %13)
  %15 = load %struct.object_id*, %struct.object_id** %3, align 8
  %16 = call i32 @oid_to_hex(%struct.object_id* %15)
  %17 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OBJ_BLOB, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.object_id*, %struct.object_id** %4, align 8
  %24 = call i32 @oid_to_hex(%struct.object_id* %23)
  %25 = load %struct.object_id*, %struct.object_id** %3, align 8
  %26 = call i32 @oid_to_hex(%struct.object_id* %25)
  %27 = call i32 @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.object_id*, %struct.object_id** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @write_buf_to_worktree(%struct.object_id* %29, i8* %30, i64 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @free(i8* %33)
  ret void
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @write_buf_to_worktree(%struct.object_id*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
