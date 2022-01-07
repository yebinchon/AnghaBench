; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_write_each_non_note_until.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_write_each_non_note_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_each_note_data = type { %struct.non_note*, i32 }
%struct.non_note = type { %struct.non_note*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.write_each_note_data*)* @write_each_non_note_until to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_each_non_note_until(i8* %0, %struct.write_each_note_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.write_each_note_data*, align 8
  %6 = alloca %struct.non_note*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.write_each_note_data* %1, %struct.write_each_note_data** %5, align 8
  %9 = load %struct.write_each_note_data*, %struct.write_each_note_data** %5, align 8
  %10 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %9, i32 0, i32 0
  %11 = load %struct.non_note*, %struct.non_note** %10, align 8
  store %struct.non_note* %11, %struct.non_note** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load %struct.non_note*, %struct.non_note** %6, align 8
  %14 = icmp ne %struct.non_note* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.non_note*, %struct.non_note** %6, align 8
  %20 = getelementptr inbounds %struct.non_note, %struct.non_note* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i1 [ true, %15 ], [ %24, %18 ]
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i1 [ false, %12 ], [ %26, %25 ]
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %54

36:                                               ; preds = %32, %29
  %37 = load %struct.write_each_note_data*, %struct.write_each_note_data** %5, align 8
  %38 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.non_note*, %struct.non_note** %6, align 8
  %41 = getelementptr inbounds %struct.non_note, %struct.non_note* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.non_note*, %struct.non_note** %6, align 8
  %44 = getelementptr inbounds %struct.non_note, %struct.non_note* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.non_note*, %struct.non_note** %6, align 8
  %47 = getelementptr inbounds %struct.non_note, %struct.non_note* %46, i32 0, i32 1
  %48 = call i32 @write_each_note_helper(i32 %39, i32 %42, i32 %45, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.non_note*, %struct.non_note** %6, align 8
  %56 = getelementptr inbounds %struct.non_note, %struct.non_note* %55, i32 0, i32 0
  %57 = load %struct.non_note*, %struct.non_note** %56, align 8
  store %struct.non_note* %57, %struct.non_note** %6, align 8
  br label %12

58:                                               ; preds = %27
  %59 = load %struct.non_note*, %struct.non_note** %6, align 8
  %60 = load %struct.write_each_note_data*, %struct.write_each_note_data** %5, align 8
  %61 = getelementptr inbounds %struct.write_each_note_data, %struct.write_each_note_data* %60, i32 0, i32 0
  store %struct.non_note* %59, %struct.non_note** %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @write_each_note_helper(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
