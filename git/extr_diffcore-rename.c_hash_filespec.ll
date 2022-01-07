; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_hash_filespec.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_hash_filespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.diff_filespec*)* @hash_filespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_filespec(%struct.repository* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %5, align 8
  %6 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %7 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %13 = call i64 @diff_populate_filespec(%struct.repository* %11, %struct.diff_filespec* %12, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %30

16:                                               ; preds = %10
  %17 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %18 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %21 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %24 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %23, i32 0, i32 0
  %25 = call i32 @hash_object_file(i32 %19, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  %29 = call i32 @oidhash(i32* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @hash_object_file(i32, i32, i8*, i32*) #1

declare dso_local i32 @oidhash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
