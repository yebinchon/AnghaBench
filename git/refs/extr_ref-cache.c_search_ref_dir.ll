; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_search_ref_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_search_ref_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { %struct.ref_entry**, i32 }
%struct.ref_entry = type { i32 }
%struct.string_slice = type { i64, i8* }

@ref_entry_cmp_sslice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_ref_dir(%struct.ref_dir* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_dir*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ref_entry**, align 8
  %9 = alloca %struct.string_slice, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %14 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  store i32 -1, i32* %4, align 4
  br label %46

18:                                               ; preds = %12
  %19 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %20 = call i32 @sort_ref_dir(%struct.ref_dir* %19)
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.string_slice, %struct.string_slice* %9, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.string_slice, %struct.string_slice* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %26 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %25, i32 0, i32 0
  %27 = load %struct.ref_entry**, %struct.ref_entry*** %26, align 8
  %28 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %29 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ref_entry_cmp_sslice, align 4
  %32 = call %struct.ref_entry** @bsearch(%struct.string_slice* %9, %struct.ref_entry** %27, i32 %30, i32 8, i32 %31)
  store %struct.ref_entry** %32, %struct.ref_entry*** %8, align 8
  %33 = load %struct.ref_entry**, %struct.ref_entry*** %8, align 8
  %34 = icmp eq %struct.ref_entry** %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %46

36:                                               ; preds = %18
  %37 = load %struct.ref_entry**, %struct.ref_entry*** %8, align 8
  %38 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %39 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %38, i32 0, i32 0
  %40 = load %struct.ref_entry**, %struct.ref_entry*** %39, align 8
  %41 = ptrtoint %struct.ref_entry** %37 to i64
  %42 = ptrtoint %struct.ref_entry** %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %35, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sort_ref_dir(%struct.ref_dir*) #1

declare dso_local %struct.ref_entry** @bsearch(%struct.string_slice*, %struct.ref_entry**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
