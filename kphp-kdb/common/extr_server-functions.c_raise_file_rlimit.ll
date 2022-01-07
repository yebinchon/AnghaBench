; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_raise_file_rlimit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_raise_file_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to getrlimit number of files\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"failed to set rlimit for open files. Try running as root or requesting smaller maxconns value.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raise_file_rlimit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @RLIMIT_NOFILE, align 4
  %6 = call i64 @getrlimit(i32 %5, %struct.rlimit* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @kprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 3
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @RLIMIT_NOFILE, align 4
  %31 = call i64 @setrlimit(i32 %30, %struct.rlimit* %4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @kprintf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
