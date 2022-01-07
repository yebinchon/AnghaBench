; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_datestamp.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_datestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datestamp(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %5 = call i32 @time(i32* %3)
  %6 = call i32 @localtime(i32* %3)
  %7 = call i32 @tm_to_time_t(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 60
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %15 = call i32 @date_string(i32 %12, i32 %13, %struct.strbuf* %14)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @tm_to_time_t(i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @date_string(i32, i32, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
