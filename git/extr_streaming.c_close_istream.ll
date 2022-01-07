; ModuleID = '/home/carl/AnghaBench/git/extr_streaming.c_close_istream.c'
source_filename = "/home/carl/AnghaBench/git/extr_streaming.c_close_istream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_istream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_istream(%struct.git_istream* %0) #0 {
  %2 = alloca %struct.git_istream*, align 8
  %3 = alloca i32, align 4
  store %struct.git_istream* %0, %struct.git_istream** %2, align 8
  %4 = load %struct.git_istream*, %struct.git_istream** %2, align 8
  %5 = getelementptr inbounds %struct.git_istream, %struct.git_istream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.git_istream*)**
  %9 = load i32 (%struct.git_istream*)*, i32 (%struct.git_istream*)** %8, align 8
  %10 = load %struct.git_istream*, %struct.git_istream** %2, align 8
  %11 = call i32 %9(%struct.git_istream* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.git_istream*, %struct.git_istream** %2, align 8
  %13 = call i32 @free(%struct.git_istream* %12)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @free(%struct.git_istream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
