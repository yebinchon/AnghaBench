; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_line_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_line_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, %struct.strbuf* (%struct.diff_options*, i32)* }
%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @diff_line_prefix(%struct.diff_options* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  %5 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %6 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %5, i32 0, i32 1
  %7 = load %struct.strbuf* (%struct.diff_options*, i32)*, %struct.strbuf* (%struct.diff_options*, i32)** %6, align 8
  %8 = icmp ne %struct.strbuf* (%struct.diff_options*, i32)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 1
  %13 = load %struct.strbuf* (%struct.diff_options*, i32)*, %struct.strbuf* (%struct.diff_options*, i32)** %12, align 8
  %14 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %15 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %16 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.strbuf* %13(%struct.diff_options* %14, i32 %17)
  store %struct.strbuf* %18, %struct.strbuf** %4, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %10, %9
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
