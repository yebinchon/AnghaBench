; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_free.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i64, %struct.nl_msg* }

@.str = private unnamed_addr constant [45 x i8] c"Returned message reference %p, %d remaining\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"msg %p: Freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmsg_free(%struct.nl_msg* %0) #0 {
  %2 = alloca %struct.nl_msg*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %2, align 8
  %3 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %4 = icmp ne %struct.nl_msg* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %8 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %13 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i32, i8*, %struct.nl_msg*, ...) @NL_DBG(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %11, i64 %14)
  %16 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %17 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %6
  %23 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %24 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %29 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %28, i32 0, i32 1
  %30 = load %struct.nl_msg*, %struct.nl_msg** %29, align 8
  %31 = call i32 @free(%struct.nl_msg* %30)
  %32 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %33 = call i32 @free(%struct.nl_msg* %32)
  %34 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  %35 = call i32 (i32, i8*, %struct.nl_msg*, ...) @NL_DBG(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.nl_msg* %34)
  br label %36

36:                                               ; preds = %5, %27, %22
  ret void
}

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
