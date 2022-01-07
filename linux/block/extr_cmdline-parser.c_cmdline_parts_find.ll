; ModuleID = '/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_find.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_parts = type { %struct.cmdline_parts*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmdline_parts* @cmdline_parts_find(%struct.cmdline_parts* %0, i8* %1) #0 {
  %3 = alloca %struct.cmdline_parts*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdline_parts* %0, %struct.cmdline_parts** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load %struct.cmdline_parts*, %struct.cmdline_parts** %3, align 8
  %7 = icmp ne %struct.cmdline_parts* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.cmdline_parts*, %struct.cmdline_parts** %3, align 8
  %11 = getelementptr inbounds %struct.cmdline_parts, %struct.cmdline_parts* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strncmp(i8* %9, i32 %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct.cmdline_parts*, %struct.cmdline_parts** %3, align 8
  %19 = getelementptr inbounds %struct.cmdline_parts, %struct.cmdline_parts* %18, i32 0, i32 0
  %20 = load %struct.cmdline_parts*, %struct.cmdline_parts** %19, align 8
  store %struct.cmdline_parts* %20, %struct.cmdline_parts** %3, align 8
  br label %5

21:                                               ; preds = %15
  %22 = load %struct.cmdline_parts*, %struct.cmdline_parts** %3, align 8
  ret %struct.cmdline_parts* %22
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
