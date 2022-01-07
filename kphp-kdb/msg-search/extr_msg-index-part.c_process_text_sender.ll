; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process_text_sender.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process_text_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UserIndex = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@tot_bad_senders = common dso_local global i32 0, align 4
@ui_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@tot_known_senders = common dso_local global i32 0, align 4
@tot_sender_hashes = common dso_local global i32 0, align 4
@ui_start = common dso_local global i32* null, align 8
@P = common dso_local global %struct.TYPE_4__* null, align 8
@Pc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_text_sender(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @UserIndex, i32 0, i32 0), align 8
  %14 = sub nsw i32 %13, 1
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %3
  %17 = load i32, i32* @tot_bad_senders, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @tot_bad_senders, align 4
  br label %104

19:                                               ; preds = %11
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @UserIndex, i32 0, i32 1), align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @UserIndex, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ui_size, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %37, %33, %19
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ui_size, align 4
  %47 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ui_size, align 4
  %58 = icmp sle i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51, %48
  %60 = phi i1 [ false, %51 ], [ false, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @tot_bad_senders, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @tot_bad_senders, align 4
  br label %104

69:                                               ; preds = %59
  %70 = load i32, i32* @tot_known_senders, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @tot_known_senders, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* @tot_sender_hashes, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @tot_sender_hashes, align 4
  br label %77

77:                                               ; preds = %81, %69
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load i32*, i32** @ui_start, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @P, align 8
  %89 = load i64, i64* @Pc, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @P, align 8
  %94 = load i64, i64* @Pc, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @P, align 8
  %99 = load i64, i64* @Pc, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* @Pc, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* @Pc, align 8
  br label %77

104:                                              ; preds = %16, %66, %77
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
