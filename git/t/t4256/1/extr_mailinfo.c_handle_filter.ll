; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_handle_filter.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_handle_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @handle_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_filter(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %6 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 0, label %8
    i32 1, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = call i32 @handle_commit_msg(%struct.mailinfo* %9, %struct.strbuf* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %23

14:                                               ; preds = %8
  %15 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %16 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %2, %14
  %20 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = call i32 @handle_patch(%struct.mailinfo* %20, %struct.strbuf* %21)
  br label %23

23:                                               ; preds = %2, %19, %13
  ret void
}

declare dso_local i32 @handle_commit_msg(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i32 @handle_patch(%struct.mailinfo*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
