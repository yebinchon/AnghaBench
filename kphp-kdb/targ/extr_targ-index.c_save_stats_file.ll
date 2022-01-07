; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_save_stats_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_save_stats_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"saving global click/view statistics to %s\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot open statistics file %s for writing: %m\0A\00", align 1
@AdStats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_stats_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @verbosity, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_EXCL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %13, i32 %18, i32 420)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %2, align 4
  br label %40

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AdStats, i32 0, i32 0), align 4
  %29 = call i32 @write(i32 %27, i32 %28, i32 4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 4
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @close(i32 %35)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %26, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
