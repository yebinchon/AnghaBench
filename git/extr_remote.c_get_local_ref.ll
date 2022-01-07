; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_local_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_local_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"heads/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tags/\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"remotes/\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (i8*)* @get_local_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_local_ref(i8* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store %struct.ref* null, %struct.ref** %2, align 8
  br label %38

13:                                               ; preds = %6
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @starts_with(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call %struct.ref* @alloc_ref(i8* %18)
  store %struct.ref* %19, %struct.ref** %2, align 8
  br label %38

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @starts_with(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @starts_with(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @starts_with(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24, %20
  %33 = load i8*, i8** %3, align 8
  %34 = call %struct.ref* @alloc_ref_with_prefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i8* %33)
  store %struct.ref* %34, %struct.ref** %2, align 8
  br label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = call %struct.ref* @alloc_ref_with_prefix(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11, i8* %36)
  store %struct.ref* %37, %struct.ref** %2, align 8
  br label %38

38:                                               ; preds = %35, %32, %17, %12
  %39 = load %struct.ref*, %struct.ref** %2, align 8
  ret %struct.ref* %39
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local %struct.ref* @alloc_ref_with_prefix(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
