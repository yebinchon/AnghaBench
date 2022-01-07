; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_remove_entry_from_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_remove_entry_from_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32, i32, %struct.ref_entry** }
%struct.ref_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_entry_from_dir(%struct.ref_dir* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_dir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i8* @xmemdupz(i8* %25, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %29, i8* %30, i32 0)
  store %struct.ref_dir* %31, %struct.ref_dir** %4, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @free(i8* %32)
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %35, i8* %36, i32 0)
  store %struct.ref_dir* %37, %struct.ref_dir** %4, align 8
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %40 = icmp ne %struct.ref_dir* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %98

42:                                               ; preds = %38
  %43 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @search_ref_dir(%struct.ref_dir* %43, i8* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %98

50:                                               ; preds = %42
  %51 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %52 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %51, i32 0, i32 2
  %53 = load %struct.ref_entry**, %struct.ref_entry*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %53, i64 %55
  %57 = load %struct.ref_entry*, %struct.ref_entry** %56, align 8
  store %struct.ref_entry* %57, %struct.ref_entry** %8, align 8
  %58 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %59 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %58, i32 0, i32 2
  %60 = load %struct.ref_entry**, %struct.ref_entry*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %60, i64 %62
  %64 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %65 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %64, i32 0, i32 2
  %66 = load %struct.ref_entry**, %struct.ref_entry*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %66, i64 %69
  %71 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %72 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @MOVE_ARRAY(%struct.ref_entry** %63, %struct.ref_entry** %70, i32 %76)
  %78 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %79 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %83 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %50
  %88 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %89 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %50
  %93 = load %struct.ref_entry*, %struct.ref_entry** %8, align 8
  %94 = call i32 @free_ref_entry(%struct.ref_entry* %93)
  %95 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %96 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %49, %41
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local %struct.ref_dir* @find_containing_dir(%struct.ref_dir*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @search_ref_dir(%struct.ref_dir*, i8*, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.ref_entry**, %struct.ref_entry**, i32) #1

declare dso_local i32 @free_ref_entry(%struct.ref_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
