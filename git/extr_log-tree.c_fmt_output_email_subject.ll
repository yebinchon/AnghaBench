; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_email_subject.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_email_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Subject: [%s%s%0*d/%d] \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Subject: [%s] \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Subject: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_output_email_subject(%struct.strbuf* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.rev_info*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  %5 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %6 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %21 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @digits_in_number(i64 %23)
  %25 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %26 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %29 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (%struct.strbuf*, i8*, i64*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64* %13, i8* %20, i32 %24, i32 %27, i64 %30)
  br label %58

32:                                               ; preds = %2
  %33 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %50 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 (%struct.strbuf*, i8*, i64*, ...) @strbuf_addf(%struct.strbuf* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %52)
  br label %57

54:                                               ; preds = %42, %37, %32
  %55 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %9
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64*, ...) #1

declare dso_local i32 @digits_in_number(i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
