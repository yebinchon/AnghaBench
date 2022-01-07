; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_id_range_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_id_range_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_range_iterator = type { i32, i32, i32 (i32, i32)* }

@log_split_min = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_id_range_iterator(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.id_range_iterator*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @log_split_min, align 4
  %11 = sub nsw i32 %9, %10
  %12 = load i32, i32* @log_split_mod, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @log_split_mod, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @log_split_min, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, i32* @log_split_mod, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @log_split_mod, align 4
  %23 = sdiv i32 %21, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @max_uid, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @max_uid, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @build_empty_iterator()
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %34
  %41 = call %struct.id_range_iterator* @zmalloc(i32 16)
  store %struct.id_range_iterator* %41, %struct.id_range_iterator** %8, align 8
  %42 = load %struct.id_range_iterator*, %struct.id_range_iterator** %8, align 8
  %43 = getelementptr inbounds %struct.id_range_iterator, %struct.id_range_iterator* %42, i32 0, i32 2
  store i32 (i32, i32)* @id_range_iterator_jump_to, i32 (i32, i32)** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.id_range_iterator*, %struct.id_range_iterator** %8, align 8
  %47 = getelementptr inbounds %struct.id_range_iterator, %struct.id_range_iterator* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.id_range_iterator*, %struct.id_range_iterator** %8, align 8
  %50 = getelementptr inbounds %struct.id_range_iterator, %struct.id_range_iterator* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.id_range_iterator*, %struct.id_range_iterator** %8, align 8
  %52 = ptrtoint %struct.id_range_iterator* %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @id_range_iterator_jump_to(i32 %52, i32 %53)
  %55 = load %struct.id_range_iterator*, %struct.id_range_iterator** %8, align 8
  %56 = ptrtoint %struct.id_range_iterator* %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %40, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @build_empty_iterator(...) #1

declare dso_local %struct.id_range_iterator* @zmalloc(i32) #1

declare dso_local i32 @id_range_iterator_jump_to(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
