; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_reopen_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_reopen_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"reopen_tempfile called for an inactive object\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"reopen_tempfile called for an open object\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reopen_tempfile(%struct.tempfile* %0) #0 {
  %2 = alloca %struct.tempfile*, align 8
  store %struct.tempfile* %0, %struct.tempfile** %2, align 8
  %3 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %4 = call i32 @is_tempfile_active(%struct.tempfile* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %10 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 0, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %17 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @O_WRONLY, align 4
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @open(i32 %19, i32 %22)
  %24 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %25 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %27 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i32 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @open(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
