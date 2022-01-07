; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_sanity_check.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i32, i32, i64, %struct.list }
%struct.list = type { %struct.list* }
%struct.gkc_tuple = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gkc_sanity_check(%struct.gkc_summary* %0) #0 {
  %2 = alloca %struct.gkc_summary*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.gkc_tuple*, align 8
  store %struct.gkc_summary* %0, %struct.gkc_summary** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %8 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 0
  %10 = load %struct.list*, %struct.list** %9, align 8
  store %struct.list* %10, %struct.list** %5, align 8
  br label %11

11:                                               ; preds = %58, %1
  %12 = load %struct.list*, %struct.list** %5, align 8
  %13 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %14 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %13, i32 0, i32 3
  %15 = icmp ne %struct.list* %12, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = load %struct.list*, %struct.list** %5, align 8
  %18 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %17)
  store %struct.gkc_tuple* %18, %struct.gkc_tuple** %6, align 8
  %19 = load %struct.list*, %struct.list** %5, align 8
  %20 = getelementptr inbounds %struct.list, %struct.list* %19, i32 0, i32 0
  %21 = load %struct.list*, %struct.list** %20, align 8
  store %struct.list* %21, %struct.list** %5, align 8
  %22 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %23 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  %29 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %30 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %33 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 1, %34
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %16
  %38 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %39 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %42 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %47 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %50 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = icmp sle i64 %45, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %58

58:                                               ; preds = %37, %16
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %61 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %11

66:                                               ; preds = %11
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %69 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %67, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %77 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  ret void
}

declare dso_local %struct.gkc_tuple* @list_to_tuple(%struct.list*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
