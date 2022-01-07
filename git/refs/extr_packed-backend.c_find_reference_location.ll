; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_find_reference_location.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_find_reference_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snapshot*, i8*, i32)* @find_reference_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_reference_location(%struct.snapshot* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snapshot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.snapshot* %0, %struct.snapshot** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %14 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %17 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %52, %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv i64 %29, 2
  %31 = getelementptr inbounds i8, i8* %24, i64 %30
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @find_start_of_record(i8* %32, i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @cmp_record_to_refname(i8* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @find_end_of_record(i8* %41, i8* %42)
  store i8* %43, i8** %8, align 8
  br label %52

44:                                               ; preds = %23
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %9, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %4, align 8
  br label %59

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %40
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8* null, i8** %4, align 8
  br label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %56, %49
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i8* @find_start_of_record(i8*, i8*) #1

declare dso_local i32 @cmp_record_to_refname(i8*, i8*) #1

declare dso_local i8* @find_end_of_record(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
