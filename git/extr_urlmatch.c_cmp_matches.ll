; ModuleID = '/home/carl/AnghaBench/git/extr_urlmatch.c_cmp_matches.c'
source_filename = "/home/carl/AnghaBench/git/extr_urlmatch.c_cmp_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urlmatch_item = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urlmatch_item*, %struct.urlmatch_item*)* @cmp_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_matches(%struct.urlmatch_item* %0, %struct.urlmatch_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urlmatch_item*, align 8
  %5 = alloca %struct.urlmatch_item*, align 8
  store %struct.urlmatch_item* %0, %struct.urlmatch_item** %4, align 8
  store %struct.urlmatch_item* %1, %struct.urlmatch_item** %5, align 8
  %6 = load %struct.urlmatch_item*, %struct.urlmatch_item** %4, align 8
  %7 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %10 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.urlmatch_item*, %struct.urlmatch_item** %4, align 8
  %15 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %18 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 1
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.urlmatch_item*, %struct.urlmatch_item** %4, align 8
  %25 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %28 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.urlmatch_item*, %struct.urlmatch_item** %4, align 8
  %33 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %36 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 -1, i32 1
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %23
  %42 = load %struct.urlmatch_item*, %struct.urlmatch_item** %4, align 8
  %43 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %46 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.urlmatch_item*, %struct.urlmatch_item** %5, align 8
  %51 = getelementptr inbounds %struct.urlmatch_item, %struct.urlmatch_item* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 1
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49, %31, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
