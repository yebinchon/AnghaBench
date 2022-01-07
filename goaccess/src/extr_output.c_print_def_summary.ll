; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_summary.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"items\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_def_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_def_summary(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fpopen_obj_attr(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @print_def_overall_requests(i32* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @print_def_overall_valid_reqs(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @print_def_overall_invalid_reqs(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @print_def_overall_processed_time(i32* %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @print_def_overall_visitors(i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @print_def_overall_files(i32* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @print_def_overall_excluded(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @print_def_overall_refs(i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @print_def_overall_notfound(i32* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @print_def_overall_static_files(i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @print_def_overall_log_size(i32* %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @print_def_overall_bandwidth(i32* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @fpclose_obj(i32* %54, i32 %55, i32 1)
  ret void
}

declare dso_local i32 @fpopen_obj_attr(i32*, i8*, i32) #1

declare dso_local i32 @print_def_overall_requests(i32*, i32) #1

declare dso_local i32 @print_def_overall_valid_reqs(i32*, i32) #1

declare dso_local i32 @print_def_overall_invalid_reqs(i32*, i32) #1

declare dso_local i32 @print_def_overall_processed_time(i32*, i32) #1

declare dso_local i32 @print_def_overall_visitors(i32*, i32) #1

declare dso_local i32 @print_def_overall_files(i32*, i32) #1

declare dso_local i32 @print_def_overall_excluded(i32*, i32) #1

declare dso_local i32 @print_def_overall_refs(i32*, i32) #1

declare dso_local i32 @print_def_overall_notfound(i32*, i32) #1

declare dso_local i32 @print_def_overall_static_files(i32*, i32) #1

declare dso_local i32 @print_def_overall_log_size(i32*, i32) #1

declare dso_local i32 @print_def_overall_bandwidth(i32*, i32) #1

declare dso_local i32 @fpclose_obj(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
