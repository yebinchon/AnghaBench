; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_strbuf_read_file_or_whine.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_strbuf_read_file_or_whine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"could not read '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*)* @strbuf_read_file_or_whine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strbuf_read_file_or_whine(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @error_errno(i32 %14, i8* %15)
  store i64 %16, i64* %3, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @strbuf_read(%struct.strbuf* %18, i32 %19, i32 0)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @error(i32 %26, i8* %27)
  store i64 %28, i64* %3, align 8
  br label %31

29:                                               ; preds = %17
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %25, %13
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
