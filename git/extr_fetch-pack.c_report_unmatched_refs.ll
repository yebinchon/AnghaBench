; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_report_unmatched_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_report_unmatched_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"no such remote ref %s\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Server does not allow request for unadvertised object %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @report_unmatched_refs(%struct.ref** %0, i32 %1) #0 {
  %3 = alloca %struct.ref**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ref** %0, %struct.ref*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %49, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = load %struct.ref**, %struct.ref*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ref*, %struct.ref** %12, i64 %14
  %16 = load %struct.ref*, %struct.ref** %15, align 8
  %17 = icmp ne %struct.ref* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %49

19:                                               ; preds = %11
  %20 = load %struct.ref**, %struct.ref*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ref*, %struct.ref** %20, i64 %22
  %24 = load %struct.ref*, %struct.ref** %23, align 8
  %25 = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %48 [
    i32 130, label %27
    i32 129, label %28
    i32 128, label %38
  ]

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %19
  %29 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ref**, %struct.ref*** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ref*, %struct.ref** %30, i64 %32
  %34 = load %struct.ref*, %struct.ref** %33, align 8
  %35 = getelementptr inbounds %struct.ref, %struct.ref* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @error(i32 %29, i32 %36)
  br label %48

38:                                               ; preds = %19
  %39 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ref**, %struct.ref*** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ref*, %struct.ref** %40, i64 %42
  %44 = load %struct.ref*, %struct.ref** %43, align 8
  %45 = getelementptr inbounds %struct.ref, %struct.ref* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @error(i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %19, %38, %28
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %27, %18
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %7

52:                                               ; preds = %7
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
