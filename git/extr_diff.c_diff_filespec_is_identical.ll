; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_is_identical.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_is_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.diff_filespec*, %struct.diff_filespec*)* @diff_filespec_is_identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_filespec_is_identical(%struct.repository* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  %8 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %9 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISGITLINK(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load %struct.repository*, %struct.repository** %5, align 8
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %17 = call i64 @diff_populate_filespec(%struct.repository* %15, %struct.diff_filespec* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.repository*, %struct.repository** %5, align 8
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %23 = call i64 @diff_populate_filespec(%struct.repository* %21, %struct.diff_filespec* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %34 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcmp(i32 %29, i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %25, %19, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
