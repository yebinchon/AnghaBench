; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_fill_oid_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_fill_oid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32, i32, i64, i32 }
%struct.index_state = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"stat '%s'\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot hash %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filespec*, %struct.index_state*)* @diff_fill_oid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_fill_oid_info(%struct.diff_filespec* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.diff_filespec*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.stat, align 4
  store %struct.diff_filespec* %0, %struct.diff_filespec** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %6 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %7 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %11 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %9
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %16 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %21 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %20, i32 0, i32 0
  %22 = call i32 @oidclr(i32* %21)
  br label %54

23:                                               ; preds = %14
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %25 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @lstat(i32 %26, %struct.stat* %5)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @die_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.index_state*, %struct.index_state** %4, align 8
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %37 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %36, i32 0, i32 0
  %38 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %39 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @index_path(%struct.index_state* %35, i32* %37, i32 %40, %struct.stat* %5, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %45 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %9
  br label %54

50:                                               ; preds = %2
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 0
  %53 = call i32 @oidclr(i32* %52)
  br label %54

54:                                               ; preds = %19, %50, %49
  ret void
}

declare dso_local i64 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i64 @index_path(%struct.index_state*, i32*, i32, %struct.stat*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
