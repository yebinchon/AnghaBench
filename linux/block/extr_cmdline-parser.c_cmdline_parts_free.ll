; ModuleID = '/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_parts = type { %struct.cmdline_parts* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmdline_parts_free(%struct.cmdline_parts** %0) #0 {
  %2 = alloca %struct.cmdline_parts**, align 8
  %3 = alloca %struct.cmdline_parts*, align 8
  store %struct.cmdline_parts** %0, %struct.cmdline_parts*** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %2, align 8
  %6 = load %struct.cmdline_parts*, %struct.cmdline_parts** %5, align 8
  %7 = icmp ne %struct.cmdline_parts* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %2, align 8
  %10 = load %struct.cmdline_parts*, %struct.cmdline_parts** %9, align 8
  %11 = getelementptr inbounds %struct.cmdline_parts, %struct.cmdline_parts* %10, i32 0, i32 0
  %12 = load %struct.cmdline_parts*, %struct.cmdline_parts** %11, align 8
  store %struct.cmdline_parts* %12, %struct.cmdline_parts** %3, align 8
  %13 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %2, align 8
  %14 = load %struct.cmdline_parts*, %struct.cmdline_parts** %13, align 8
  %15 = call i32 @free_subpart(%struct.cmdline_parts* %14)
  %16 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %2, align 8
  %17 = load %struct.cmdline_parts*, %struct.cmdline_parts** %16, align 8
  %18 = call i32 @kfree(%struct.cmdline_parts* %17)
  %19 = load %struct.cmdline_parts*, %struct.cmdline_parts** %3, align 8
  %20 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %2, align 8
  store %struct.cmdline_parts* %19, %struct.cmdline_parts** %20, align 8
  br label %4

21:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free_subpart(%struct.cmdline_parts*) #1

declare dso_local i32 @kfree(%struct.cmdline_parts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
