; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_output_eol.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_output_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crlf_attrs = type { i32, i32 }

@GIT_EOL_UNSET = common dso_local global i32 0, align 4
@GIT_EOL_CRLF = common dso_local global i32 0, align 4
@GIT_EOL_LF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crlf_attrs*)* @output_eol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_eol(%struct.crlf_attrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crlf_attrs*, align 8
  store %struct.crlf_attrs* %0, %struct.crlf_attrs** %3, align 8
  %4 = load %struct.crlf_attrs*, %struct.crlf_attrs** %3, align 8
  %5 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %27 [
    i32 132, label %7
    i32 130, label %9
    i32 129, label %11
    i32 128, label %13
    i32 134, label %13
    i32 133, label %15
    i32 131, label %17
    i32 135, label %17
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @GIT_EOL_UNSET, align 4
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @GIT_EOL_CRLF, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @GIT_EOL_LF, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @GIT_EOL_CRLF, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @GIT_EOL_LF, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1, %1
  %18 = load %struct.crlf_attrs*, %struct.crlf_attrs** %3, align 8
  %19 = call i32 @text_eol_is_crlf(%struct.crlf_attrs* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @GIT_EOL_CRLF, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @GIT_EOL_LF, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.crlf_attrs*, %struct.crlf_attrs** %3, align 8
  %29 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %25, %15, %13, %11, %9, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @text_eol_is_crlf(%struct.crlf_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
