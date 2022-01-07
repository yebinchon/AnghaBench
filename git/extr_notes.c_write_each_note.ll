; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_write_each_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_write_each_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.write_each_note_data = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i64 0, align 8
@FANOUT_PATH_SEPARATORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i8*)* @write_each_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_each_note(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.write_each_note_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.write_each_note_data*
  store %struct.write_each_note_data* %13, %struct.write_each_note_data** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  store i32 33188, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %28, align 1
  store i32 16384, i32* %11, align 4
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @GIT_MAX_HEXSZ, align 8
  %32 = load i64, i64* @FANOUT_PATH_SEPARATORS, align 8
  %33 = add i64 %31, %32
  %34 = icmp ule i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.write_each_note_data*, %struct.write_each_note_data** %9, align 8
  %39 = call i64 @write_each_non_note_until(i8* %37, %struct.write_each_note_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %29
  %42 = load %struct.write_each_note_data*, %struct.write_each_note_data** %9, align 8
  %43 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.object_id*, %struct.object_id** %6, align 8
  %48 = call i64 @write_each_note_helper(i32 %44, i8* %45, i32 %46, %struct.object_id* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %29
  %51 = phi i1 [ true, %29 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write_each_non_note_until(i8*, %struct.write_each_note_data*) #1

declare dso_local i64 @write_each_note_helper(i32, i8*, i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
