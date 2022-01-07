; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_standard_output.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_standard_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@glog = common dso_local global i32 0, align 4
@holder = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @standard_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standard_output() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 @find_output_type(i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @glog, align 4
  %8 = load i32, i32* @holder, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @output_csv(i32 %7, i32 %8, i8* %9)
  br label %11

11:                                               ; preds = %6, %0
  %12 = call i64 @find_output_type(i8** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @glog, align 4
  %16 = load i32, i32* @holder, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @output_json(i32 %15, i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = call i64 @find_output_type(i8** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @process_html(i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @free(i8* %33)
  ret void
}

declare dso_local i64 @find_output_type(i8**, i8*, i32) #1

declare dso_local i32 @output_csv(i32, i32, i8*) #1

declare dso_local i32 @output_json(i32, i32, i8*) #1

declare dso_local i32 @process_html(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
