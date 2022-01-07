; ModuleID = '/home/carl/AnghaBench/git/extr_ls-refs.c_ref_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_ls-refs.c_ref_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.argv_array*, i8*)* @ref_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ref_match(%struct.argv_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.argv_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %9 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %17 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %22 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @starts_with(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %38

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %14

37:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
