; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_would_convert_to_git_filter_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_would_convert_to_git_filter_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.conv_attrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CAP_CLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @would_convert_to_git_filter_fd(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.conv_attrs, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.index_state*, %struct.index_state** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @convert_attrs(%struct.index_state* %7, %struct.conv_attrs* %6, i8* %8)
  %10 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %6, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %6, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %6, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @CAP_CLEAN, align 4
  %26 = call i32 @apply_filter(i8* %22, i32* null, i32 0, i32 -1, i32* null, %struct.TYPE_2__* %24, i32 %25, i32* null)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %20, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @convert_attrs(%struct.index_state*, %struct.conv_attrs*, i8*) #1

declare dso_local i32 @apply_filter(i8*, i32*, i32, i32, i32*, %struct.TYPE_2__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
