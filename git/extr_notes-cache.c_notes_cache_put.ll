; ModuleID = '/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_put.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_cache = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"blob\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @notes_cache_put(%struct.notes_cache* %0, %struct.object_id* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.notes_cache*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.object_id, align 4
  store %struct.notes_cache* %0, %struct.notes_cache** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i64 @write_object_file(i8* %11, i64 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %10)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %18 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %17, i32 0, i32 0
  %19 = load %struct.object_id*, %struct.object_id** %7, align 8
  %20 = call i32 @add_note(i32* %18, %struct.object_id* %19, %struct.object_id* %10, i32* null)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i64 @write_object_file(i8*, i64, i8*, %struct.object_id*) #1

declare dso_local i32 @add_note(i32*, %struct.object_id*, %struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
