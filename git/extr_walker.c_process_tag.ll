; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_process_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_process_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32 }
%struct.tag = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.tag*)* @process_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_tag(%struct.walker* %0, %struct.tag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.tag*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.tag* %1, %struct.tag** %5, align 8
  %6 = load %struct.tag*, %struct.tag** %5, align 8
  %7 = call i64 @parse_tag(%struct.tag* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.walker*, %struct.walker** %4, align 8
  %12 = load %struct.tag*, %struct.tag** %5, align 8
  %13 = getelementptr inbounds %struct.tag, %struct.tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @process(%struct.walker* %11, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i64 @parse_tag(%struct.tag*) #1

declare dso_local i32 @process(%struct.walker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
